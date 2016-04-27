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

//			test1();
			test();
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
