/**
 * name:事件派发；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.event
{
	import flash.events.Event;
	
	public class ActionEvent extends Event
	{
		public static const INSERT:String = "insert";
		public static const SELECT:String = "select";
		public static const SELECTALL:String = "selectAll";
		public static const COMPLETE:String = "complete";
		public var data:String;
		public function ActionEvent(type:String,value=null)
		{
			super(type);
			data = value;
		}
	}
}