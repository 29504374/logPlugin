/**
 * name:基础类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.logClass
{
	import flash.display.Sprite;

	public class BaseClass extends Sprite
	{
		public function debug(value:String):void{};
		public function info(value:String):void{};
		public function error(value:String):void{};
		public function warn(value:String):void{};
		public function all(value:String):void{};
		public function output(value:String):void{};
		
	}
}