package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.IEventDispatcher;
	import me.feng3d.shortcut.handle.ShortCutContext;

	/**
	 * 初始化快捷键模块
	 * @author feng 2016-4-26
	 *
	 * var shortcuts:Array = [ //
			//在按下key1时触发命令command1
				{key: "key1", command: "command1", when: ""}, //
				 //在按下key1时触发状态命令改变stateCommand1为激活状态
				{key: "key1", stateCommand: "stateCommand1", when: "state1"}, //
				 //处于state1状态时按下key1触发命令command1
				{key: "key1", command: "command1", when: "state1"}, //
				//处于state1状态不处于state2时按下key1与没按下key2触发command1与command2，改变stateCommand1为激活状态，stateCommand2为非激活状态
				{key: "key1+ ! key2", command: "command1,command2", stateCommand: "stateCommand1,!stateCommand2", when: "state1,!state2"}, //
				];
			//添加快捷键
			ShortCut.addShortCuts(shortcuts);
			//监听命令
			ShortCut.commandDispatcher.addEventListener("run", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
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
		public static function deactivityState(state:String):void
		{
			shortcutContext.deactivityState(state);
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
