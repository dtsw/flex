package model
{	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	
	[Bindable]
	public class Resource
	{
		public var id:uint;
		public var instance_id:uint;
		public var name:String;
		public var group_type:uint;
		public var resource_group_id:uint;
		public var description:String;
		public var alert:Boolean;
		public var acknowledged:Boolean;
		
		public function Resource( _id:uint, _instance_id:uint, _name:String, _group_type:uint, _resource_group_id:uint, _description:String )
		{
			this.id = _id;
			this.instance_id = _instance_id;
			this.name = _name;
			this.group_type = _group_type;
			this.resource_group_id = _resource_group_id;
			this.description = _description;
		}
		
		public function toString():String
		{
			return "[Resource] " + id + ", " + name;
		}
	}
}