package model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class MixedGroup
	{
		public var id:uint;
		public var instance_id:uint;
		public var name:String;
		public var groups:ArrayCollection;
		public var elements:ArrayCollection;
		private var _alert:Boolean;
		
		public function MixedGroup( _id:uint, _instance_id:uint, _name:String )
		{
			this.id = _id;
			this.instance_id = _instance_id;
			this.name = _name;
			this.elements = new ArrayCollection();
/*			this.elements.filterFunction = resourceList_filterFunc;
			this.elements.refresh();
*/
		}
		
/*		private function resourceList_filterFunc(item:Resource):Boolean {				
			return ( item.alert );
		}
*/		
		public function get state():String
		{
			return ( alert == false ? "healthy" : "sick");
		}
		
		public function set state(value:String):void
		{
			// nothing
		}
		
		public function get alert():Boolean
		{			
			// check if we have subgroups
			if (elements.length > 0 )
			{
				_alert = false;
				for each ( var element:Resource in elements )
				{
					if ( element.alert == true && element.acknowledged == false ) 
					{
						_alert = true;
					}
				}
			}
			// no, we are a single resource, return our own alert status
			return _alert;
		}		
		
		public function set alert(value:Boolean):void
		{
			_alert = value;
		}
		
		public function toString():String
		{
			return "[MixedGroup] " + name + " " + state;
		}
	}
}