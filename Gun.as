package  {
	
	public interface Gun
	{
		 function shoot(mox:int, moy:int):Bullet;
		 function getAmmo():Number;
		 function getCost():Number;
		 function pointGun(mox:int, moy:int):void;
		 function addAmmo(num:Number):void;
		 function getType():String;
		// function mov(xx:int,yy:int):void
	}
	
}
