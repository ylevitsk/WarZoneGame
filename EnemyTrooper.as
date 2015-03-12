package  
{
	
	import flash.display.MovieClip;	
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	//import EnemyBullet;
	
	public class EnemyTrooper extends MovieClip 
	{
		public var dead:Boolean;
		public var moveTimer:Timer;
		public var mov:int, stopleft:int, stopright:int, hp:int, mcx:int, mcy:int;
		//public var mc:MainCharacter;
		
		
		public function EnemyTrooper(xx:int, yy:int, minx:int, maxx:int, hpp=5) 
		{
			mcx = 10000
			mcy = 10000
			
			x = xx; 
			y = yy; 
			
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
		
		public function setMCPos(Mx:int, My:int):void
			{
				mcx = Mx;
				mcy = My;
			}
		
		public function moveme(te:TimerEvent):void
		{
			
			x += mov * 2;
			
			if(x + width >= stopright)
				mov = -1; 
			
			if(x <= stopleft)
				mov = 1;
			
			scaleX = mov;
			
			if (y - 40 < mcy && y + 40 > mcy)
			{
				if (x > mcx)
				{
					if (x - 250 < mcx)
						mov = -1;
				}
				if (x < mcx)
				{
					if (x + 250 > mcx)
						mov = 1;
				}
			}
		}
		

		/*public function shoot(e:Event):void
			{
				var EnemyBullet= new enemybullet();
				this.x = MC.x;
				this.y = MC.y;

				addChild(enemyBullet);

				enemyBullet.addEventListener(Event.ENTER_FRAME, moveEnemyBullet)
			}


		public function moveEnemyBullet(e:Event):void
			{e.target.x -= 5;
			if(e.target.x <= -10)
			{ //If the X of Bullet is less than or equal to minus 10 then the event listener will be removed and so will the movieclip.
			e.target.removeEventListener(Event.ENTER_FRAME, moveEnemyBullet);
			removeChild(MovieClip(e.target));
			}
			}*/
		
		public function damage(amount:int) : void
		{
			hp -= amount;
			if(hp <= 0)
				dead = true;
		}
	
	}	
}
