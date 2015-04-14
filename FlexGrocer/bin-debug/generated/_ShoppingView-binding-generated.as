

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import cart.ShoppingCart;
import mx.collections.ArrayCollection;
import spark.components.VGroup;
import spark.components.List;
import spark.components.DataGrid;
import components.ProductItem;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property _ShoppingView_VGroup1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var '_ShoppingView_VGroup1' moved to '_765973109_ShoppingView_VGroup1'
	 */

    [Bindable(event="propertyChange")]
    public function get _ShoppingView_VGroup1():spark.components.VGroup
    {
        return this._765973109_ShoppingView_VGroup1;
    }

    public function set _ShoppingView_VGroup1(value:spark.components.VGroup):void
    {
    	var oldValue:Object = this._765973109_ShoppingView_VGroup1;
        if (oldValue !== value)
        {
            this._765973109_ShoppingView_VGroup1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_ShoppingView_VGroup1", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cartGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cartGroup' moved to '_190807871cartGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get cartGroup():spark.components.VGroup
    {
        return this._190807871cartGroup;
    }

    public function set cartGroup(value:spark.components.VGroup):void
    {
    	var oldValue:Object = this._190807871cartGroup;
        if (oldValue !== value)
        {
            this._190807871cartGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cartGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cartList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cartList' moved to '_6295518cartList'
	 */

    [Bindable(event="propertyChange")]
    public function get cartList():spark.components.List
    {
        return this._6295518cartList;
    }

    public function set cartList(value:spark.components.List):void
    {
    	var oldValue:Object = this._6295518cartList;
        if (oldValue !== value)
        {
            this._6295518cartList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cartList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dgCart (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dgCart' moved to '_1334836669dgCart'
	 */

    [Bindable(event="propertyChange")]
    public function get dgCart():spark.components.DataGrid
    {
        return this._1334836669dgCart;
    }

    public function set dgCart(value:spark.components.DataGrid):void
    {
    	var oldValue:Object = this._1334836669dgCart;
        if (oldValue !== value)
        {
            this._1334836669dgCart = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dgCart", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property product1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'product1' moved to '_1003761374product1'
	 */

    [Bindable(event="propertyChange")]
    public function get product1():components.ProductItem
    {
        return this._1003761374product1;
    }

    public function set product1(value:components.ProductItem):void
    {
    	var oldValue:Object = this._1003761374product1;
        if (oldValue !== value)
        {
            this._1003761374product1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "product1", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property shoppingCart (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'shoppingCart' moved to '_1578046296shoppingCart'
	 */

    [Bindable(event="propertyChange")]
    public function get shoppingCart():ShoppingCart
    {
        return this._1578046296shoppingCart;
    }

    public function set shoppingCart(value:ShoppingCart):void
    {
    	var oldValue:Object = this._1578046296shoppingCart;
        if (oldValue !== value)
        {
            this._1578046296shoppingCart = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shoppingCart", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property groceryInventory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'groceryInventory' moved to '_1109258545groceryInventory'
	 */

    [Bindable(event="propertyChange")]
    public function get groceryInventory():ArrayCollection
    {
        return this._1109258545groceryInventory;
    }

    public function set groceryInventory(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1109258545groceryInventory;
        if (oldValue !== value)
        {
            this._1109258545groceryInventory = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groceryInventory", oldValue, value));
        }
    }



}
