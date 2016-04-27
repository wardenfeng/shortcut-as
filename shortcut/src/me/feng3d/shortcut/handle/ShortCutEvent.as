package me.feng3d.shortcut.handle
{
	import flash.events.Event;

	/**
	 * 快捷键命令事件
	 * @author feng 2016-4-27
	 */
	public class ShortCutEvent extends Event
	{
		/**
		 * 构建
		 * @param command		命令名称
		 */
		public function ShortCutEvent(command:String)
		{
			super(command);
		}
	}
}
