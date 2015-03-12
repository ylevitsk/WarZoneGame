package  {
	
	import flash.display.MovieClip;
	
	
	public class AK47 extends MovieClip implements Gun 
	{
		var Ammo:Number;
		var shootCost = 5;
		
		public function getCost():Number
		{
			return shootCost;
		}
		
 		public function shoot(mox:int, moy:int) : Bullet
		 {
			 if(Ammo >= shootCost)
			 {
				 Ammo -= shootCost;
				var shootX = parent.x + x, shootY = parent.y + y;
				var bill = new Bullet(2, mox - shootX, moy - shootY, Math.sqrt(Math.pow(mox - shootX, 2) + Math.pow(moy - shootY, 2)  ) ); 
				bill.x = shootX;
				bill.y = shootY;
				bill.rotation = parent.scaleX * rotation;
			
			 }
			return bill;
			
		 }
		 
		 public function getAmmo() : Number
		 {
			 return Ammo/100;			 
		 }
		 
		 public function addAmmo(num:Number) : void
		 {
			 Ammo += num * 100;
		 }
		 
		 public function getType() : String
		 {
			 return "AK47";
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
		
		public function AK47(sx:int, sy:int, am:Number) 
		{

			
			x = sx; 
			y = sy;
			Ammo = am;

		}
		
		public function pointGun(mox:int, moy:int) : void
		{
			scaleX = Math.abs(scaleX); 
			rotation = (-90 * (parent.scaleX-1))+ parent.scaleX *
						Math.atan((moy-(parent.y+y))/(mox-(parent.x+x)))* 
						180/Math.PI;
						
		if(mox < x + parent.x)
			rotation -= 180;
		}
	}
	
}
