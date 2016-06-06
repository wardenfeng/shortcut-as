package me.feng3d.shortcut.handle
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;

	/**
	 * 按键状态
	 * @author feng 2016-4-26
	 */
	public class KeyState extends EventDispatcher
	{
		/**
		 * 按键状态{key:键名称,value:是否按下}
		 */
		private var keyStateDic:Dictionary;

		/**
		 * 构建
		 */
		public function KeyState()
		{
			keyStateDic = new Dictionary();
		}

		/**
		 * 按下键
		 * @param key 键名称
		 */
		public function pressKey(key:String):void
		{
			keyStateDic[key] = true;
			dispatchEvent(new Event(key));
		}

		/**
		 * 释放键
		 * @param key	键名称
		 */
		public function releaseKey(key:String):void
		{
			keyStateDic[key] = false;
			dispatchEvent(new Event(key));
		}

		/**
		 * 获取按键状态
		 * @param key 按键名称
		 */
		public function getKeyState(key:String):Boolean
		{
			return !!keyStateDic[key];
		}
	}
}
