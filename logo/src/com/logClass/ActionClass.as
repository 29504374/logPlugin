/**
 * name:数据操作；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.logClass
{

	import com.vo.TableVO;
	import flash.events.EventDispatcher;
	
	public class ActionClass extends EventDispatcher
	{
		public function ActionClass()
		{
		}
		/**
		 * 插入数据；
		 * @param type:“debug,info,error,warn”
		 * @param content:“具体的日志内容”
		 * 
		 */		
		public function insert(type:String, content:String):void
		{
			TableVO.insert(type,content);
		}
		/**
		 *根据指令，选取数据 ;
		 * @param value:“debug,info,error,warn”
		 * @return :选取数据的集合，数组形式；
		 */		
		public function select(value:String):Array
		{
		return	TableVO.select(value);
		}
		/**
		 *选取所有数据; 
		 * @return :选取数据的集合，数组形式；
		 * 
		 */		
		public function selectAll():Array
		{
		return TableVO.selectAll();
		}
	}
}