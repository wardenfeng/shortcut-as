package me.feng3d.shortcut.events
{
	import flash.events.Event;

	/**
	 * 快捷键命令事件
	 * @author feng 2016-4-27
	 */
	public class ShortCutCommandEvent extends Event
	{
		/**
		 * 构建
		 * @param type		命令名称
		 */
		public function ShortCutCommandEvent(type:String)
		{
			super(type);
		}
	}
}
