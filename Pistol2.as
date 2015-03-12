package  {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class Pistol extends MovieClip implements Gun
	{
		public var delay:Timer
		public var Movez:Timer;
		public var canShoot:Boolean;
		public function getCost():Number
		{
			return 0;
		}
		
		public function getShoot() :Boolean
		{
			return canShoot;
		}
		 public function shoot(mox:int, moy:int) : Bullet
		 {
			
			if(canShoot == true)
			{
			var shootX = parent.x + x, shootY = parent.y + y;
			var bill = new Bullet(1, mox - shootX, moy - shootY, Math.sqrt(Math.pow(mox - shootX, 2) + Math.pow(moy - shootY, 2)  ) ); 
			bill.x = shootX;
			bill.y = shootY;
			bill.rotation = parent.scaleX * rotation;
			delay.reset();
			delay.start();
			return bill;
			}
			else 
			{
				return null;
			}
			
			
			
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
			delay = new Timer (70);
			delay.start();
			Movez = new Timer(50);
			Movez.addEventListener(TimerEvent.TIMER,Moving);
			Movez.start();
			x = sx; 
			y = sy;
			canShoot = false;

		}
		public function Moving(t:TimerEvent) : void
		{
			if(delay.currentCount > 5)
			{
			canShoot = true;
	
			}
			else
			{
				canShoot = false;
			}
			
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
