/**
 * name:输出类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.logClass
{
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.utils.Timer;
	
	public class OutputClass extends EventDispatcher
	{
		private static var timer:Timer = new Timer(50);
		private static var getArray:Array = new Array();
		private static var count:int = 0;
		public function OutputClass()
		{
			timer.addEventListener(TimerEvent.TIMER,timerHandler);
		}
		/**
		 *将数据通过计时器打印到控制台; 
		 */		
		public  function output(logType:String,value:Array):void
		{
			getArray = value;
			timer.start();
		}
		/**
		 * 从数组中，每隔50 ms读取一条记录，打印到控制台；
		 * 此方法主要用于限制打印的速度；
		 * 打印过快，会造成控制台报javaScript错误；
		 */		
		private  function timerHandler(e:TimerEvent):void
		{
			
			var console:String = "console."+getArray[count].split(',')[0];
			externalInterface(console,getArray[count]);
			count = count+1;
			if(count == getArray.length)
			{
				count = 0;
				timer.stop();
			}
	}
		/**
		 * javaScript接口；
		 * 根据console类型，将不同的value打印到控制台
		 */		
		private  function externalInterface(console:String,value:String):void
		{
			if(ExternalInterface.available)
			{
				try
				{
					ExternalInterface.call(console,value);
				}catch(e:Error){
					trace(e);
				}
			}
		}
	}
}