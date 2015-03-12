package  
{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	public class InstructionScreen extends MovieClip 
	{
		var ss:StartScreen;
		
		public function InstructionScreen(startScreen:StartScreen) 
		{
			backToStartMenu.addEventListener(MouseEvent.CLICK, backToMenu);
			
			ss = startScreen;
		}
		
		public function backToMenu(m:MouseEvent):void
		{
			ss.backToStart();
		}
	}
	
}
