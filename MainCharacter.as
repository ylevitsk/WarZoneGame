package  {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event;
	
	
	
	
	public class MainCharacter extends MovieClip {
		public var walkTimer:Timer;
		var speed = 6;
		public var trueHeight:Number; 
		
		var left:Boolean,right:Boolean;
		
		// jump vars
		public var isjumping : Boolean, canjump : Boolean;		
		var jumpTimer : Timer;
		var jumpinitial = 60;
		var jumpspeed = jumpinitial;
		
		public var Health:Number;
		

		
		// for wall collision
		public var lastmove = 0;
		
		// arsenal
		public var weapon:Gun;
		public var arsenal:Array;
		public var index:int = 0;
		
		public function jump()
		{
			canjump = false;
			isjumping = true;
			
			jumpTimer = new Timer(50, 12);
			jumpTimer.addEventListener(TimerEvent.TIMER, doJump);
			jumpTimer.addEventListener(TimerEvent.TIMER_COMPLETE, resetJump);
			jumpTimer.start();
			
		}
		
		private function doJump(t:TimerEvent) : void
		{			
			y -= jumpspeed;
			jumpspeed *= .5;

			// allow gravity in the second 1/2 of
			// timer event so player is back on the
			// ground before he can jump again
			if(jumpspeed < 0.5)
				isjumping = false;
		}
		
		private function resetJump(t:TimerEvent) : void
		{
			jumpspeed = jumpinitial;
			isjumping = false;
			canjump = true;
			
		}
		
		
		public function mov(mox:int, moy:int)
		{
			weapon.pointGun(mox,moy);
			if(left)
			{		
				x -= speed;
				lastmove = -speed;
				
			}
			
			if(right)
			{
				x += speed;
				lastmove = speed;
				
			}
		}
		
		public function switchWeapons():void
		{
			index = (index + 1) % arsenal.length;
			
			if(weapon != null && contains(weapon as MovieClip))
				removeChild(weapon as MovieClip);
				
			if(arsenal[index] != null)
			{
			weapon = arsenal[index];
			addChild(weapon as MovieClip);
			}
			
			var sw = new PlayerEvent(PlayerEvent.WEAPON_SWITCH);
			sw.setWeapon(weapon.getType());
			dispatchEvent(sw);
		}
		
		
		public function walkThrough(t:TimerEvent):void{
			gotoAndPlay("walk");
			removeChild(weapon as MovieClip);
			addChild(weapon as MovieClip);
			
		}
		
		public function walkDone(t:TimerEvent):void{
			gotoAndStop("still");
		}
		public function getMCPosX():int
		{
			return x;
		}
		public function getMCPosY():int
		{
			return y;
		}
		public function handleKeys(k:KeyboardEvent) : void
		{
			if(k.type == KeyboardEvent.KEY_DOWN) // Key Pressed
			{
				switch(k.keyCode)
				{
					case Keyboard.W:
					case Keyboard.UP:
						if(canjump)
							jump();
							gotoAndStop("jump");
							removeChild(weapon as MovieClip);
							addChild(weapon as MovieClip);
					break;
					
					case Keyboard.A:
					case Keyboard.LEFT:
						left = true;
						walkTimer.start();
					break;
					
					case Keyboard.S:
					case Keyboard.DOWN:
					//implement crouch / drop later on?
					break;
					
					case Keyboard.D:
					case Keyboard.RIGHT:
						right = true;
						walkTimer.start();
					break;
					
					case Keyboard.Q:
						switchWeapons();
						break;
				}
				
			}
			else // Key Released
			{
				switch(k.keyCode)
				{
					
					case Keyboard.A:
					case Keyboard.LEFT:
						left = false;
						walkTimer.stop();
						gotoAndStop("still");
						removeChild(weapon as MovieClip);
						addChild(weapon as MovieClip);
					break;
					
					case Keyboard.S:
					case Keyboard.DOWN:
					break;
					
					case Keyboard.D:
					case Keyboard.RIGHT:
						right = false;
						walkTimer.stop();
						gotoAndStop("still");
						removeChild(weapon as MovieClip);
						addChild(weapon as MovieClip); 
					break;
				}
			}
		}		
		
		public function MainCharacter(x0:int,y0:int, hp0:int =100, gu:Array = null) 
		{
			x = x0;
			y = y0;
			gotoAndStop("still");
			
			walkTimer = new Timer (50);
			walkTimer.addEventListener(TimerEvent.TIMER, walkThrough);
			walkTimer.addEventListener(TimerEvent.TIMER_COMPLETE, walkDone);
			
			Health = hp0;
			trueHeight = 100;
			
			isjumping = false;
			canjump = true;
			
			
			if(gu == null)
			{
			arsenal = new Array();
			weapon = new Pistol(0, 35);
			arsenal.push(weapon);
			arsenal.push(new AK47(0,35,100));
			addChild(weapon as MovieClip);
			}
			else
			{
				arsenal = gu;
				weapon = arsenal[index];
				addChild(weapon as MovieClip);
			}
		}
	}
	
}
