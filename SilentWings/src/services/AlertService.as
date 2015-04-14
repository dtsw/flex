package services
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import model.MixedGroup;
	import model.Resource;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
/*	[Event(name="alertDataLoaded", type="flash.events.Event")]
*/	
	[Event(name="alertDataProcessed", type="flash.events.Event")]
	[Event(name="alertDataLoadError", type="flash.events.Event")]
	
	public class AlertService extends HTTPService
	{	
		private var alerts:XML;
		
		//[Bindable] public var failover:Boolean = false;

		// to display Count of Alerts
		[Bindable] public var alertCounter:uint = 0;

		// a random number to get always the recent data
		[Bindable] public var random:Number = Math.floor( Math.random() * 99999);
		
		[Bindable] public var alertString:String = "";

		public var groupCollection:ArrayCollection;
		
		private var failCount:int = 0;
		public var infoMessage:String;
		
		public function AlertService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			addEventListener ( ResultEvent.RESULT, handleAlertDataResult );
			addEventListener ( FaultEvent.FAULT, handleFaultEvent );
			this.resultFormat = "e4x";
			this.showBusyCursor = false;
			this.requestTimeout = 5;
			//this.url = "http://hyperic:8080/BubbleBean/getAlerts?" + random;
			this.url = "http://go.swi.srse.net/shared/util/serverservices/bubblesNG/alerts.cfm?" + random;
		}

		private function handleFaultEvent(event:FaultEvent):void
		{
			failCount++;
			// failover = true;
			// use a local XML
			// try again only if timed out, otherwise display error
			if ( failCount > 3 || event.statusCode == 500 )
			{
				var myXML:XML = <alerts time="1344615201440" message=""></alerts>;
				failCount = 0;
				//handleLocalData( myXML );
				var e:Event = new Event("alertDataLoadError");
				this.dispatchEvent(e);
			}
		}
		
		private function handleLocalData( data:XML ):void
		{
			alerts = data;
			processAlerts();
			
			var e:Event = new Event("alertDataLoadError");
			this.dispatchEvent(e);
			
		}
		
		private function handleAlertDataResult( event:ResultEvent ):void
		{
			trace( "[AlertService.as] Event Status Code:" + event.statusCode );
			failCount = 0;
			alerts = event.result as XML;			
			processAlerts();
		}
		
		protected function processAlerts():void
		{
			// clear error text and set alpha to 1, reset alert count
			infoMessage = alerts.@message;
			alertCounter = 0;  // reset alert counter
			
			for each(var g:MixedGroup in groupCollection)
			{
				for each (var r:Resource in g.elements)
				{
					// reset alert state if is set
					if ( r.alert == true ) {
						r.alert = false;
					}
					
					for each (var a:XML in alerts..alert) {
						
						// for each resource iterate over alerts							
						if ( r.id == a.@resource_id ) {
							r.alert = true;
							// acknowledged contains the user name
							r.acknowledged = ( a.@acknowledged != '' );
							alertCounter++;
						}
					} // end for each alert
				} // end for each resource
			} // end for each mixed group (aka Bubble)
			
			if ( alertCounter == 1 ) alertString = "1 Alert" else alertString = alertCounter + " Alerts";
			
			// refresh the collection to display alerts
			groupCollection.refresh();

			var e:Event = new Event("alertDataProcessed");
			this.dispatchEvent(e);
			
		}
		
	}
}