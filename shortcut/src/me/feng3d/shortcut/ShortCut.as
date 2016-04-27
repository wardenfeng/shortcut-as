package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	/**
	 * 初始化快捷键模块
	 * @author feng 2016-4-26
	 */
	public class ShortCut
	{
		/**
		 * 按键状态
		 */
		public static var keyState:KeyState;

		/**
		 * 按键捕获
		 */
		public static var keyCapture:KeyCapture;

		/**
		 * 命令派发器
		 */
		public static var commandDispatcher:IEventDispatcher;

		/**
		 * 初始化快捷键模块
		 */
		public static function init(stage:Stage):void
		{
			keyState = new KeyState();
			keyCapture = new KeyCapture(stage)
			commandDispatcher = new EventDispatcher();
		}
	}
}
