

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import services.CategoryService;
import views.ShoppingView;
import services.ProductService;
import spark.components.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property bodyGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'bodyGroup' moved to '_1230799357bodyGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get bodyGroup():views.ShoppingView
    {
        return this._1230799357bodyGroup;
    }

    public function set bodyGroup(value:views.ShoppingView):void
    {
    	var oldValue:Object = this._1230799357bodyGroup;
        if (oldValue !== value)
        {
            this._1230799357bodyGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bodyGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property btnCartView (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnCartView' moved to '_1786404961btnCartView'
	 */

    [Bindable(event="propertyChange")]
    public function get btnCartView():spark.components.Button
    {
        return this._1786404961btnCartView;
    }

    public function set btnCartView(value:spark.components.Button):void
    {
    	var oldValue:Object = this._1786404961btnCartView;
        if (oldValue !== value)
        {
            this._1786404961btnCartView = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnCartView", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property btnCheckout (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnCheckout' moved to '_978250814btnCheckout'
	 */

    [Bindable(event="propertyChange")]
    public function get btnCheckout():spark.components.Button
    {
        return this._978250814btnCheckout;
    }

    public function set btnCheckout(value:spark.components.Button):void
    {
    	var oldValue:Object = this._978250814btnCheckout;
        if (oldValue !== value)
        {
            this._978250814btnCheckout = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnCheckout", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property categoryService (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'categoryService' moved to '_1050191831categoryService'
	 */

    [Bindable(event="propertyChange")]
    public function get categoryService():services.CategoryService
    {
        return this._1050191831categoryService;
    }

    public function set categoryService(value:services.CategoryService):void
    {
    	var oldValue:Object = this._1050191831categoryService;
        if (oldValue !== value)
        {
            this._1050191831categoryService = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryService", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property productService (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'productService' moved to '_1850341062productService'
	 */

    [Bindable(event="propertyChange")]
    public function get productService():services.ProductService
    {
        return this._1850341062productService;
    }

    public function set productService(value:services.ProductService):void
    {
    	var oldValue:Object = this._1850341062productService;
        if (oldValue !== value)
        {
            this._1850341062productService = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productService", oldValue, value));
        }
    }



}
