package  {
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class PlatformScape {

		public static const PLATFORM = "platform";
		public static const WALL = "wall";
		public static const INVIS = "invis";
		public static const WAREHOUSEPLATFORM = "warehouseplatform";
		public static const WAREHOUSEWALL = "warehousewall";
		public static const PUSHER = "pusher";
		public var platformTimer : Timer, WallTimer : Timer;
		public var newBlock;
		public var yourlevel:int;

		private var type:String;
		private var Blocks:Array;

		public function PlatformScape(ty:String) 
		{
			type = ty;
			Blocks = new Array();
			platformTimer = new Timer(50);
			WallTimer = new Timer(50);
			
		}
		
		public function getLevel(thelvl:int) :int
		{
			yourlevel = thelvl;
			return yourlevel;
		}
		
		public function addRun(xx:int, yy:int, n:int,xspd:int,yspd:int,spdlimit:int) :void
		{ // only works with width == 40
			for(var i = 0; i < n; i++)
			{
				addBlock(i*40 + xx, yy,xspd,yspd,spdlimit);
			}
			platformTimer.addEventListener(TimerEvent.TIMER,PlatMove)
			platformTimer.start();
		}
		
		public function addWall(xx:int, yy:int, n:int,xspd:int,yspd:int,spdlimit:int) : void
		{
			for(var i = 0; i < n; i++)
				addBlock(xx, -i*40 + yy,xspd,yspd,spdlimit);
			WallTimer.addEventListener(TimerEvent.TIMER,WallMove)
			WallTimer.start();
		}
		
		public function addBlock(xx:int, yy:int,xspd:int,yspd:int,spdlimit:int) : void
		{
			
			
			switch(type)
			{
				case PLATFORM:
				newBlock = new PlatformBlock();
				break;
				case WALL:
				newBlock = new Wall();
				break;
				case PUSHER:
				newBlock = new Pusher();
				break;
				case WAREHOUSEPLATFORM:
				newBlock = new WarehousePlatformBlock();
				break;
				case WAREHOUSEWALL:
				newBlock = new WarehouseWall();
				break;
				
				
				case INVIS:
				default:
				trace("warning: invalid type");
				newBlock = new PlatformBlock();
			}
			newBlock.xspd = xspd;
			newBlock.yspd = yspd;
			newBlock.spdlimit = spdlimit;
			newBlock.origX = xx;
			newBlock.origY = yy;
			newBlock.x = xx;
			newBlock.y = yy;
			
			
			Blocks.push(newBlock);
		}
		
		public function getArray() : Array
		{
			return Blocks;
		}
		
		public function PlatMove(t:TimerEvent) :void
		{
			//Platform Movement //
		if(yourlevel < 11)
		{
		for each(var block:PlatformBlock in Blocks)
		{
			if(block.xspd != 0)
			{
				block.x += block.xspd*-1;
				if(block.x > block.origX - block.spdlimit)
				{
					block.xspd*= -1;
				}
				if(block.x < block.origX + block.spdlimit)
				{
					block.xspd*= -1;
				}
			}
			else if(block.yspd != 0)
			{
				block.y += block.yspd*-1;	
				if(block.y > block.origY - block.spdlimit)
					{
					block.yspd*= -1;
					}
				if(block.y < block.origY + block.spdlimit)
					{
					block.yspd*= -1;
					}
			}
		}
		}
		 else if(yourlevel > 10)
		{
		for each(var Wblock:WarehousePlatformBlock in Blocks)
		{
			if(Wblock.xspd != 0)
			{
				Wblock.x += Wblock.xspd*-1;
				if(Wblock.x > Wblock.origX - Wblock.spdlimit)
				{
					Wblock.xspd*= -1;
				}
				if(Wblock.x < Wblock.origX + Wblock.spdlimit)
				{
					Wblock.xspd*= -1;
				}
			}
			else if(Wblock.yspd != 0)
			{
				Wblock.y += Wblock.yspd*-1;	
				if(Wblock.y > Wblock.origY - Wblock.spdlimit)
					{
					Wblock.yspd*= -1;
					}
				if(Wblock.y < Wblock.origY + Wblock.spdlimit)
					{
					Wblock.yspd*= -1;
					}
			}
		}
		}
	}
		
		
		public function WallMove(t:TimerEvent) :void
		{
			
		// Wall Movement //
		if(yourlevel < 11)
		{
		for each(var wall:Wall in Blocks)
		{
			if(wall.xspd != 0)
			{
				wall.x += wall.xspd*-1;
				if(wall.x > wall.origX - wall.spdlimit)
				{
					wall.xspd*= -1;
				}
				if(wall.x < wall.origX + wall.spdlimit)
				{
					wall.xspd*= -1;
				}
			}
			else if(wall.yspd != 0)
			{
				wall.y += wall.yspd*-1;	
				if(wall.y > wall.origY - wall.spdlimit)
					{
					wall.yspd*= -1;
					}
				if(wall.y < wall.origY + wall.spdlimit)
					{
					wall.yspd*= -1;
					}
			}
		}
		}
	else if(yourlevel > 10)
	{
		for each(var Wwall:WarehouseWall in Blocks)
		{
			if(Wwall.xspd != 0)
			{
				Wwall.x += Wwall.xspd*-1;
				if(Wwall.x > Wwall.origX - Wwall.spdlimit)
				{
					Wwall.xspd*= -1;
				}
				if(Wwall.x < Wwall.origX + Wwall.spdlimit)
				{
					Wwall.xspd*= -1;
				}
			}
			else if(Wwall.yspd != 0)
			{
				Wwall.y += Wwall.yspd*-1;	
				if(Wwall.y > Wwall.origY - Wwall.spdlimit)
					{
					Wwall.yspd*= -1;
					}
				if(Wwall.y < Wwall.origY + Wwall.spdlimit)
					{
					Wwall.yspd*= -1;
					}
			}
		}
	}
	}
	}
}