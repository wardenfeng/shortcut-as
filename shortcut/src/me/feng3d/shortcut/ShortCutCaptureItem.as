package me.feng3d.shortcut
{
	import flash.events.Event;

	import me.feng3d.shortcut.configs.ShortCutConfigItem;
	import me.feng3d.shortcut.events.ShortCutCommandEvent;

	/**
	 * 快捷键捕获
	 * @author feng 2016-4-26
	 */
	public class ShortCutCaptureItem
	{
		/**
		 * 快捷键配置单元
		 */
		private var shortcut:ShortCutConfigItem;

		/**
		 * 按键状态
		 */
		private function get keyState():KeyState
		{
			return ShortCut.keyState;
		}

		/**
		 * 构建
		 */
		public function ShortCutCaptureItem(shortcut:ShortCutConfigItem)
		{
			this.shortcut = shortcut;

			init();
		}

		/**
		 * 初始化
		 */
		private function init():void
		{
			var keys:Array = shortcut.key.split("+");
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
			if (check())
			{
				ShortCut.commandDispatcher.dispatchEvent(new ShortCutCommandEvent(shortcut.command));
			}
		}

		/**
		 * 检测是否满足快捷键需求
		 */
		private function check():Boolean
		{
			var keys:Array = shortcut.key.split("+");
			for (var i:int = 0; i < keys.length; i++)
			{
				if (!keyState[keys[i]])
					return false;
			}
			return true;
		}
	}
}
