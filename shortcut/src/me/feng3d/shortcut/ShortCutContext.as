package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.Dictionary;

	import me.feng3d.shortcut.handle.KeyCapture;
	import me.feng3d.shortcut.handle.KeyState;
	import me.feng3d.shortcut.handle.ShortCutCapture;

	/**
	 * 快捷键环境
	 * @author feng 2016-6-6
	 */
	public class ShortCutContext
	{
		/**
		 * 舞台
		 */
		public var stage:Stage;

		/**
		 * 命令派发器
		 */
		public var commandDispatcher:IEventDispatcher;

		/**
		 * 按键状态
		 */
		public var keyState:KeyState;

		/**
		 * 状态字典
		 */
		public var stateDic:Dictionary;

		/**
		 * 按键捕获
		 */
		public var keyCapture:KeyCapture;

		/**
		 * 捕获字典
		 */
		public var captureDic:Dictionary;

		/**
		 * 构建快捷键环境
		 * @param stage 舞台
		 */
		public function ShortCutContext(stage:Stage)
		{
			init(stage);
		}

		/**
		 * 初始化快捷键模块
		 */
		public function init(stage:Stage):void
		{
			this.stage = stage;
			keyState = new KeyState();
			keyCapture = new KeyCapture(this)
			commandDispatcher = new EventDispatcher();

			captureDic = new Dictionary();
			stateDic = new Dictionary();
		}

		/**
		 * 添加快捷键
		 * @param shortcuts		快捷键列表
		 */
		public function addShortCuts(shortcuts:Array):void
		{
			for (var i:int = 0; i < shortcuts.length; i++)
			{
				var shortcut:Object = shortcuts[i];
				var shortcutUniqueKey:String = getShortcutUniqueKey(shortcut);
				captureDic[shortcutUniqueKey] ||= new ShortCutCapture(this, shortcut.key, shortcut.command, shortcut.when);
			}
		}

		/**
		 * 删除快捷键
		 * @param shortcuts		快捷键列表
		 */
		public function removeShortCuts(shortcuts:Array):void
		{
			for (var i:int = 0; i < shortcuts.length; i++)
			{
				var shortcutUniqueKey:String = getShortcutUniqueKey(shortcuts[i]);
				var shortCutCapture:ShortCutCapture = captureDic[shortcutUniqueKey];
				if (ShortCutCapture != null)
				{
					shortCutCapture.destroy();
				}
				delete captureDic[shortcutUniqueKey];
			}
		}

		/**
		 * 移除所有快捷键
		 */
		public function removeAllShortCuts():void
		{
			var keys:Array = [];
			var key:String;
			for (key in captureDic)
			{
				keys.push(key);
			}
			for each (key in keys)
			{
				var shortCutCapture:ShortCutCapture = captureDic[key];
				shortCutCapture.destroy();
				delete captureDic[key];
			}
		}

		/**
		 * 激活状态
		 * @param state 状态名称
		 */
		public function activityState(state:String):void
		{
			stateDic[state] = true;
		}

		/**
		 * 取消激活状态
		 * @param state 状态名称
		 */
		public function deactivityState(state:String):void
		{
			delete stateDic[state];
		}

		/**
		 * 获取状态
		 * @param state 状态名称
		 */
		public function getState(state:String):Boolean
		{
			return !!stateDic[state];
		}

		/**
		 * 获取快捷键唯一字符串
		 */
		private function getShortcutUniqueKey(shortcut:Object):String
		{
			return shortcut.key + "," + shortcut.command + "," + shortcut.when;
		}
	}
}
