package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.IEventDispatcher;

	use namespace ns_shortcut;

	/**
	 * 初始化快捷键模块
	 * @author feng 2016-4-26
	 */
	public class ShortCut
	{
		/**
		 * 命令派发器
		 */
		public static var commandDispatcher:IEventDispatcher;

		/**
		 * 快捷键环境
		 */
		private static var shortcutContext:ShortCutContext;

		/**
		 * 初始化快捷键模块
		 */
		public static function init(stage:Stage):void
		{
			shortcutContext = new ShortCutContext(stage);
			commandDispatcher = shortcutContext.commandDispatcher;
		}

		/**
		 * 添加快捷键
		 * @param shortcuts		快捷键列表
		 */
		public static function addShortCuts(shortcuts:Array):void
		{
			shortcutContext.addShortCuts(shortcuts);
		}

		/**
		 * 删除快捷键
		 * @param shortcuts		快捷键列表
		 */
		public static function removeShortCuts(shortcuts:Array):void
		{
			shortcutContext.removeShortCuts(shortcuts);
		}

		/**
		 * 移除所有快捷键
		 */
		public static function removeAllShortCuts():void
		{
			shortcutContext.removeAllShortCuts();
		}

		/**
		 * 激活状态
		 * @param state 状态名称
		 */
		public static function activityState(state:String):void
		{
			shortcutContext.activityState(state);
		}

		/**
		 * 取消激活状态
		 * @param state 状态名称
		 */
		public static function deactivateState(state:String):void
		{
			shortcutContext.deactivateState(state);
		}

		/**
		 * 获取状态
		 * @param state 状态名称
		 */
		public static function getState(state:String):Boolean
		{
			return shortcutContext.getState(state);
		}
	}
}
