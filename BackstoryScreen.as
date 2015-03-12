package  
{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class BackstoryScreen extends MovieClip 
	{
		var ss:StartScreen
		
		public function BackstoryScreen(startScreen:StartScreen) 
		{
			backToStartMenu.addEventListener(MouseEvent.CLICK, backToMenu);
			
			ss = startScreen;
		}	
		
		public function backToMenu(m:MouseEvent):void
		{
			ss.backToStartFromStory();
		}
	}
}
