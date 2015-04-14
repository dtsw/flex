

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import valueObjects.*;

class BindableProperty
    implements flash.events.IEventDispatcher
{
	/*
	 * generated bindable wrapper for property catID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'catID' moved to '_94432113catID'
	 */

    [Bindable(event="propertyChange")]
    public function get catID():Number
    {
        return this._94432113catID;
    }

    public function set catID(value:Number):void
    {
    	var oldValue:Object = this._94432113catID;
        if (oldValue !== value)
        {
            this._94432113catID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "catID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property prodName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'prodName' moved to '_1004925310prodName'
	 */

    [Bindable(event="propertyChange")]
    public function get prodName():String
    {
        return this._1004925310prodName;
    }

    public function set prodName(value:String):void
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
	 * generated bindable wrapper for property unitID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'unitID' moved to '_840527457unitID'
	 */

    [Bindable(event="propertyChange")]
    public function get unitID():Number
    {
        return this._840527457unitID;
    }

    public function set unitID(value:Number):void
    {
    	var oldValue:Object = this._840527457unitID;
        if (oldValue !== value)
        {
            this._840527457unitID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "unitID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cost (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cost' moved to '_3059661cost'
	 */

    [Bindable(event="propertyChange")]
    public function get cost():Number
    {
        return this._3059661cost;
    }

    public function set cost(value:Number):void
    {
    	var oldValue:Object = this._3059661cost;
        if (oldValue !== value)
        {
            this._3059661cost = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cost", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property listPrice (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'listPrice' moved to '_1237990581listPrice'
	 */

    [Bindable(event="propertyChange")]
    public function get listPrice():Number
    {
        return this._1237990581listPrice;
    }

    public function set listPrice(value:Number):void
    {
    	var oldValue:Object = this._1237990581listPrice;
        if (oldValue !== value)
        {
            this._1237990581listPrice = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listPrice", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property description (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'description' moved to '_1724546052description'
	 */

    [Bindable(event="propertyChange")]
    public function get description():String
    {
        return this._1724546052description;
    }

    public function set description(value:String):void
    {
    	var oldValue:Object = this._1724546052description;
        if (oldValue !== value)
        {
            this._1724546052description = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property isOrganic (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'isOrganic' moved to '_1784240543isOrganic'
	 */

    [Bindable(event="propertyChange")]
    public function get isOrganic():Boolean
    {
        return this._1784240543isOrganic;
    }

    public function set isOrganic(value:Boolean):void
    {
    	var oldValue:Object = this._1784240543isOrganic;
        if (oldValue !== value)
        {
            this._1784240543isOrganic = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isOrganic", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property isLowFat (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'isLowFat' moved to '_422858513isLowFat'
	 */

    [Bindable(event="propertyChange")]
    public function get isLowFat():Boolean
    {
        return this._422858513isLowFat;
    }

    public function set isLowFat(value:Boolean):void
    {
    	var oldValue:Object = this._422858513isLowFat;
        if (oldValue !== value)
        {
            this._422858513isLowFat = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isLowFat", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property imageName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imageName' moved to '_878349690imageName'
	 */

    [Bindable(event="propertyChange")]
    public function get imageName():String
    {
        return this._878349690imageName;
    }

    public function set imageName(value:String):void
    {
    	var oldValue:Object = this._878349690imageName;
        if (oldValue !== value)
        {
            this._878349690imageName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imageName", oldValue, value));
        }
    }


    //    IEventDispatcher implementation
    //
    private var _bindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher(flash.events.IEventDispatcher(this));

	/**
	 * @inheritDoc
	 */
    public function addEventListener(type:String, listener:Function,
                                     useCapture:Boolean = false,
                                     priority:int = 0,
                                     weakRef:Boolean = false):void
    {
        _bindingEventDispatcher.addEventListener(type, listener, useCapture,
                                                 priority, weakRef);
    }

	/**
	 * @inheritDoc
	 */
    public function dispatchEvent(event:flash.events.Event):Boolean
    {
        return _bindingEventDispatcher.dispatchEvent(event);
    }

	/**
	 * @inheritDoc
	 */
    public function hasEventListener(type:String):Boolean
    {
        return _bindingEventDispatcher.hasEventListener(type);
    }

	/**
	 * @inheritDoc
	 */
    public function removeEventListener(type:String,
                                        listener:Function,
                                        useCapture:Boolean = false):void
    {
        _bindingEventDispatcher.removeEventListener(type, listener, useCapture);
    }

	/**
	 * @inheritDoc
	 */
    public function willTrigger(type:String):Boolean
    {
        return _bindingEventDispatcher.willTrigger(type);
    }

}
