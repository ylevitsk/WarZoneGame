package  {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.ui.Mouse;
	import flash.net.SharedObject;
	
	public class Cutscene4 extends MovieClip{

		public var sharedObject:SharedObject;
		public function Cutscene4() {
			sharedObject = SharedObject.getLocal( "topScores" );
		}
		public function setFinalScore( scoreValue:Number ):void
		{
			FinalScore.text = "Your Score : " + scoreValue.toString()
			{
				if ( sharedObject.data.bestScore == null )
				{
				sharedObject.data.bestScore = scoreValue;
				}
			
			else if( scoreValue > sharedObject.data.bestScore )
				{
				sharedObject.data.bestScore = scoreValue;
				}
			}
			bestScore.text = "Highest Score : " + sharedObject.data.bestScore.toString();
			sharedObject.flush();
		}

	}
	
}
