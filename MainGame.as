package  {
	
	import flash.display.MovieClip;
	
	
	public class MainGame extends MovieClip {
		
		var m:PrototypeMain;
		
		public function MainGame() 
		{
			m = new PrototypeMain();
			addChild(m);
			// constructor code
		}
	}
	
}
