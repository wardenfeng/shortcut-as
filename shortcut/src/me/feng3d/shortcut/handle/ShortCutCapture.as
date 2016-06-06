package me.feng3d.shortcut.handle
{
	import flash.events.Event;

	import mx.utils.StringUtil;

	import me.feng3d.shortcut.ShortCutContext;

	/**
	 * 快捷键捕获
	 * @author feng 2016-4-26
	 */
	public class ShortCutCapture
	{
		/**
		 * 快捷键环境
		 */
		private var shortCutContext:ShortCutContext;

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
		 * 按键列表
		 */
		private var keys:Vector.<Key>;

		/**
		 * 状态列表
		 */
		private var states:Vector.<State>;

		/**
		 * 构建快捷键捕获
		 * @param shortCutContext		快捷键环境
		 * @param key					快捷键
		 * @param command				要执行的命令名称
		 * @param when					快捷键处于活动状态的条件
		 */
		public function ShortCutCapture(shortCutContext:ShortCutContext, key:String, command:String, when:String = null)
		{
			this.shortCutContext = shortCutContext;
			this.keyState = shortCutContext.keyState;
			this.key = key;
			this.command = command;
			this.when = when;

			keys = getKeys(key);
			states = getStates(when);

			init();
		}

		/**
		 * 初始化
		 */
		private function init():void
		{
			for (var i:int = 0; i < keys.length; i++)
			{
				keyState.addEventListener(keys[i].key, onCapture);
			}
		}

		/**
		 * 处理捕获事件
		 */
		private function onCapture(event:ShortCutEvent):void
		{
			var inWhen:Boolean = checkActivityStates(states);
			var pressKeys:Boolean = checkActivityKeys(keys);

			if (pressKeys && inWhen)
			{
				shortCutContext.commandDispatcher.dispatchEvent(new ShortCutEvent(command, event.data));
			}
		}

		/**
		 * 检测快捷键是否处于活跃状态
		 */
		private function checkActivityStates(states:Vector.<State>):Boolean
		{
			for (var i:int = 0; i < states.length; i++)
			{
				if (!getState(states[i]))
					return false;
			}
			return true;
		}

		/**
		 * 获取是否处于指定状态中（支持一个！取反）
		 * @param state 状态名称
		 */
		private function getState(state:State):Boolean
		{
			var result:Boolean = shortCutContext.getState(state.state);
			if (state.not)
			{
				result = !result;
			}
			return result;
		}

		/**
		 * 检测是否按下给出的键
		 * @param keys 按键数组
		 */
		private function checkActivityKeys(keys:Vector.<Key>):Boolean
		{
			for (var i:int = 0; i < keys.length; i++)
			{
				if (!getKeyValue(keys[i]))
					return false;
			}
			return true;
		}

		/**
		 * 获取按键状态（true：按下状态，false：弹起状态）
		 */
		private function getKeyValue(key:Key):Boolean
		{
			var value:Boolean = keyState.getKeyState(key.key);

			if (key.not)
			{
				value = !value;
			}

			return value;
		}

		/**
		 * 获取状态列表
		 * @param when		状态字符串
		 */
		private function getStates(when:String):Vector.<State>
		{
			var states:Vector.<State> = new Vector.<State>();

			var state:String = StringUtil.trim(when);
			if (state.length == 0)
				return states;

			var stateStrs:Array = state.split("+");
			for (var i:int = 0; i < stateStrs.length; i++)
			{
				states.push(new State(stateStrs[i]));
			}

			return states;
		}

		/**
		 * 获取键列表
		 * @param key		快捷键
		 */
		private function getKeys(key:String):Vector.<Key>
		{
			var keyStrs:Array = key.split("+");
			var keys:Vector.<Key> = new Vector.<Key>();
			for (var i:int = 0; i < keyStrs.length; i++)
			{
				keys.push(new Key(keyStrs[i]));
			}

			return keys;
		}

		/**
		 * 销毁
		 */
		public function destroy():void
		{
			for (var i:int = 0; i < keys.length; i++)
			{
				keyState.removeEventListener(keys[i].key, onCapture);
			}
			shortCutContext = null;
			keys = null;
			states = null;
		}
	}
}
import mx.utils.StringUtil;

/**
 * 按键
 * @author feng 2016-6-6
 */
class Key
{
	/**
	 * 是否取反
	 */
	public var not:Boolean;

	/**
	 * 状态名称
	 */
	public var key:String;

	public function Key(key:String)
	{
		key = StringUtil.trim(key);
		if (key.charAt(0) == "!")
		{
			not = true;
			key = StringUtil.trim(key.substr(1));
		}
		this.key = key;
	}
}

/**
 * 按键
 * @author feng 2016-6-6
 */
class State
{
	/**
	 * 是否取反
	 */
	public var not:Boolean;

	/**
	 * 状态名称
	 */
	public var state:String;

	public function State(state:String)
	{
		state = StringUtil.trim(state);
		if (state.charAt(0) == "!")
		{
			not = true;
			state = StringUtil.trim(state.substr(1));
		}
		this.state = state;
	}
}
