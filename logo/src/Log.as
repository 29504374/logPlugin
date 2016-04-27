/**
 * name:日志插件；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package
{
	import com.logClass.ActionClass;
	import com.logClass.BaseClass;
	import com.logClass.OutputClass;
	import com.statics.Command;
	import com.utils.Utils;
	
	public class Log extends BaseClass
	{
		private var action:ActionClass = new ActionClass();
		private var outputClass:OutputClass = new OutputClass();
		private var outputType:String=Command.ALL;
		private var real:Boolean = false;
		private var complete:Boolean = false;

		public function Log()
		{
		
		}
		/**
		 *debug类型日志 
		 */
		override public function debug(value:String):void
		{
			this.insert(Command.DEBUG, value);
			outputType=Command.DEBUG;
		}
		/**
		 *info类型日志 
		 */
		override public function info(value:String):void
		{
			this.insert(Command.INFO, value);
			outputType=Command.INFO;
		}
		/**
		 *error类型日志 
		 */
		override public function error(value:String):void
		{
			this.insert(Command.ERROR, value);
			outputType=Command.ERROR;
		}
		/**
		 *warn类型日志 
		 */
		override public function warn(value:String):void
		{
			this.insert(Command.WAEN, value);
			outputType=Command.WAEN;
		}
		/**
		 *插入方法；
		 * 通过actionClass类,将不同类型的日志插到TableVO内；
		 */
		private function insert(type:String, value:String):void
		{
			action.insert(type,value);
		}
		/**
		 * 输出方法；
		 * @param value：“#debug#,#info#,#error#,#warn#”
		 * 根据不同的指令，从actionClass类中取出数据；
		 * 将数据提供给outputClass,并打印到控制台；
		 */
		override public function output(value:String):void
		{
			
				if (Utils.validate(value))
				{
					var cmd:String=Utils.delCmd(value);
					if (cmd == Command.ALL)
					{
						outputClass.output(cmd,action.selectAll());
					}
					else
					{
						outputClass.output(cmd, action.select(cmd));
					}
					complete = false;
				}
				else
				{
					trace("无效命令...");
				}
				
			
		}

	}
}
