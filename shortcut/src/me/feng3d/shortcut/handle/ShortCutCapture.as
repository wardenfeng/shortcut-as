package me.feng3d.shortcut.handle
{
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
		 * 可执行的状态命令
		 */
		private var stateCommand:String;

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
		 * 命令列表
		 */
		private var commands:Vector.<String>;

		/**
		 * 命令列表
		 */
		private var stateCommands:Vector.<StateCommand>;

		/**
		 * 构建快捷键捕获
		 * @param shortCutContext		快捷键环境
		 * @param key					快捷键
		 * @param command				要执行的命令名称
		 * @param stateCommand			可执行的状态命令
		 * @param when					快捷键处于活动状态的条件
		 */
		public function ShortCutCapture(shortCutContext:ShortCutContext, key:String, command:String = null, stateCommand:String = null, when:String = null)
		{
			this.shortCutContext = shortCutContext;
			this.keyState = shortCutContext.keyState;
			this.key = key;
			this.command = command;
			this.stateCommand = stateCommand;
			this.when = when;

			keys = getKeys(key);
			states = getStates(when);
			commands = getCommands(command);
			stateCommands = getStateCommand(stateCommand);

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
				dispatchCommands(commands, event.data);
				executeStateCommands(stateCommands);
			}
		}

		/**
		 * 派发命令
		 */
		private function dispatchCommands(commands:Vector.<String>, data:Object):void
		{
			for (var i:int = 0; i < commands.length; i++)
			{
				shortCutContext.commandDispatcher.dispatchEvent(new ShortCutEvent(commands[i], data));
			}
		}

		/**
		 * 执行状态命令
		 */
		private function executeStateCommands(stateCommands:Vector.<StateCommand>):void
		{
			for (var i:int = 0; i < stateCommands.length; i++)
			{
				var stateCommand:StateCommand = stateCommands[i];
				if (stateCommand.not)
					shortCutContext.deactivityState(stateCommand.state);
				else
					shortCutContext.activityState(stateCommand.state);
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

			if (when == null)
				return states;
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
		 * 获取命令列表
		 * @param command	命令
		 */
		private function getCommands(command:String):Vector.<String>
		{
			var commands:Vector.<String> = new Vector.<String>();
			command = StringUtil.trim(command);
			if (command == null)
				return commands;

			var commandStrs:Array = command.split(",");
			for (var i:int = 0; i < commandStrs.length; i++)
			{
				var commandStr:String = StringUtil.trim(commandStrs[i]);
				if (commandStr.length > 0)
				{
					commands.push(commandStr);
				}
			}

			return commands;
		}

		/**
		 * 获取状态命令列表
		 * @param stateCommand	状态命令
		 */
		private function getStateCommand(stateCommand:String):Vector.<StateCommand>
		{
			var stateCommands:Vector.<StateCommand> = new Vector.<StateCommand>();
			stateCommand = StringUtil.trim(stateCommand);
			if (stateCommand == null)
				return stateCommands;

			var stateCommandStrs:Array = stateCommand.split(",");
			for (var i:int = 0; i < stateCommandStrs.length; i++)
			{
				var commandStr:String = StringUtil.trim(stateCommandStrs[i]);
				if (commandStr.length > 0)
				{
					stateCommands.push(new StateCommand(commandStr));
				}
			}

			return stateCommands;
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
 * 状态
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

/**
 * 状态命令
 * @author feng 2016-6-6
 */
class StateCommand
{
	/**
	 * 是否取反
	 */
	public var not:Boolean;

	/**
	 * 状态名称
	 */
	public var state:String;

	public function StateCommand(state:String)
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
