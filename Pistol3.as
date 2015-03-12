package  {
	
	import flash.display.MovieClip;
	
	
	public class Pistol extends MovieClip implements Gun
	{
		public function getCost():Number
		{
			return 0;
		}
		
		
		 public function shoot(mox:int, moy:int) : Bullet
		 {
			var shootX = parent.x + x, shootY = parent.y + y;
			var bill = new Bullet(1, mox - shootX, moy - shootY, Math.sqrt(Math.pow(mox - shootX, 2) + Math.pow(moy - shootY, 2)  ) ); 
			bill.x = shootX;
			bill.y = shootY;
			bill.rotation = parent.scaleX * rotation;
			
			
			return bill;
			
		 }
		 
		 public function getAmmo() : Number
		 {
			 return 0;			 
		 }
		 
		 public function addAmmo(num:Number) : void
		 { }
		 
		 public function getType() : String
		 {
			 return "Pistol";
		 }
		 
		 /*
		 public function mov(xx:int, yy:int) : void
		 {
			 x = xx; 
			 y = yy;
			 shootX = xx;
			 shootY = yy;
		 }
		 */
		
		public function Pistol(sx:int, sy:int) 
		{
			x = sx; 
			y = sy;

		}
		
		public function pointGun(mox:int, moy:int) : void
		{
			scaleX = 1; 
			rotation = (-90 * (parent.scaleX-1))+ parent.scaleX *
						Math.atan((moy-(parent.y+y))/(mox-(parent.x+x)))* 
						180/Math.PI;
						
		if(mox < x + parent.x)
			rotation -= 180;
		}
	}
	
}
