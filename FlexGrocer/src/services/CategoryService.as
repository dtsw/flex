package services
{
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	public class CategoryService extends HTTPService
	{
		[Bindable]
		public var categories:XMLListCollection;
		
		public function CategoryService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.url = "http://www.oliver-frick.ch/FlexGrocerWeb/category.xml";
			addEventListener(ResultEvent.RESULT, handleCategoryResult);
		}
		
		protected function handleCategoryResult(event:ResultEvent):void
		{
			categories = new XMLListCollection( event.result.category );
		}
	}
}