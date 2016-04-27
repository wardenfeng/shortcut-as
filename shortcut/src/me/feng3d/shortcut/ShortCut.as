package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;
	import me.feng3d.shortcut.handle.KeyCapture;
	import me.feng3d.shortcut.handle.KeyState;
	import me.feng3d.shortcut.handle.ShortCutCapture;

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
		 * 键盘按键字典 （补充常量，a-z以及鼠标按键不必再次列出）
		 * 例如 boardKeyDic[Keyboard.CONTROL] = "ctrl";
		 */
		public static var boardKeyDic:Dictionary;

		/**
		 * 捕获字典
		 */
		private static var captureDic:Dictionary;

		/**
		 * 初始化快捷键模块
		 */
		public static function init(stage:Stage):void
		{
			keyState = new KeyState();
			keyCapture = new KeyCapture(stage)
			commandDispatcher = new EventDispatcher();

			captureDic = new Dictionary();
			boardKeyDic = new Dictionary();
			defaultSupportKeys();
		}

		/**
		 * 默认支持按键
		 */
		private static function defaultSupportKeys():void
		{
			boardKeyDic[Keyboard.CONTROL] = "ctrl";
			boardKeyDic[Keyboard.SHIFT] = "shift";
			boardKeyDic[Keyboard.ESCAPE] = "escape";
			boardKeyDic[Keyboard.ALTERNATE] = "alt";
			boardKeyDic[Keyboard.END] = "end";
		}

		/**
		 * 添加快捷键
		 * @param shortcuts		快捷键列表
		 */
		public static function addShortCuts(shortcuts:Array):void
		{
			for (var i:int = 0; i < shortcuts.length; i++)
			{
				var shortcut:Object = shortcuts[i];
				var shortcutUniqueKey:String = getShortcutUniqueKey(shortcut);
				captureDic[shortcutUniqueKey] ||= new ShortCutCapture(shortcut.key, shortcut.command, shortcut.when);
			}
		}

		/**
		 * 获取快捷键唯一字符串
		 */
		private static function getShortcutUniqueKey(shortcut:Object):String
		{
			return shortcut.key + "," + shortcut.command + "," + shortcut.when;
		}

		/**
		 * 删除快捷键
		 * @param shortcuts		快捷键列表
		 */
		public static function removeShortCuts(shortcuts:Array):void
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
		public static function removeAllShortCuts():void
		{
			var keys:Array = [];
			var key:String;
			for (key in captureDic)
			{
				keys.push(key);
			}
			for each (key in keys)
			{
				captureDic[key].destroy();
				delete captureDic[key];
			}
		}
	}
}
