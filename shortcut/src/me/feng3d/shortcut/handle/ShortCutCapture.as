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
		private var keyState:KeyState;

		/**
		 * 构建快捷键捕获
		 * @param key			快捷键
		 * @param command		要执行的命令名称
		 * @param when			快捷键处于活动状态的条件
		 */
		public function ShortCutCapture(keyState:KeyState, key:String, command:String, when:String = null)
		{
			this.keyState = keyState;
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

			var inWhen:Boolean = checkActivityState();
			var pressKeys:Boolean = keyState.check(keys);

			if (pressKeys && inWhen)
			{
				ShortCut.commandDispatcher.dispatchEvent(new ShortCutEvent(command));
			}
		}

		/**
		 * 检测快捷键是否处于活跃状态
		 */
		private function checkActivityState():Boolean
		{
			if (when == null || StringUtil.trim(when).length == 0)
				return true;
			var whens:Array = when.split("&&");
			for (var i:int = 0; i < whens.length; i++)
			{
				var whenStr:String = StringUtil.trim(whens[i]);
				if (whenStr.length > 0)
				{
					if (!getState(whenStr))
						return false;
				}
			}
			return true;
		}

		/**
		 * 获取是否处于指定状态中（支持一个！取反）
		 * @param state 状态名称
		 */
		private function getState(state:String):Boolean
		{
			if (state.charAt(0) == "!")
				return !ShortCut.getState(StringUtil.trim(state.substr(1)));
			return ShortCut.getState(state);
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
