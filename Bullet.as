package  
{
	
	import flash.display.MovieClip;
	
	
	public class Bullet extends MovieClip 
	{
		var damage:Number, ym:Number,xm:Number;
		public var Score:int = 0;
		
		public function Bullet(dam:Number, dx:Number, dy:Number, dd:Number) 
		{
			damage = dam;
			ym = 10* dy/dd;
			xm = 10* dx/dd;
		}
		
		public function moveBullet() : void
		{
			x += xm;
			y += ym;
		}
		
		
	}
	
}
