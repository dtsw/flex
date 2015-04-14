package services
{
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	import valueObjects.Product;
	
	public class ProductService extends HTTPService
	{
		[Bindable]
		public var products:ArrayCollection;
		
		public function ProductService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.url = "http://www.oliver-frick.ch/FlexGrocerWeb/categorizedProducts.xml";
			addEventListener(ResultEvent.RESULT, handleProductResult);
		}
		
		protected function handleProductResult(event:ResultEvent):void
		{
			var productArray:Array = new Array();
			var resultData:XMLList = event.result..product;
			
			for each ( var p:XML in resultData ) {
				var product:Product = Product.buildProductFromAttributes( p );
				productArray.push( product );
			}
			products = new ArrayCollection( productArray );	
		}
	}
}