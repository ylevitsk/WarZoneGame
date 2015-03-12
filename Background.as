package  {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.ui.Keyboard;
	import flash.events.Event;
	import flash.media.SoundChannel;
	
	public class Background extends MovieClip 
	{
		
		/*public var sfx:GunShot;
		public var sfxSoundChannel:SoundChannel;*/
		var platforms:Array, walls:Array, barriers:Array, enemies:Array, bullets:Array, AKDrops:Array,HealthDrops:Array,FolderDrops:Array, wareplats:Array, warewalls:Array, enemytroopers:Array, bosses:Array, bosses2:Array,bosses3:Array;
		var gameOver:Boolean, falling:Boolean, gameTimer:Timer, deadTimer:Timer, ex:enemyDeath;
		var fallspeed = 4, initspeed = 4;
		var score:Number;
		public var mcx,mcy:Number;
		var tim:Number;
		var MC:MainCharacter, door:Door, ps:PauseScreen;
		var Forest:ForestLevel, Warehouse : WarehouseLevel;
		var theHUD:HUD;
		private var okToShoot:Boolean = true;
		public var yourlevel:int;
		var target:targetReticule;
		var c1:Cutscene1;
		var c2:Cutscene2;
		var c3:Cutscene3;
		var c4:Cutscene4;
		var cutsceneTimer:Timer;
		var cutsceneTimer2:Timer
		var enemydeath:enemyDeath;
		var yourscore:int;
		
		public function Background(level:int, mc:MainCharacter, sc:int = 0, t0:Number = 0) 
		{
						
		cutsceneTimer = new Timer(5000, 1);
			
			
			yourlevel = level;
			var ls = new LevelSelector();
			var stuff = ls.selectLevel(level);
			ps = new PauseScreen(this);
			
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			score = sc;
			
			var Forest = new ForestLevel();
			var Warehouse = new WarehouseLevel();
	
			MC = mc;
			
			
			target = new targetReticule();
			target.x = mouseX;
			target.y = mouseY;
			addChild(target);
			Mouse.hide();
			
			deadTimer = new Timer (500,1)

			MC.x = 120;
			MC.y = 500; 
			MC.trueHeight = 100;
			falling = false;
			
			// does the level exist?
			if(stuff == null)
			{
				dispatchEvent(new GameEvent(GameEvent.GAME_OVER, false));
				return;
			}
			
			platforms = new Array();
			wareplats = new Array();
			warewalls = new Array();
			enemytroopers = new Array();
			walls = new Array();
			enemies = new Array();
			bullets = new Array();
			AKDrops = new Array();
			HealthDrops = new Array();
			FolderDrops = new Array();
			bosses = new Array();
			bosses2 = new Array();
			bosses3 = new Array ();
			
			// Load & add enemies, platforms & walls
				theHUD = new HUD(200,20);
			theHUD.scaleX = .75;
			theHUD.scaleY = theHUD.scaleX;
			MC.addEventListener(PlayerEvent.WEAPON_SWITCH, theHUD.switchwep);
			// walls go behind platforms
			if(level > 10 && level!=20 && level !=30)
			{
				addChild(Warehouse);
				addChild(MC);
				addChild(target);
				for each(var wallz:WarehouseWall in stuff[1])
					{
						addChild(wallz);
						warewalls.push(wallz);
					}

				for each(var platz:WarehousePlatformBlock in stuff[0])
					{
						addChild(platz);
						wareplats.push(platz);
					}
	
				for each(var enem2:EnemyTrooper in stuff[4])
					{
						addChild(enem2);
						enemytroopers.push(enem2);
					}
				for each(var enemz:EnemyGruntSoldier in stuff[2])
					{
						addChild(enemz);
						enemies.push(enemz);
					}
					addChild(theHUD);
			}
			else if (level == 10)
			{
				addChild(Forest);
				addChild(MC);
				addChild(target);
				for each(var bosswall:Wall in stuff[1])
					{
						addChild(bosswall);
						walls.push(bosswall);
					}
				
				for each(var bossplat:PlatformBlock in stuff[0])
					{
						addChild(bossplat);
						platforms.push(bossplat);
					}
				for each(var boss:Boss in stuff[4])
					{
						
						addChild(boss);
						gotoAndPlay("shoot");
						bosses.push(boss);
					}
			} else if (level == 30){
				addChild(Warehouse);
				addChild(MC);
				addChild(target);
					
				for each(var wallz2:WarehouseWall in stuff[1])
					{
						addChild(wallz2);
						warewalls.push(wallz2);
					}

				for each(var platz2:WarehousePlatformBlock in stuff[0])
					{
						addChild(platz2);
						wareplats.push(platz2);
					}
	
				for each(var boss2:Boss2 in stuff[4])
					{
						addChild(boss2);
						bosses2.push(boss2);
					}
					addChild(theHUD);
			}
			else if (level == 20){
				addChild(Warehouse);
				addChild(MC);
				addChild(target);
				door = stuff[3]
				addChild(door);
				
				
				for each(var wallz3:WarehouseWall in stuff[1])
					{
						addChild(wallz3);
						warewalls.push(wallz3);
					}

				for each(var platz3:WarehousePlatformBlock in stuff[0])
					{
						addChild(platz3);
						wareplats.push(platz3);
					}
					
				for each(var boss3:Boss3 in stuff[4])
					{
						addChild(boss3);
						boss3.y = -20;
						bosses3.push(boss3);
					}
					addChild(theHUD);
			
				
				
					
			
			}
			else
			{
				addChild(Forest);
				addChild(MC);
				addChild(target);
				for each(var wall:Wall in stuff[1])
					{
						addChild(wall);
						walls.push(wall);
					}
				
				for each(var plat:PlatformBlock in stuff[0])
					{
						addChild(plat);
						platforms.push(plat);
					}
				for each(var enem:EnemyGruntSoldier in stuff[2])
					{
						addChild(enem);
						enemies.push(enem);
					}
					addChild(theHUD);
			}
			
			// HUD stuff
		
			
			
			// init the weapon display
			var pe = new PlayerEvent(PlayerEvent.WEAPON_SWITCH);
			pe.setWeapon(MC.weapon.getType());
			MC.dispatchEvent(pe);
			
			
			
			// add the door
			if(level != 20)
			{
			door = stuff[3]
			addChild(door);
			}
			
			// setup the game timer (40 fps)
			gameTimer = new Timer(1000/40);
			tim =  t0;
			gameTimer.addEventListener(TimerEvent.TIMER, Move);
			gameTimer.start();
		}
		
		private function onAddedToStage(e:Event):void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, pauseScreen, false, 0, true);
		}
		
		public function moveBullets() : void
		{
			for each(var bull:Bullet in bullets)
			{
				bull.moveBullet();
				var exists = true;
				
				for each(var ene:EnemyGruntSoldier in enemies)
					if(bull.hitTestObject(ene) && exists)
					{
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						
						exists = false;
						ene.damage(bull.damage);
					}
				for each(var boss:Boss in bosses)
					if(PixelPerfectCollisionDetection.isColliding( bull, boss, this, true) && exists)
					{
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						
						exists = false;
						boss.damage(bull.damage);
					}
					
				for each(var boss2:Boss2 in bosses2)
				{
					if(PixelPerfectCollisionDetection.isColliding( bull, boss2, this, true) && exists)
					{
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						
						exists = false;
						boss2.damage(bull.damage);
					}
				}
				for each(var boss3:Boss3 in bosses3)
				{
					if(PixelPerfectCollisionDetection.isColliding( bull, boss3, this, true) && exists)
					{
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						
						exists = false;
						boss3.damage(bull.damage);
					}
				}
					
				for each(var troop:EnemyTrooper in enemytroopers)
					if(bull.hitTestObject(troop) && exists)
					{
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						
						exists = false;
						troop.damage(bull.damage);
					}
					
				for each(var wa:Wall in walls)
					if(bull.hitTestObject(wa) && exists)
					{
						exists = false;
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						score = score - 1
					}
				
				for each(var pl:PlatformBlock in platforms)
					if(bull.hitTestObject(pl) && exists)
					{
						exists = false;
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						score = score - 1
					}
				for each(var WA:WarehouseWall in warewalls)
					if(bull.hitTestObject(WA) && exists)
					{
						exists = false;
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						score = score - 1
					}
				
				for each(var PL:WarehousePlatformBlock in wareplats)
					if(bull.hitTestObject(PL) && exists)
					{
						exists = false;
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						score = score - 1
					}
					
					if(bull.y < 0 || bull.y > stage.stageHeight || bull.x > stage.stageWidth || bull.x < 0)////////////////////this whole if/////////////////////////
					{
						exists = false; 
						bullets.splice(bullets.indexOf(bull),1);
						removeChild(bull);
						score -= 1; 
					}
					if(score < -100)
						score = Number.MAX_VALUE;
				
			}
				
			// check collision
		}
		
		public function checkItems()
		{
			for each (var item:AKAmPack in AKDrops)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC, item, this, true))
				{
					for each(var gun:Gun in MC.arsenal)
					{
						if(gun.getType() == "AK47")
						{
							if(gun.getAmmo() < .9)
							gun.addAmmo(.1);
							else
							{
								gun.addAmmo(1 - gun.getAmmo ());
							}
							
							removeChild(item);
							AKDrops.splice(AKDrops.indexOf(item),1);
						
							
						}
					}
				}
			}
			for each (var itema:medkit in HealthDrops)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC, itema, this, true))
				{
							MC.Health += 25;
							if(MC.Health > 100) 
								MC.Health = 100;
							removeChild(itema);
							HealthDrops.splice(HealthDrops.indexOf(itema),1);
				}
			}
			for each (var itemk:Folders in FolderDrops)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC, itemk, this, true))
				{
							score += 15;
							removeChild(itemk);
							HealthDrops.splice(HealthDrops.indexOf(itemk),1);
				}
			}
		}
		
		public function checkGrunts()
		{
			for each(var grunts:EnemyGruntSoldier in enemies)
				if(grunts.dead)
					{if (MC.Health == 100){
						if(Math.random() < .4)
						{
							var AKAMMO:AKAmPack = new AKAmPack;
							addChild(AKAMMO);
							AKAMMO.x = grunts.x;
							AKAMMO.y = grunts.y;
							AKDrops.push(AKAMMO);
						}else if (Math.random() < .9){
							var docum:Folders = new Folders;
							docum.x = grunts.x;
							docum.y = grunts.y;
							FolderDrops.push(docum);
							addChild(docum);
							}
						
					}else if (MC.Health > 80){
							
						if(Math.random() < .3)
						{
							var AKAMMO1:AKAmPack = new AKAmPack;
							addChild(AKAMMO1);
							AKAMMO1.x = grunts.x;
							AKAMMO1.y = grunts.y;
							AKDrops.push(AKAMMO1);
						}
						 else if(Math.random() < .1)
						{
							var beefer1:medkit = new medkit;
							addChild(beefer1);
							beefer1.x = grunts.x+55;
							beefer1.y = grunts.y;
							HealthDrops.push(beefer1);
						}
						else if(Math.random() < .5)
						
						{
							var docum1:Folders = new Folders;
							docum1.x = grunts.x;
							docum1.y = grunts.y;
							FolderDrops.push(docum1);
							addChild(docum1);
						}
					}else if (MC.Health < 20){
						 if(Math.random() < .6)
						{
							var beefer2:medkit = new medkit;
							addChild(beefer2);
							beefer2.x = grunts.x+55;
							beefer2.y = grunts.y;
							HealthDrops.push(beefer2);
						}
					}else if (MC.Health > 20){
						if(Math.random() < .2)
						{
							var AKAMMO3:AKAmPack = new AKAmPack;
							addChild(AKAMMO3);
							AKAMMO3.x = grunts.x;
							AKAMMO3.y = grunts.y;
							AKDrops.push(AKAMMO3);
						}
						 else if(Math.random() < .4)
						{
							var beefer3:medkit = new medkit;
							addChild(beefer3);
							beefer3.x = grunts.x+55;
							beefer3.y = grunts.y;
							HealthDrops.push(beefer3);
						}else if(Math.random() < .1)
						
						{
							var docum3:Folders = new Folders;
							docum3.x = grunts.x;
							docum3.y = grunts.y;
							FolderDrops.push(docum3);
							addChild(docum3);
						}
					}
												
						score = score + 5;
						enemydeath = new enemyDeath();
						addChild(enemydeath);
						enemydeath.x = grunts.x;
						enemydeath.y = grunts.y + 50;
						deadTimer.start();
						deadTimer.addEventListener(TimerEvent.TIMER_COMPLETE, deadDone);
						removeChild(grunts);
						
						enemies.splice(enemies.indexOf(grunts),1);
					}
				else if(PixelPerfectCollisionDetection.isColliding(MC, grunts, this, true))
				{
					MC.Health -= .25;
					if(MC.Health <= 0)
						{
						
							gameTimer.stop()
							dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
						}
				}
				for each(var troopz:EnemyTrooper in enemytroopers)
			{
			troopz.setMCPos(mcx, mcy);
			
				if(troopz.dead)
					{
						if (MC.Health == 100){
						if(Math.random() < .4)
						{
							var AKAMMOz:AKAmPack = new AKAmPack;
							addChild(AKAMMOz);
							AKAMMOz.x = troopz.x;
							AKAMMOz.y = troopz.y;
							AKDrops.push(AKAMMOz);
						}else if (Math.random() < .9){
							var documz:Folders = new Folders;
							documz.x = troopz.x;
							documz.y = troopz.y;
							FolderDrops.push(documz);
							addChild(documz);
							}
						
					}else if (MC.Health > 80){
							
						if(Math.random() < .3)
						{
							var AKAMMOz1:AKAmPack = new AKAmPack;
							addChild(AKAMMO1);
							AKAMMOz1.x = troopz.x;
							AKAMMOz1.y = troopz.y;
							AKDrops.push(AKAMMOz1);
						}
						 else if(Math.random() < .1)
						{
							var beeferz1:medkit = new medkit;
							addChild(beeferz1);
							beeferz1.x = troopz.x+55;
							beeferz1.y = troopz.y;
							HealthDrops.push(beeferz1);
						}
						else if(Math.random() < .5)
						
						{
							var documz1:Folders = new Folders;
							docum1.x = troopz.x;
							docum1.y = troopz.y;
							FolderDrops.push(documz1);
							addChild(documz1);
						}
					}else if (MC.Health < 20){
						 if(Math.random() < .6)
						{
							var beeferz2:medkit = new medkit;
							addChild(beeferz2);
							beeferz2.x = troopz.x+55;
							beeferz2.y = troopz.y;
							HealthDrops.push(beeferz2);
						}
					}else if (MC.Health > 20){
						if(Math.random() < .2)
						{
							var AKAMMOz3:AKAmPack = new AKAmPack;
							addChild(AKAMMOz3);
							AKAMMOz3.x = troopz.x;
							AKAMMOz3.y = troopz.y;
							AKDrops.push(AKAMMOz3);
						}
						 else if(Math.random() < .4)
						{
							var beeferz3:medkit = new medkit;
							addChild(beeferz3);
							beeferz3.x = troopz.x+55;
							beeferz3.y = troopz.y;
							HealthDrops.push(beeferz3);
						}else if(Math.random() < .1)
						
						{
							var documz3:Folders = new Folders;
							documz3.x = troopz.x;
							documz3.y = troopz.y;
							FolderDrops.push(documz3);
							addChild(documz3);
						}
					}
												
						score = score + 10;
						enemydeath = new enemyDeath();
						addChild(enemydeath);
						enemydeath.x = troopz.x;
						enemydeath.y = troopz.y + 50;
						deadTimer.start();
						deadTimer.addEventListener(TimerEvent.TIMER_COMPLETE, deadDone);

						

						removeChild(troopz);
						enemytroopers.splice(enemytroopers.indexOf(troopz),1);
						
					}
				else if(PixelPerfectCollisionDetection.isColliding(MC,troopz,this,true))
				{
					MC.Health -= .5;
					if(MC.Health <= 0)
						{
							
							gameTimer.stop()
							
							dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
						}
				}
			}
				if (yourlevel == 10){
				for each(var boss:Boss in bosses)

				if(boss.dead)
					{
						if(Math.random() < .6)
						{
						var instantAKAMMO:AKAmPack = new AKAmPack;
						var documento: Folders = new Folders;
						var beefie:medkit = new medkit;
						addChild(instantAKAMMO);
						addChild(documento);
						addChild(beefie);
						beefie.x = boss.x + 3;
						beefie.y = boss.y;
						documento.x = boss.x + 5;
						documento.y = boss.y;
						instantAKAMMO.x = boss.x;
						instantAKAMMO.y = boss.y;
						AKDrops.push(instantAKAMMO);
						FolderDrops.push(documento);
						HealthDrops.push(beefie);

						}
												
						score = score + 50;

						removeChild(boss);
						bosses.splice(bosses.indexOf(boss),1);
						
						
						c1 = new Cutscene1;
						addChild(c1)
						c1.x = 0;
						c1.y = 0;
						
						cutsceneTimer.start();
						gameTimer.stop();
						
						cutsceneTimer.addEventListener(TimerEvent.TIMER_COMPLETE, cutscenedone)
						
					}
				else if(PixelPerfectCollisionDetection.isColliding(MC,boss,this,true))
				{
					MC.Health -= 2.5;
					if(MC.Health <= 0)
						{
							
							gameTimer.stop()
							
							
							dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
						}
				}
				}


else if (yourlevel == 20){
			for each(var boss3:Boss3 in bosses3)

				if(boss3.dead)
					{
						if(Math.random() < .99)
						{
						var instantAKAMMO2:AKAmPack = new AKAmPack;
						var documento2: Folders = new Folders;
						var beefie2:medkit = new medkit;
						addChild(instantAKAMMO2);
						addChild(documento2);
						addChild(beefie2);
						beefie2.x = boss3.x + 713;
						beefie2.y = boss3.y +400;
						documento2.x = boss3.x +755;
						documento2.y = boss3.y +400;
						instantAKAMMO2.x = boss3.x +790;
						instantAKAMMO2.y = boss3.y +400;
						AKDrops.push(instantAKAMMO2);
						FolderDrops.push(documento2);
						HealthDrops.push(beefie2);

						}
												
						score = score + 150;
						
						c2 = new Cutscene2();
						addChild(c2);
						c2.x = 0;
						c2.y = 0;
						cutsceneTimer.start();
						cutsceneTimer.addEventListener(TimerEvent.TIMER_COMPLETE, cutscene2done)
						gameTimer.stop();
						


						removeChild(boss3);
						bosses3.splice(bosses3.indexOf(boss3),1);
						
					}
				else if(PixelPerfectCollisionDetection.isColliding(MC,boss3,this,true))
				{
					MC.Health -= 1.5;
					if(MC.Health <= 0)
						{
							
							gameTimer.stop()
							
							dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
						}
				}
					
				}
			else if (yourlevel == 30){
					for each(var boss2:Boss2 in bosses2)

				if(boss2.dead)
					{
												
						score = score + 150;
						
						c3 = new Cutscene3;
						addChild(c3)
						c3.x = 0;
						c3.y = 0;
						
						cutsceneTimer.start();
						gameTimer.stop();
						cutsceneTimer.addEventListener(TimerEvent.TIMER_COMPLETE, cutscene3done)

						removeChild(boss2);
						bosses2.splice(bosses2.indexOf(boss2),1);
						
					}
				else if(PixelPerfectCollisionDetection.isColliding(MC,boss2,this,true))
				{
					MC.Health -= 3.5;
					if(MC.Health <= 0)
						{
							
							gameTimer.stop()
							
							dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
						}
				}
					
				}

				
		}
		
		public function checkMCWalls()
		{
			for each(var wa:Wall in walls)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC,wa,this,true))
				{
					MC.x -= MC.lastmove;
				}
				
			}
			for each(var WA:WarehouseWall in warewalls)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC,WA,this,true))
				{
					MC.x -= MC.lastmove;
				}
				
			}
		}
		
		public function deadDone(t:TimerEvent):void{
			removeChild(enemydeath);
			enemydeath = null;
			deadTimer.reset();
			deadTimer.stop();
		}
		
		public function checkMouse(){
			if (mouseX > MC.x){
				MC.scaleX = 1
			}else if(mouseX < MC.x){
				MC.scaleX = -1
			}
		}
		public function Move(t:TimerEvent) : void
		{
			
			target.x = mouseX;
			target.y = mouseY;
			mcx = MC.getMCPosX();
			mcy = MC.getMCPosY();
			MC.mov(mouseX,mouseY);
			moveBullets();
			checkGrunts();
			checkMCWalls();
			checkItems();
			ItemFall();
			checkFinish();
			updateHUD();
			checkMouse();
			removeChild(target);
			addChild(target);
			// gravity
			falling = checkChar();
			
			
	
			if(falling && !MC.isjumping)
			{
				MC.y += fallspeed;
								
				if (stage != null && MC.y > stage.stageHeight)
				{
					
					gameTimer.stop();
					
					dispatchEvent(new GameEvent(GameEvent.GAME_OVER));
				}
				
				
				
				if(fallspeed < 10)
					fallspeed *= 1.20;
				else
					fallspeed = initspeed;
			}
		}
		
		
		
		public function cutscenedone(t:TimerEvent):void{
			removeChild (c1);
			c1 = null;
			gameTimer.start();
			cutsceneTimer.removeEventListener(TimerEvent.TIMER_COMPLETE, cutscenedone)
		}
		public function cutscene2done(t:TimerEvent):void{
			removeChild (c2);
			c2 = null;
			gameTimer.start();
			cutsceneTimer.removeEventListener(TimerEvent.TIMER_COMPLETE, cutscene2done)
		}
		
		public function cutscene3done(t:TimerEvent):void{
			removeChild (c3);
			c3 = null;
			cutsceneTimer.removeEventListener(TimerEvent.TIMER_COMPLETE, cutscene3done)
			c4 = new Cutscene4();
			addChild(c4);
			c4.x = 0;
			c4.y = 0;
			yourscore = score;
			c4.setFinalScore(yourscore);
			gameTimer.removeEventListener(TimerEvent.TIMER, Move);
		}
		// Check if the character is falling
		
		
		public function checkChar():Boolean
		{
			for each(var plat:PlatformBlock in platforms)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC, plat, this, true) && MC.y + MC.height <= plat.y + 16)
				{					
					if(plat.yspd > 0)
					{
					MC.y = plat.y - MC.height + 1 + plat.xspd + plat.yspd;
					}
					else
					{
					MC.y = plat.y - MC.height + 1 - plat.xspd - plat.yspd;
					}
					return false;
				}
			}
			for each(var plats:WarehousePlatformBlock in wareplats)
			{
				if(PixelPerfectCollisionDetection.isColliding(MC, plats, this, true) && MC.y + MC.height <= plats.y + 16)
				{					
					if(plats.yspd > 0)
					{
					MC.y = plats.y - MC.height + 1 + plats.xspd + plats.yspd;
					}
					else
					{
					MC.y = plats.y - MC.height + 1 - plats.xspd - plats.yspd;
					}
					return false;
				}
			}
			return true;
		}
		// Check if finished
		public function checkFinish()
		{
			if(MC.hitTestObject(door))
			{
				gameTimer.stop();
				dispatchEvent(new GameEvent(GameEvent.LEVEL_CHANGE, true, MC, score, tim + gameTimer.currentCount));
			}
			
		}
		
		public function updateHUD():void{
			theHUD.setValues(MC.Health/100, MC.weapon.getAmmo(), MC.weapon.getCost(),score);			
		}
		
		public function handleKeys(q:KeyboardEvent):void
		{
			MC.handleKeys(q);
		}
		 
		public function clik(m:MouseEvent):void
		{
			var b:Bullet = MC.weapon.shoot(mouseX,mouseY);
			if(okToShoot && b!=null && gameTimer.currentCount > 1)
			{
			bullets.push(b);
			addChild(b);
			/*sfx = new GunShot();
			sfxSoundChannel = sfx.play();*/
			}
			okToShoot = true;
			stage.focus = stage;
			
		}		
		public function pauseScreen(keyboardEvent:KeyboardEvent):void
		{
			if (keyboardEvent.keyCode == Keyboard.ESCAPE)
			{
				gameTimer.stop();
				stage.removeEventListener(MouseEvent.CLICK, clik);
				addChild(ps);
				Mouse.show();
			}
		}
		
		public function resumeGame()
		{
			removeChild(ps);
			gameTimer.start();
			okToShoot = false;
			stage.addEventListener(MouseEvent.CLICK, clik);
			stage.focus = this;
			Mouse.hide();
		}
				
		public function ItemFall()
			{
			
				for each(var plat:PlatformBlock in platforms)
				{
					for each(var item:AKAmPack in AKDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(item,plat, this, true))
						{
						item.y = plat.y - item.height;
						}
						else
						{
						item.y += .1;
						}
					}
					for each(var itema:medkit in HealthDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(itema,plat, this, true))
						{
						itema.y = plat.y - itema.height;
						}
						else
						{
						itema.y += .1;
						}
					}
					for each(var itemg:Folders in FolderDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(itemg,plat, this, true))
						{
						itemg.y = plat.y - itemg.height;
						}
						else
						{
						itemg.y += .1;
						}
					}
				}
				for each(var platse:WarehousePlatformBlock in wareplats)
				{
					
					for each(var itemo:AKAmPack in AKDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(itemo,platse, this, true))
						{
						itemo.y = platse.y - itemo.height;
						
						}
						else
						{
						itemo.y += .1;
						}
					}
					for each(var itemao:medkit in HealthDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(itemao,platse, this, true))
						{
						itemao.y = platse.y - itemao.height;
						}
						else
						{
						itemao.y += .1;
						}
					}
					for each(var itemgo:Folders in FolderDrops)
					{
						if(PixelPerfectCollisionDetection.isColliding(itemgo,platse, this, true))
						{
						itemgo.y = platse.y - itemgo.height;
						}
						else
						{
						itemgo.y += .1;
						}
					}
				}
			}

	}
	
}

	
