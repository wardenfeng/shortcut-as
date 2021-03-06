package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;

	import me.feng3d.shortcut.ShortCut;

	/**
	 *
	 * @author feng 2016-4-26
	 */
	public class shortcut_examples extends Sprite
	{
		private var commandDic:Dictionary = new Dictionary();

		public function shortcut_examples()
		{
			stage.doubleClickEnabled = true;

			ShortCut.init(stage);

//			test();
//			test1();
//			test2();
//			test3(); //测试状态中&&符号
//			test4(); //测试状态中取反符号!
//			test5(); //测试快捷键中取反符号!
			test6(); //测试状态命令，可以使用分隔符，来执行多个命令和状态命令
		}

		private function test6():void
		{
			var shortcuts:Array = [ //
				{key: MouseEvent.MOUSE_DOWN, stateCommand: "running,walking", when: ""}, //
				{key: MouseEvent.MOUSE_MOVE, command: "run,run1", when: "running"}, //
				{key: MouseEvent.MOUSE_UP, stateCommand: "!running,!walking", when: ""}, //
				{key: MouseEvent.MOUSE_MOVE, command: "walk", when: "walking"}, //
				];
			ShortCut.addShortCuts(shortcuts);
			ShortCut.commandDispatcher.addEventListener("run", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
			ShortCut.commandDispatcher.addEventListener("run1", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
			ShortCut.commandDispatcher.addEventListener("walk", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
		}

		private function test5():void
		{
			var shortcuts:Array = [ //
				{key: "a+ ! b", command: "command_a", when: ""}, //
				];
			ShortCut.addShortCuts(shortcuts);
			ShortCut.commandDispatcher.addEventListener("command_a", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
		}

		private function test4():void
		{
			var shortcuts:Array = [ //
				{key: "a", command: "command_a", when: ""}, //
				{key: "s", command: "command_s", when: ""}, //
				{key: "d", command: "command_d", when: "!state_a && state_s"}, //
				];
			ShortCut.addShortCuts(shortcuts);
			ShortCut.commandDispatcher.addEventListener("command_a", function(e:Event):void
			{
				ShortCut.activityState("state_a");
			});
			ShortCut.commandDispatcher.addEventListener("command_s", function(e:Event):void
			{
				ShortCut.activityState("state_s");
			});
			ShortCut.commandDispatcher.addEventListener("command_d", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
		}

		private function test3():void
		{
			var shortcuts:Array = [ //
				{key: "a", command: "command_a", when: ""}, //
				{key: "s", command: "command_s", when: ""}, //
				{key: "d", command: "command_d", when: "state_a && state_s"}, //
				];
			ShortCut.addShortCuts(shortcuts);
			ShortCut.commandDispatcher.addEventListener("command_a", function(e:Event):void
			{
				ShortCut.activityState("state_a");
			});
			ShortCut.commandDispatcher.addEventListener("command_s", function(e:Event):void
			{
				ShortCut.activityState("state_s");
			});
			ShortCut.commandDispatcher.addEventListener("command_d", function(e:Event):void
			{
				trace("接受到命令：" + e.type);
			});
		}

		private function test2():void
		{
			var shortcuts:Array = [ //
				{key: MouseEvent.RIGHT_MOUSE_DOWN, command: "startDragSceneCamera", when: ""}, //
				{key: MouseEvent.MOUSE_MOVE, command: "dragSceneCamera", when: "DragingSceneCamera"}, //
				{key: MouseEvent.RIGHT_MOUSE_UP, command: "stopDragSceneCamera", when: "DragingSceneCamera"}, //
				];
			ShortCut.addShortCuts(shortcuts);

			ShortCut.commandDispatcher.addEventListener("startDragSceneCamera", function(e:Event):void
			{
				trace(e.type);
				ShortCut.activityState("DragingSceneCamera");
			});
			ShortCut.commandDispatcher.addEventListener("dragSceneCamera", function(e:Event):void
			{
				trace(e.type);
			});
			ShortCut.commandDispatcher.addEventListener("stopDragSceneCamera", function(e:Event):void
			{
				trace(e.type);
				ShortCut.deactivityState("DragingSceneCamera");
			});
		}

		private function test():void
		{
			var config:Array = ShortcutConfigJson.config;
			for (var i:int = 0; i < config.length; i++)
			{
				testShortcut(config[i]);
			}
		}

		private function test1():void
		{
			var shortcut:Object = {};
			shortcut.command = "clickcCommand";
			//			shortcut.key = "click+z";
			//			shortcut.key = MouseEvent.DOUBLE_CLICK + "+z";
			//			shortcut.key = MouseEvent.MIDDLE_CLICK + "+z";
			var key:String = MouseEvent.RIGHT_CLICK + "+z";
			shortcut.key = MouseEvent.RIGHT_MOUSE_UP + "+z";
			shortcut.key = MouseEvent.RIGHT_MOUSE_DOWN + "+z";
			shortcut.key = MouseEvent.MOUSE_MOVE + "+z";
			shortcut.key = MouseEvent.MOUSE_OUT + "+z";
			shortcut.key = MouseEvent.MOUSE_WHEEL + "+z+c+x+v";
			shortcut.key = "ctrl+shift+end";

			testShortcut(shortcut);
		}

		private function testShortcut(shortcut:Object):void
		{
			commandDic[shortcut.command] = shortcut;
			ShortCut.commandDispatcher.addEventListener(shortcut.command, onCammandName);
			ShortCut.addShortCuts([shortcut]);
		}

		private function onCammandName(event:Event):void
		{
			trace("接受到命令：" + JSON.stringify(commandDic[event.type]));
		}
	}
}
