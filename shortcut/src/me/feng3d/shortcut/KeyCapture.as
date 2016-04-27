package me.feng3d.shortcut
{
	import flash.display.Stage;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;

	/**
	 * 按键捕获
	 * @author feng 2016-4-26
	 */
	public class KeyCapture
	{
		/**
		 * 捕获的按键字典
		 */
		private var mouseKey:Dictionary = new Dictionary();

		/**
		 * 按键状态
		 */
		private function get keyState():KeyState
		{
			return ShortCut.keyState;
		}

		/**
		 * 构建
		 * @param stage		舞台
		 */
		public function KeyCapture(stage:Stage)
		{
			init();

			stage.addEventListener(MouseEvent.CLICK, onMouseEvent);
		}

		private function init():void
		{
			mouseKey[MouseEvent.CLICK] = KeyConsts.Click;
		}

		protected function onMouseEvent(event:MouseEvent):void
		{
			switch (event.type)
			{
				case MouseEvent.CLICK:
				{
					mouseKey[event.type];
				}
			}

			keyState.pressKey(mouseKey[event.type]);
		}
	}
}
