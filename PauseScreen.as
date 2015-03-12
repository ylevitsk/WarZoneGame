package  
{
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	public class PauseScreen extends MovieClip 
	{
		var bg:Background;
		
		public function PauseScreen(background:Background) 
		{
			bg = background;
			resumeButton.addEventListener(MouseEvent.CLICK, onClickResume, false, 0, true);
		}
		
		public function onClickResume(event:MouseEvent):void
		{
			bg.resumeGame();
		}
	}
	
}
