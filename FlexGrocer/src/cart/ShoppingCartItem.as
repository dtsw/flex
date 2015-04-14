package cart
{
	import valueObjects.Product;

	[Bindable]
	public class ShoppingCartItem
	{
		public var product:Product;
		private var _quantity:uint;
		public var subtotal:Number;
		
		public function get quantity():uint
		{
			return _quantity;
		}
		
		public function set quantity(value:uint):void
		{
			_quantity = value;
			calculateSubtotal()
		}

		public function ShoppingCartItem( product:Product, quantity:uint=1 )
		{
			this.product = product;
			this.quantity = quantity;
			calculateSubtotal();
		}

		private function calculateSubtotal():void {
			this.subtotal = product.listPrice * quantity;
		}
		
		public function toString():String {
			return "[ShoppingCartItem]" + product.prodName + ":" + quantity;
		}
	}
}