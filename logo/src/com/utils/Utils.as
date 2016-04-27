/**
 * name:工具类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.utils
{

	import com.statics.Command;

	public class Utils
	{
		public function Utils()
		{
			
		}
		/**
		 * 验证输入指令是否存在
		 */		
		public static function validate(value:String):Boolean
		{
			var boolean:Boolean=false;
			var cmd:String=delCmd(value);
			for (var i:int=0; i < Command.command.length; i++)
			{
				if (cmd == Command.command[i])
				{
					boolean=true;
				}
			}
			return boolean;
		}
		/**
		 * 为指令增加前后修饰符；
		 */		
		public static function addCmd(value:String):String
		{
		return '#'+value+'#';
		}
		/**
		 * 为指令去掉前后修饰符；
		 */	
		public static function delCmd(value:String):String
		{
		return value.slice(1, value.length - 1);
		}
		
		

			
		}
		

}
