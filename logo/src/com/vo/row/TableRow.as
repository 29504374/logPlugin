/**
 * name:日志属性类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.vo.row
{
	public class TableRow
	{
		public var id:int = 0; //id编号
		public var type:String = null;//时间类型;debug,info,error,warn;
		public var content:String = null;//日志内容
		public var UTC:String = null;//时间戳
	}
}