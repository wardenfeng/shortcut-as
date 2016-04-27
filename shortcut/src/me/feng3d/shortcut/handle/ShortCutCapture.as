package me.feng3d.shortcut.handle
{
	import flash.events.Event;

	import mx.utils.StringUtil;
	import me.feng3d.shortcut.ShortCut;


	/**
	 * 快捷键捕获
	 * @author feng 2016-4-26
	 */
	public class ShortCutCapture
	{
		/**
		 * 快捷键
		 */
		private var key:String;
		/**
		 * 要执行的命令名称
		 */
		private var command:String;
		/**
		 * 快捷键处于活动状态的条件
		 */
		private var when:String;

		/**
		 * 按键状态
		 */
		private function get keyState():KeyState
		{
			return ShortCut.keyState;
		}

		/**
		 * 构建快捷键捕获
		 * @param key			快捷键
		 * @param command		要执行的命令名称
		 * @param when			快捷键处于活动状态的条件
		 */
		public function ShortCutCapture(key:String, command:String, when:String = null)
		{
			this.key = key;
			this.command = command;
			this.when = when;

			init();
		}

		/**
		 * 初始化
		 */
		private function init():void
		{
			var keys:Array = getKeys();
			for (var i:int = 0; i < keys.length; i++)
			{
				keyState.addEventListener(keys[i], onCapture);
			}
		}

		/**
		 * 处理捕获事件
		 */
		protected function onCapture(event:Event):void
		{
			var keys:Array = getKeys();
			if (keyState.check(keys))
			{
				ShortCut.commandDispatcher.dispatchEvent(new ShortCutEvent(command));
			}
		}

		/**
		 * 销毁
		 */
		public function destroy():void
		{
			var keys:Array = getKeys();
			for (var i:int = 0; i < keys.length; i++)
			{
				keyState.removeEventListener(keys[i], onCapture);
			}
		}

		/**
		 * 获取键列表
		 */
		private function getKeys():Array
		{
			var keys:Array = key.split("+");
			for (var i:int = 0; i < keys.length; i++)
			{
				keys[i] = StringUtil.trim(keys[i]);
			}

			return keys;
		}
	}
}