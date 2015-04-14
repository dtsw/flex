

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.Label;
import spark.components.VGroup;
import valueObjects.Product;
import spark.components.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property add (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'add' moved to '_96417add'
	 */

    [Bindable(event="propertyChange")]
    public function get add():spark.components.Button
    {
        return this._96417add;
    }

    public function set add(value:spark.components.Button):void
    {
    	var oldValue:Object = this._96417add;
        if (oldValue !== value)
        {
            this._96417add = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "add", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property price (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'price' moved to '_106934601price'
	 */

    [Bindable(event="propertyChange")]
    public function get price():spark.components.Label
    {
        return this._106934601price;
    }

    public function set price(value:spark.components.Label):void
    {
    	var oldValue:Object = this._106934601price;
        if (oldValue !== value)
        {
            this._106934601price = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property prodName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'prodName' moved to '_1004925310prodName'
	 */

    [Bindable(event="propertyChange")]
    public function get prodName():spark.components.Label
    {
        return this._1004925310prodName;
    }

    public function set prodName(value:spark.components.Label):void
    {
    	var oldValue:Object = this._1004925310prodName;
        if (oldValue !== value)
        {
            this._1004925310prodName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prodName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property products (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'products' moved to '_1003761308products'
	 */

    [Bindable(event="propertyChange")]
    public function get products():spark.components.VGroup
    {
        return this._1003761308products;
    }

    public function set products(value:spark.components.VGroup):void
    {
    	var oldValue:Object = this._1003761308products;
        if (oldValue !== value)
        {
            this._1003761308products = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "products", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property remove (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'remove' moved to '_934610812remove'
	 */

    [Bindable(event="propertyChange")]
    public function get remove():spark.components.Button
    {
        return this._934610812remove;
    }

    public function set remove(value:spark.components.Button):void
    {
    	var oldValue:Object = this._934610812remove;
        if (oldValue !== value)
        {
            this._934610812remove = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property product (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'product' moved to '_309474065product'
	 */

    [Bindable(event="propertyChange")]
    public function get product():Product
    {
        return this._309474065product;
    }

    public function set product(value:Product):void
    {
    	var oldValue:Object = this._309474065product;
        if (oldValue !== value)
        {
            this._309474065product = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "product", oldValue, value));
        }
    }



}
