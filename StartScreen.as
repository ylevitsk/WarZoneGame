package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	public class StartScreen extends MovieClip {
		
		var iScreen:InstructionScreen;
		var bsScreen:BackstoryScreen;
		
		public function StartScreen() 
		{
			sButton.addEventListener(MouseEvent.CLICK, go);
			iButton.addEventListener(MouseEvent.CLICK, instructions);
			bsButton.addEventListener(MouseEvent.CLICK, backStory);
			
			iScreen = new InstructionScreen(this);
			bsScreen = new BackstoryScreen(this);
		}
		
		public function go(m:MouseEvent):void
		{
			dispatchEvent(new GameEvent(GameEvent.START_GAME));
		}
		
		public function instructions(m:MouseEvent):void
		{
			addChild(iScreen);
		}
		
		public function backToStart()
		{
			removeChild(iScreen);
		}
		
		public function backStory(m:MouseEvent):void
		{
			addChild(bsScreen);
		}
		
		public function backToStartFromStory()
		{
			removeChild(bsScreen);
		}
	}
	
}
