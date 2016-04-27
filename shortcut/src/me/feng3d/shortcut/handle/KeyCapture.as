package me.feng3d.shortcut.handle
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;
	import me.feng3d.shortcut.ShortCut;

	/**
	 * 按键捕获
	 * @author feng 2016-4-26
	 */
	public class KeyCapture
	{
		/**
		 * 捕获的按键字典
		 */
		private var mouseKeyDic:Dictionary = new Dictionary();

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
			//
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeydown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyup);

			//监听鼠标事件
			var mouseEvents:Array = [ //
				MouseEvent.CLICK, //
				MouseEvent.CONTEXT_MENU, //
				MouseEvent.DOUBLE_CLICK, //
				MouseEvent.MIDDLE_CLICK, //
				MouseEvent.MIDDLE_MOUSE_DOWN, //
				MouseEvent.MIDDLE_MOUSE_UP, //
				MouseEvent.MOUSE_DOWN, //
				MouseEvent.MOUSE_MOVE, //
				MouseEvent.MOUSE_OUT, //
				MouseEvent.MOUSE_OVER, //
				MouseEvent.MOUSE_UP, //
				MouseEvent.MOUSE_WHEEL, //
				MouseEvent.RELEASE_OUTSIDE, //
				MouseEvent.RIGHT_CLICK, //
				MouseEvent.RIGHT_MOUSE_DOWN, //
				MouseEvent.RIGHT_MOUSE_UP, //
				MouseEvent.ROLL_OUT, //
				MouseEvent.ROLL_OVER, //
				];
			for (var i:int = 0; i < mouseEvents.length; i++)
			{
				stage.addEventListener(mouseEvents[i], onMouseOnce);
			}
		}

		/**
		 * 鼠标事件
		 */
		protected function onMouseOnce(event:MouseEvent):void
		{
			var mouseKey:String = event.type;
			keyState.pressKey(mouseKey);
			keyState.releaseKey(mouseKey);
		}

		/**
		 * 键盘按下事件
		 */
		protected function onKeydown(event:KeyboardEvent):void
		{
			var boardKey:String = getBoardKey(event.keyCode);
			if (boardKey != null)
				keyState.pressKey(boardKey);
		}

		/**
		 * 键盘弹起事件
		 */
		protected function onKeyup(event:KeyboardEvent):void
		{
			var boardKey:String = getBoardKey(event.keyCode);
			if (boardKey)
				keyState.releaseKey(boardKey);
		}

		/**
		 * 获取键盘按键名称
		 */
		private function getBoardKey(keyCode:uint):String
		{
			var boardKey:String = ShortCut.boardKeyDic[keyCode];
			if (boardKey == null && Keyboard.A <= keyCode && keyCode <= Keyboard.Z)
			{
				boardKey = String.fromCharCode(keyCode).toLocaleLowerCase();
			}
			return boardKey;
		}
	}
}
