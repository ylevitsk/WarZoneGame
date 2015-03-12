package  {
	
	import flash.display.MovieClip;
	
	public class Boss extends MovieClip
	{
		
		public var dead:Boolean;
		public var hits:int
		
		public function Boss(xx:int, yy:int) 
		{
			x = xx;
			y = yy; 
			// constructor code
			dead = false;
			hits = 0

		}
		
		public function damage(amt:int)
		{
			hits += amt;
			if(hits == 30)
			{
				dead = true;
			}
		}
	}
}
