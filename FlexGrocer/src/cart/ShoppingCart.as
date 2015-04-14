package cart
{
	import mx.collections.ArrayCollection;
	import mx.collections.IViewCursor;
	import mx.collections.Sort;
	import mx.collections.SortField;

	public class ShoppingCart
	{
		[Bindable]
		public var items:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var total:Number=0;
		
		public function ShoppingCart()
		{
			var prodSort:Sort = new Sort();
			var sortField:SortField = new SortField( "product" );
			prodSort.fields = [ sortField ];
			
			items.sort = prodSort;
			items.refresh();
		}
		
		public function addItem( item:ShoppingCartItem ):void {
			if ( isItemInCart( item ) ) {
				updateItem(item);
			} else {
				items.addItem(item);
			}
			
			calculateTotal();
		}
		
		public function removeItem( item:ShoppingCartItem ):void {
			var cursor:IViewCursor = items.createCursor();
			
			if ( cursor.findFirst( item ) ) {
				cursor.remove();
			}
			
			calculateTotal();
			
		}
		public function toString():String {
			return "[ShoppingCart $" + total + "] " + items;
		}
		
		private function getItemInCart( item:ShoppingCartItem ):ShoppingCartItem {
			var existingItem:ShoppingCartItem;
			var cursor:IViewCursor = items.createCursor();
			var found:Boolean = cursor.findFirst(item);
			
			if ( found ) {
				existingItem = cursor.current as ShoppingCartItem;
			}
			/*for ( var i:uint=0; i<items.length; i++ ) {
				existingItem = items[ i ] as ShoppingCartItem;
				
				if ( existingItem.product == item.product ) {
					return existingItem;
				}
			}*/
			
			return existingItem;
		}
		
		private function isItemInCart( item:ShoppingCartItem ):Boolean {
			var sci:ShoppingCartItem = getItemInCart( item );
			return ( sci != null );
		}
		
		private function updateItem( item:ShoppingCartItem ):void {
			var existingItem:ShoppingCartItem = getItemInCart( item );
			existingItem.quantity += item.quantity;
			
		}
		
		private function calculateTotal():void {
			var newTotal:Number = 0;
			var existingItem:ShoppingCartItem;
			
			for ( var i:uint=0; i<items.length; i++ ) {
				existingItem = items[i] as ShoppingCartItem;
				newTotal += existingItem.subtotal;
			}
			
			this.total = newTotal;
		}
	}
}