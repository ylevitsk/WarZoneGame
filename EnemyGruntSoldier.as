package  
{
	
	import flash.display.MovieClip;	
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class EnemyGruntSoldier extends MovieClip 
	{
		public var dead:Boolean;
		public var moveTimer:Timer;
		public var mov:int, stopleft:int, stopright:int, hp:int;

		
		public function EnemyGruntSoldier(xx:int, yy:int, minx:int, maxx:int, hpp=2) 
		{
			x = xx; 
			y = yy;
			gotoAndPlay("enemyWalk")
			
			hp = hpp;
			
			stopleft = minx;
			stopright = maxx;
			

			dead = false;
			moveTimer = new Timer(30);
			moveTimer.addEventListener(TimerEvent.TIMER,moveme);
			
			
			if(Math.random()*2 -1 > 0)
				mov = 1;
			else
				mov = -1;
				
			scaleX = mov;
			
			moveTimer.start();
		}
		
		public function moveme(te:TimerEvent):void
		{
			x += mov * 2;
			
			if(x + width >= stopright)
				mov = -1; 
			
			if(x <= stopleft)
				mov = 1;
			
			scaleX = mov;
		}
		
		public function damage(amount:int) : void
		{
			hp -= amount;
			if(hp <= 0)
				dead = true;
			
		}
	
	}	
}
