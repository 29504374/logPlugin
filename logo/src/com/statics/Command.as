/**
 * name:静态常量类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.statics
{
	public class Command
	{
		/**
		 *命令类型；debug,info,error,warn,all 
		 */		
		public static const DEBUG:String = "debug";
		public static const INFO:String = "info";
		public static const ERROR:String = "error";
		public static const WAEN:String= "warn";
		public static const ALL:String = "all";
		public static const command:Array = [DEBUG,INFO,ERROR,WAEN,ALL];
	}
}