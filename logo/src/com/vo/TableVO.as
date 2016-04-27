/**
 * name:日志存储类；
 * version:1.0;
 * time:2016年4月25日 16:53:24;
 * comp:acfun;
 * author:lilei;
 * QQ：29504374; 
 */
package com.vo
{
	import com.vo.row.TableRow;

	public class TableVO
	{
		private static var table:Vector.<TableRow>=new Vector.<TableRow>();
		/**
		 * 将日志存入table中；
		 */		
		public static function insert(type:String, content:String):void
		{
			var row:TableRow=new TableRow();
			row.id=table.length + 1;
			row.type=type;
			row.content=content;
			row.UTC=new Date().toUTCString();
			table.push(row);
		}
		/**
		 * 根据指令，从table中获得数据；
		 */
		public static function select(value:String):Array
		{
			var array:Array=new Array();
			for (var i:int=0; i < table.length; i++)
			{
				if (table[i].type == value)
				{
					
					var output:String=table[i].type + "," + table[i].content + "," + table[i].UTC + "\n";
					array.push(output);
				}
			}
			return array;
			
		}
		/**
		 * 从table中获得所有数据；
		 */
		public static function selectAll():Array
		{
			var array:Array=new Array();
			for (var i:int=0; i < table.length; i++)
			{
				var output:String=table[i].type + "," + table[i].content + "," + table[i].UTC + "\n";
				array.push(output);
			}
			return array;
		}

	}
}
