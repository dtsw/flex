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
	
	[Event(name="groupDataLoaded", type="flash.events.Event")]
	[Event(name="groupDataLoadError", type="flash.events.Event")] 
	
	public class DataService extends HTTPService
	{	
		[Bindable]
		public var groupCollection:ArrayCollection;
		
		[Bindable]
		public var resourceCollection:ArrayCollection;

		//[Bindable] public var failover:Boolean = false;
		
		private var failCount:int = 0;
		
		public function DataService(rootURL:String=null, destination:String=null)
		{
			var env:String = "";
			
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.showBusyCursor = true;
			//this.requestTimeout = 30;
			
			//this.url = "http://hyperic:8080/BubbleBean/getGroups?env=" + environment ;

			this.addEventListener ( ResultEvent.RESULT, handleDataResult );
			this.addEventListener ( FaultEvent.FAULT, handleFaultEvent );
		}
		
		private function handleFaultEvent( event:FaultEvent ):void
		{
			// load static xml if no server present
			//failover = true;
			// use a local XML
			var myXML:XML = <groups backend_version="May-2012">
		<group id="42023" instance_id="18526" name="XX. NO DATA, check Tomcat on Hyperic Server" group_type="11" resource_group_id="1">
		<resource name="h0071 some resource name\NEW" id="42018" type="15"></resource>
				</group>
				</groups>;
			handleLocalData( myXML );
		}

		private function handleLocalData( data:XML ):void
		{
			groupCollection = new ArrayCollection();
			resourceCollection = new ArrayCollection();
			
			var resultData:XMLList = data..group;
			
			for each ( var g:XML in resultData )
			{
				//trace("creating group " +g.@name);
				var group:MixedGroup = new MixedGroup(g.@id, g.@instance_id, g.@name);
				groupCollection.addItem(group);
				
				var resourceList:XMLList = g..resource;
				for each ( var r:XML in resourceList )
				{
					//trace( "adding resource " +r.@name + " to " +g.@name );
					var resource:Resource = new Resource( r.@id, 0, r.@name, r.@type, 0, "");
					group.elements.addItem(resource);
					resourceCollection.addItem(resource);
				}
			}
			
			// once data is loaded, dispatch groupDataLoaded event
			var e:Event = new Event("groupDataLoaded");
			this.dispatchEvent(e);
		}
		
		private function handleDataResult( event:ResultEvent ):void
		{
			groupCollection = new ArrayCollection();
			resourceCollection = new ArrayCollection();

			var resultData:XMLList = event.result..group;

			for each ( var g:XML in resultData )
			{
				// trace("creating group " +g.@name);
				var group:MixedGroup = new MixedGroup(g.@id, g.@instance_id, g.@name);
				groupCollection.addItem(group);

				var resourceList:XMLList = g..resource;
				for each ( var r:XML in resourceList )
				{
					// trace( "adding resource " +r.@name + " to " +g.@name );
					var resource:Resource = new Resource( r.@id, 0, r.@name, r.@type, 0, "");
					group.elements.addItem(resource);
					resourceCollection.addItem(resource);
				}
			}
		
			// once data is loaded, dispatch groupDataLoaded event
			var e:Event = new Event("groupDataLoaded");
			this.dispatchEvent(e);
		}
	}
}