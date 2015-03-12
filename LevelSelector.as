package  {
	
	public class LevelSelector {

		public function LevelSelector() 
		{
			
			}
		
		public function selectLevel(level:int) : Array
		{
			switch(level)
			{
				case 1:
					return loadLevel1();
				break;
				case 2:
					return loadLevel2();
				break;
				case 3:
					return loadLevel3();
				break;
				case 4:
					return loadLevel4();
				break;
				case 5:
					return loadLevel5();
				break;
				case 6:
					return loadLevel6();
				break;
				case 7:
					return loadLevel7();
				break;
				case 8:
					return loadLevel8();
				break;
				case 9:
					return loadLevel9();
				break;
				case 10:
					return loadLevel10();
				break;
				case 11:
					return loadLevel11();
				break;
				case 12:
					return loadLevel12();
				break;
				case 13:
					return loadLevel13();
				break;
				case 14:
					return loadLevel14();
				break;
				case 15:
					return loadLevel15();
				break;
				case 16:
					return loadLevel16();
				break;
				case 17:
					return loadLevel17();
				break;
				case 18:
					return loadLevel18();
				break;
				case 19:
					return loadLevel19();
				break;
				case 20:
					return loadLevel20();
				break;
				case 21:
					return loadLevel21();
				break;
				case 22:
					return loadLevel22();
				break;
				case 23:
					return loadLevel23();
				break;
				case 24:
					return loadLevel24();
				break;
				case 25:
					return loadLevel25();
				break;
				case 26:
					return loadLevel26();
				break;
				case 27:
					return loadLevel27();
				break;
				case 28:
					return loadLevel28();
				break;
				case 29:
					return loadLevel29();
				break;
				case 30:
					return loadLevel30();
				break;
			}
			
			return null;
		}
		
		public function loadLevel1() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 15,0,0,0);
				Plats.addRun(300,560, 4,0,0,0);
				Plats.addRun( 60,480, 3,0,0,0);
				Plats.addRun(280,370, 3,0,0,0);
				Plats.addRun(540,290, 7,0,0,0);				
				Plats.addRun(780,450, 4,0,0,0);
				Plats.addRun(600,680,9,0,0,0);				
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17,0,0,0);
				Walls.addWall(540, 690, 10,0,0,0);
				Walls.addWall(980, 680, 18,0,0,0);
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(580, 190,560,830));
							
			lvl.push(Enem);
			
			lvl.push(new Door(800,617));
			
			return lvl;
		}
				
		public function loadLevel2() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 7, 0, 0, 0);
				Plats.addRun(220,560, 2, 0 ,0 , 0);
				Plats.addRun( 60,440, 2, 0 ,0 , 0);
				Plats.addRun(220,320, 2, 0 ,0, 0);
				Plats.addRun(60,200, 5, 0 ,0, 0);
				Plats.addRun(350,380, 3, 0 ,0, 0);
				Plats.addRun(880,480, 2, 0 ,2, 40);
				Plats.addRun(700,600,4, 0 ,0, 0);
				Plats.addRun(800,355, 2, 0 ,0, 0);
				Plats.addRun(700,270, 2, 0 ,1, 40);
				Plats.addRun(830,165, 4, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(300, 690, 10, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(360, 280,360,500));
				Enem.push(new EnemyGruntSoldier(80, 100,80,280));
				Enem.push(new EnemyGruntSoldier(700, 500,720,880));
						
			
			lvl.push(Enem);
			
			lvl.push(new Door(900,100));
			
			return lvl;
		}
		
		public function loadLevel3() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  40,680, 7, 0 ,0, 0);
				Plats.addRun(200,560, 4, 0 ,0, 0);
				Plats.addRun( 60,480, 3, 0 ,0, 0);
				Plats.addRun(300,370, 6, 0 ,0, 0);
				Plats.addRun(300,650, 5, 0 ,0, 0);
				Plats.addRun(600,650, 3, 0 ,0, 0);
				Plats.addRun(700,680, 4, 0 ,0, 0);
				Plats.addRun(740,500, 4, 0 ,0, 0);
				Plats.addRun(340,170,15, 0 ,0, 0);
				Plats.addRun(820,300, 4, 0 ,0, 0);
				Plats.addRun(60,300, 6, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(540, 690, 8, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				Walls.addWall(200, 630, 2, -3 ,0, 200);

				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(300, 460,215,370));
				Enem.push(new EnemyGruntSoldier(400, 270,310,550));
				Enem.push(new EnemyGruntSoldier(80,  200,80,320));
				Enem.push(new EnemyGruntSoldier(400, 70,380,900));
						
			lvl.push(Enem);
			
			lvl.push(new Door(800,617));
			
			return lvl;
		}
		
		public function loadLevel4() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 7, 0 ,0, 0);
				Plats.addRun(220,560, 2, 0 ,0, 0);
				Plats.addRun( 60,440, 2, 0 ,0, 0);
				Plats.addRun(220,350, 2, 0 ,0, 0);
				Plats.addRun(60,230, 2, 0 ,3, 100);
				Plats.addRun(260,130, 6, 0 ,0, 0);
				Plats.addRun(720,680, 6, 0 ,0, 0);
				Plats.addRun(780,100,5, 0 ,0, 0);
				Plats.addRun(650,210, 3, 0 ,3, 120);
				Plats.addRun(350,400, 4, 0 ,0, 0);
				Plats.addRun(600,500, 4, 0 ,0, 0);
				Plats.addRun(780,350, 4, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(300, 690, 14, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				Walls.addWall(600, 430, 2, -7 ,0, 100);
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(250, 250,230,325));
				Enem.push(new EnemyGruntSoldier(260, 30,280,520));
				Enem.push(new EnemyGruntSoldier(800, 0,800,990));
				Enem.push(new EnemyGruntSoldier(400, 300,370,530));
				Enem.push(new EnemyGruntSoldier(800, 250,800,950));
				
			
			lvl.push(Enem);
			
			lvl.push(new Door(800,617));
			
			return lvl;
		}
		public function loadLevel5() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 27, 0 ,0, 0);
				Plats.addRun(860,560, 3, 0 ,0, 0);
				Plats.addRun( 720,490, 2, 0 ,5, 100);
				Plats.addRun(860,390, 3, 0 ,0, 0);
				Plats.addRun(600,350, 5, 0 ,0, 0);
				Plats.addRun(450,450, 2, 0 ,0, 0);
				Plats.addRun(300,500, 2, 0 ,-1, 25);
				Plats.addRun(70,400,4, 0 ,0, 0);
				Plats.addRun(300,300, 2, 0 ,2, 100);
				Plats.addRun(400,200, 6, 0 ,0, 0);
				Plats.addRun(70,142, 4, 0 ,0, 0);
				Plats.addRun(700,150,2, 0 ,0, 0);
				Plats.addRun(855,100, 3, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(500, 580,70,1000));
				Enem.push(new EnemyGruntSoldier(900, 460,850,1000));
				Enem.push(new EnemyGruntSoldier(620,  250,610,830));
				Enem.push(new EnemyGruntSoldier(80, 300,80,250));				
				Enem.push(new EnemyGruntSoldier(500,  100,420,650));
				Enem.push(new EnemyGruntSoldier(900, 0,870,1000));
				
			
			lvl.push(Enem);
			
			lvl.push(new Door(100,80));
			
			return lvl;
		}
				
		public function loadLevel6() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 7, 0 ,0, 0);
				Plats.addRun(300,560, 4, 0 ,0, 0);
				Plats.addRun( 40,480, 3, 0 ,0, 0);
				Plats.addRun(280,370, 7, 0 ,0, 0);
				Plats.addRun(540,300, 8, 0 ,0, 0);
				Plats.addRun(660,680,9, 0 ,0, 0);
				Plats.addRun(740,480, 6, 0 ,0, 0);
				Plats.addRun(560,120,11, 0 ,0, 0);
				Plats.addRun( 20,200, 9, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(540, 690, 10, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				
			lvl.push(Walls.getArray());
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(100,380,40,150));
				Enem.push(new EnemyGruntSoldier(400,460,270,450));
				Enem.push(new EnemyGruntSoldier(400,270,250,530));
				Enem.push(new EnemyGruntSoldier(300,100,30,400));
				Enem.push(new EnemyGruntSoldier(800,380,730,970));
				Enem.push(new EnemyGruntSoldier(760,200,500,830));
				Enem.push(new EnemyGruntSoldier(600,20,540,970));
			
			lvl.push(Enem);
			
			
			lvl.push(new Door(910,617));
			return lvl;
		}
		
		public function loadLevel7() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 27, 0 ,0, 0);
				Plats.addRun(700,560, 2, 0 ,0, 0);
				Plats.addRun( 850,450, 2, 0 ,0, 0);
				Plats.addRun(800,330, 2, 0 ,0, 0);
				Plats.addRun(900,200, 2, 0 ,0, 0);
				Plats.addRun(260,100,13, 0 ,0, 0);
				Plats.addRun(60,250, 4, 0 ,0, 0);
				Plats.addRun(200,400,3, 0 ,0, 0);
				Plats.addRun(60,500, 2, 0 ,0, 0);
				Plats.addRun(420,350,3, 0 ,0, 0);
				Plats.addRun(600,260, 4, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(750, 300,5, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(800, 580,70,1000));
				Enem.push(new EnemyGruntSoldier(600, 580,70,1000));
				Enem.push(new EnemyGruntSoldier(800, 230,800,900));
				Enem.push(new EnemyGruntSoldier(400, 0,280,810));
				Enem.push(new EnemyGruntSoldier(550, 0,280,810));
				Enem.push(new EnemyGruntSoldier(750, 0,280,810));
				Enem.push(new EnemyGruntSoldier(90,  400,70,170));
				Enem.push(new EnemyGruntSoldier(450, 250,440,560));
							
			lvl.push(Enem);
			
			lvl.push(new Door(680,198));
			
			return lvl;
		}
		
		public function loadLevel8() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 27, 0 ,0, 0);
				Plats.addRun(330,560, 3, 0 ,0, 0);
				Plats.addRun(550,560, 3, 0 ,0, 0);
				Plats.addRun(800,560, 3, 0 ,0, 0);
				Plats.addRun(60,500, 3, 0 ,3, 100);
				Plats.addRun(200,430, 3, 0 ,0, 0);
				Plats.addRun(450,430, 3, 0 ,0, 0);
				Plats.addRun(700,430,3, 0 ,0, 0);
				Plats.addRun(860,360, 3, 0 ,0, 0);
				Plats.addRun(570,300, 3, 0 ,0, 0);
				Plats.addRun( 300,300, 3, 0 ,0, 0);
				Plats.addRun(200,200, 3, 0 ,0, 0);
				Plats.addRun(700,200, 3, 0 ,0, 0);
				Plats.addRun(420,112, 5, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(400, 460,340,460));
				Enem.push(new EnemyGruntSoldier(600, 460,560,680));
				Enem.push(new EnemyGruntSoldier(850, 460,800,940));
				Enem.push(new EnemyGruntSoldier(300, 330,220,340));
				Enem.push(new EnemyGruntSoldier(500, 330,460,580));
				Enem.push(new EnemyGruntSoldier(750, 330,720,840));
				Enem.push(new EnemyGruntSoldier(230, 100,220,330));
				Enem.push(new EnemyGruntSoldier(700, 100,720,830));
				Enem.push(new EnemyGruntSoldier(450, 12,430,630));				
			
			lvl.push(Enem);
			
			lvl.push(new Door(500,50));
			
			return lvl;
		}
		public function loadLevel9() : Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			
			// add platforms
				Plats.addRun(  0,680, 7, 0 ,0, 0);
				Plats.addRun( 200,560, 4, 0 ,0, 0);
				Plats.addRun( 500,600, 5, 0 ,0, 0);
				Plats.addRun(400,450, 4, 0 ,0, 0);
				Plats.addRun(60,350, 5, 0 ,0, 0);
				Plats.addRun(60,100, 4, 0 ,0, 0);
				Plats.addRun(340,200,5, 0 ,0, 0);
				Plats.addRun(400,300, 6, 0 ,0, 0);
				Plats.addRun(457,112, 6, 0 ,0, 0);
				Plats.addRun(900,200, 2, 0 ,0, 0);
				Plats.addRun(800,400, 2, 0 ,0, 0);
				Plats.addRun(740,680, 4, 0 ,0, 0);
				
			lvl.push(Plats.getArray());
			
			// add Walls
				Walls.addWall(20, 660, 17, 0 ,0, 0);
				Walls.addWall(700, 690, 15, 0 ,0, 0);
				Walls.addWall(980, 680, 18, 0 ,0, 0);
				Walls.addWall(860, 500, 2,3,0, 100);
				
			lvl.push(Walls.getArray());
			
			
			// add Enemies
				Enem.push(new EnemyGruntSoldier(250, 460,210,380));
				Enem.push(new EnemyGruntSoldier(550, 500,510,710));
				Enem.push(new EnemyGruntSoldier(450, 350,410,580));
				Enem.push(new EnemyGruntSoldier(70, 250,70,275));
				Enem.push(new EnemyGruntSoldier(420, 200,420,650));
				Enem.push(new EnemyGruntSoldier(340, 100,350,550));				
				Enem.push(new EnemyGruntSoldier(80, 0,80,240));
				Enem.push(new EnemyGruntSoldier(500, 12,490,710));
				Enem.push(new EnemyGruntSoldier(900, 100,900,1000));
				Enem.push(new EnemyGruntSoldier(830, 300,820,820));
				
			
			lvl.push(Enem);
			
			lvl.push(new Door(760,617));
			
			return lvl;
		}
		
		public function loadLevel10() : Array 
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.PLATFORM);
			var Walls = new PlatformScape(PlatformScape.WALL);
			var Enem = new Array();
			var boss = new Array();
			
			Plats.addRun(0,660,11, 0 ,0, 0);
			Plats.addRun(120,540,5, 0 ,0, 0);
			Plats.addRun(800,660,5, 0 ,0, 0);
			Plats.addRun(320,420,7, 0 ,0, 0);
			Plats.addRun(0,300,6, 0 ,0, 0);
			
			lvl.push(Plats.getArray());
			
			Walls.addWall(20,660,17, 0 ,0, 0);
			Walls.addWall(980,660,17, 0 ,0, 0);
			
			lvl.push(Walls.getArray());
			
			boss.push(new Boss(800,260));
			
			lvl.push(Enem);	
			lvl.push(new Door(900,597));
			lvl.push(boss);
			
			return lvl;
		}
		
		//Warehouse Levels
		public function loadLevel11() : Array
		{
		
		var lvl = new Array();
		var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
		var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
		var Enem = new Array();
		var Enemtroop = new Array();
		
		// add platforms
		Plats.getLevel(11);
		Plats.addRun(  0,680, 9, 0 ,0, 0);
		Plats.addRun(580,680,10, 0 ,0, 0);
		Plats.addRun(200,560, 7, 0 ,0, 0);
		Plats.addRun(780,560, 5, 0 ,0, 0);
		Plats.addRun(600,460, 3, 5 ,0, 150);
		Plats.addRun(320,380, 8, 0 ,0, 0);
		Plats.addRun(620,260, 9, 0 ,0, 0);
		Plats.addRun(560,130, 6, 0 ,0, 0);
		Plats.addRun( 20,120, 9, 0 ,0, 0);
		
		lvl.push(Plats.getArray());
		
		// add Walls
		
		Walls.getLevel(11);
		Walls.addWall(20, 660, 17, 0 ,0, 0);
		Walls.addWall(600, 460, 2, 0 ,0, 0);
		Walls.addWall(980, 680, 18, 0 ,0, 0);
		
		lvl.push(Walls.getArray());
		
		// add Enemies
		Enemtroop.push(new EnemyTrooper(800,580,600,970));
		Enemtroop.push(new EnemyTrooper(400,460,220,500));
		Enemtroop.push(new EnemyTrooper(850,460,790,990));
		Enemtroop.push(new EnemyTrooper(460,280,340,660));
		Enemtroop.push(new EnemyTrooper(840,160,640,990));
		Enemtroop.push(new EnemyTrooper(300, 20,200,400));
		Enemtroop.push(new EnemyTrooper(600, 30,580,820));
		
		lvl.push(Enem);	
		lvl.push(new Door(80,57));
		lvl.push(Enemtroop);
		return lvl;
		}

		public function loadLevel12():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enem = new Array();
			var Enemtroop = new Array();
			Plats.getLevel(11);
			Walls.getLevel(11);

			// add platforms
			Plats.addRun(  0,680, 5, 0 ,0, 0);
			Plats.addRun(820,680, 4, 0 ,0, 0);
			Plats.addRun(400,600, 7, 0 ,0, 0);
			Plats.addRun(  0,560, 3, 0 ,0, 0);
			Plats.addRun(860,560, 3, 0 ,0, 0);//5
			Plats.addRun(200,440, 2, 0 ,0, 0);//6
			Plats.addRun(760,440, 2, 0 ,0, 0);//7
			Plats.addRun(360,360, 3, 0 ,0, 0);//8
			Plats.addRun(640,360, 3, 0 ,0, 0);//9
			Plats.addRun(480,240, 4, 0 ,0, 0);//10
			Plats.addRun(180,140, 5, 0 ,0, 0);//11
			Plats.addRun(720,140, 5, 0 ,0, 0);//12

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(400, 680,  8, 0 ,0, 0);
			Walls.addWall(680, 680,  8, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(900,580,840,990));//1
			Enemtroop.push(new EnemyTrooper(920,460,880,990));//2
			Enemtroop.push(new EnemyTrooper(460,260,380,500));//3
			Enemtroop.push(new EnemyTrooper(690,260,660,780));//4
			Enemtroop.push(new EnemyTrooper(540,140,500,660));//5
			Enemtroop.push(new EnemyTrooper(250, 40,200,400));//6
			Enemtroop.push(new EnemyTrooper(800, 40,740,940));//7

			lvl.push(Enem);
			lvl.push(new Door(600,537));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel13():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enem = new Array();
			var Enemtroop = new Array();
			Plats.getLevel(11);
			Walls.getLevel(11);

			// add platforms
			Plats.addRun(  0,680, 5, 0 ,0, 0);
			Plats.addRun(280,680, 5, 0 ,0, 0);
			Plats.addRun(560,680, 5, 0 ,0, 0);
			Plats.addRun(860,680, 5, 0 ,0, 0);
			Plats.addRun(  0,560, 3, 0 ,0, 0);
			Plats.addRun(900,560, 3, 0 ,0, 0);
			Plats.addRun(200,440,15, 0 ,0, 0);
			Plats.addRun(100,320, 5, 0 ,0, 0);
			Plats.addRun(800,320, 3, 0 ,0, 0);
			Plats.addRun(460,240, 5, 0 ,0, 0);
			Plats.addRun(  0,140, 9, 0 ,0, 0);
			Plats.addRun(720,140, 8, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(320,580,300,500));//1
			Enemtroop.push(new EnemyTrooper(640,580,580,780));//2
			Enemtroop.push(new EnemyTrooper(360,340,220,820));//3
			Enemtroop.push(new EnemyTrooper(590,340,220,820));//4
			Enemtroop.push(new EnemyTrooper(440,340,220,820));//5
			Enemtroop.push(new EnemyTrooper(750,340,220,820));//6
			Enemtroop.push(new EnemyTrooper(540,140,500,660));//7
			Enemtroop.push(new EnemyTrooper(250, 40, 40,380));//8
			Enemtroop.push(new EnemyTrooper(800, 40,740,900));//9

			lvl.push(Enem);
			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel14():Array
		{

			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);

			// add platforms
			Plats.addRun(  0,680, 27, 0 ,0, 0);
			Plats.addRun(740,600, 3, 0 ,0, 0);
			Plats.addRun(400,550, 3, 0 ,0, 0);
			Plats.addRun(250,430, 3, 0 ,0, 0);
			Plats.addRun( 20,300, 10, 0 ,0, 0);
			Plats.addRun(580,200, 5, 0 ,0, 0);
			Plats.addRun(100,60,3, 0 ,0, 0);
			Plats.addRun(400,120, 3, 0 ,0, 0);
			Plats.addRun(850,80, 3, 0 ,0, 0);
			Plats.addRun(920,350, 2, 0 ,0, 0);
			
			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 700,600, 10, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);
			
			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(400,580,80,700));//1
			Enemtroop.push(new EnemyTrooper(80,200,80,400));//2
			Enemtroop.push(new EnemyTrooper(400,20,420,530));//3
			Enemtroop.push(new EnemyTrooper(900,-20,870,970));//4
			Enemtroop.push(new EnemyTrooper(900,250,950,950));//5

			lvl.push(Enem);


			lvl.push(new Door(760,539));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel15():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);

			// add platforms
			Plats.addRun(  0,680, 5, 0 ,0, 0);
			Plats.addRun(280,680, 5, 0 ,0, 0);
			Plats.addRun(560,680, 5, 0 ,0, 0);
			Plats.addRun(860,680, 5, 0 ,0, 0);
			Plats.addRun(200,560, 3, 0 ,0, 0);
			Plats.addRun(350,450, 3, 0 ,0, 0);
			Plats.addRun(470,340, 3, 0 ,0, 0);
			Plats.addRun(700,400, 5, 0 ,0, 0);
			Plats.addRun(750, 280, 3, 0 ,0, 0);
			Plats.addRun(600,200, 3, 0 ,0, 0);
			Plats.addRun(860,140, 3, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 320,560, 3, 0 ,0, 0);
			Walls.addWall( 460, 450, 3, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(320,580,300,500));//1
			Enemtroop.push(new EnemyTrooper(640,580,580,780));//2
			Enemtroop.push(new EnemyTrooper(800,300,730,920));//3
			Enemtroop.push(new EnemyTrooper(400,350,400,490));//4
			Enemtroop.push(new EnemyTrooper(300,460,250,340));//5
			Enemtroop.push(new EnemyTrooper(550,240,500,600));//6

			lvl.push(Enem);


			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel16():Array
		{
			
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 5, 0 ,0, 0);
			Plats.addRun(280,570, 13, 0 ,0, 0);
			Plats.addRun(860,680, 3, 0 ,0, 0);
			Plats.addRun(680,460, 3, 0 ,0, 0);
			Plats.addRun(860,350, 3, 0 ,0, 0);
			Plats.addRun(680,250,3, 0 ,0, 0);
			Plats.addRun(200,200, 10, 0 ,0, 0);
			Plats.addRun(  50,140, 3, 0 ,0, 0);
			
			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(520,470,330,800));//1
			Enemtroop.push(new EnemyTrooper(900,580,880,980));//2
			Enemtroop.push(new EnemyTrooper(500,100,220,600));//3
			Enemtroop.push(new EnemyTrooper(300,100,220,600));//4
			Enemtroop.push(new EnemyTrooper(750,150,720,810));//5

			lvl.push(Enem);

			lvl.push(new Door(90,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel17():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680,15, 0 ,0, 0);
			Plats.addRun(800,680, 5, 0 ,0, 0);
			Plats.addRun(30,550, 3, 0 ,0, 0);
			Plats.addRun(300,550, 10, 0 ,0, 0);
			Plats.addRun(150,420, 3, 0 ,0, 0);
			Plats.addRun(850,450, 3, 0 ,0, 0);
			Plats.addRun(500,350, 5, 0 ,0, 0);
			Plats.addRun(80,250, 7, 0 ,0, 0);
			Plats.addRun(500,140, 5, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(320,580,80,600));//1
			Enemtroop.push(new EnemyTrooper(500,450,380,700));//2
			Enemtroop.push(new EnemyTrooper(250,320,190,300));//3
			Enemtroop.push(new EnemyTrooper(100,150,100,350));//4
			Enemtroop.push(new EnemyTrooper(200,150,100,350));//5

			lvl.push(Enem);


			lvl.push(new Door(570,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel18():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 5, 0 ,0, 0);
			Plats.addRun(170,550, 3, 0 ,0, 0);
			Plats.addRun(50,430, 3, 0 ,0, 0);
			Plats.addRun(170,320, 3, 0 ,0, 0);
			Plats.addRun( 50,200, 3, 0 ,0, 0);
			Plats.addRun(250,180, 4, 0 ,0, 0);
			Plats.addRun(550,300, 4, 0 ,0, 0);
			Plats.addRun(330,520, 4, 0 ,0, 0);
			Plats.addRun(600,680, 7, 0 ,0, 0);
			Plats.addRun(890,550, 2, 0 ,0, 0);
			Plats.addRun(770,420, 2, 0 ,0, 0);
			Plats.addRun(890,320, 2, 0 ,0, 0);
			Plats.addRun(770,220, 2, 0 ,0, 0);
			Plats.addRun(880,140, 2, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(300, 660, 12, 0 ,0, 0);
			Walls.addWall(720, 550, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(100,330,80,190));//1
			Enemtroop.push(new EnemyTrooper(300,80,280,400));//2
			Enemtroop.push(new EnemyTrooper(600,200,600,730));//3
			Enemtroop.push(new EnemyTrooper(700,580,630,880));//4
			Enemtroop.push(new EnemyTrooper(800,320,780,850));//5
			Enemtroop.push(new EnemyTrooper(800,120,780,850));//6

			lvl.push(Enem);


			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel19():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();

			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 6, 0 ,0, 0);
			Plats.addRun(120,570, 3, 0 ,0, 0);
			Plats.addRun(280,470, 3, 0 ,0, 0);
			Plats.addRun(400,380, 6, 0 ,0, 0);
			Plats.addRun(280,250, 3, 0 ,0, 0);
			Plats.addRun(120,150, 3, 0 ,0, 0);
			Plats.addRun(650,470, 3, 0 ,0, 0);
			Plats.addRun(750,570, 3, 0 ,0, 0);
			Plats.addRun(900,680, 3, 0 ,0, 0);
			Plats.addRun(650,300, 3, 0 ,0, 0);
			Plats.addRun(750,200, 3, 0 ,0, 0);
			Plats.addRun(850,140, 4, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(550,280,450,650));//1
			Enemtroop.push(new EnemyTrooper(500,280,450,650));//2
			Enemtroop.push(new EnemyTrooper(200,50,150,250));//3
			Enemtroop.push(new EnemyTrooper(900,580,890,1000));//4
			Enemtroop.push(new EnemyTrooper(800,100,750,900));//5
			Enemtroop.push(new EnemyTrooper(300,370,300,400));//6

			lvl.push(Enem);


			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel20():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			var boss3 = new Array();
			
			Plats.getLevel(11);
			Walls.getLevel(11);

			Plats.addRun(60,660,11, 0 ,0, 0);
			Plats.addRun(120,540,5, 0 ,-3, 70);
			Plats.addRun(680,660,8, 0 ,0, 0);
			Plats.addRun(320,420,7, 0 ,2, 60);
			Plats.addRun(60,300,6, 0 ,1, 40);
			
			lvl.push(Plats.getArray());
			
			Walls.addWall(20,660,17, 0 ,0, 0);
			Walls.addWall(980,660,17, 0 ,0, 0);
			
			lvl.push(Walls.getArray());
			
			var boss:Boss3 = new Boss3(0,0);
			boss3.push(boss);
			
			lvl.push(Enemtroop);
			lvl.push(new Door(900,597));
			lvl.push(boss3);
			
			return lvl;
		}
		
		public function loadLevel21():Array
		{
			
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 6, 0 ,0, 0);
			Plats.addRun(200,570, 3, 0 ,0, 0);
			Plats.addRun(0,460, 27, 0 ,0, 0);
			Plats.addRun(400,350, 3, 0 ,0, 0);
			Plats.addRun(280,250, 3, 0 ,0, 0);
			Plats.addRun(120,150, 3, 0 ,0, 0);
			Plats.addRun(650,250, 3, 0 ,0, 0);
			Plats.addRun(820,140, 4, 0 ,0, 0);
			
			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(80,360,80,950));//1
			Enemtroop.push(new EnemyTrooper(200,360,80,950));//2
			Enemtroop.push(new EnemyTrooper(400,360,80,950));//3
			Enemtroop.push(new EnemyTrooper(600,360,80,950));//4
			Enemtroop.push(new EnemyTrooper(800,360,80,950));//5
			Enemtroop.push(new EnemyTrooper(200,50,130,250));//6
			Enemtroop.push(new EnemyTrooper(950,40,850,1000));//7

			lvl.push(Enem);


			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel22():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(220,570, 3, 0 ,0, 0);
			Plats.addRun(400,350, 5, 0 ,0, 0);
			Plats.addRun(560,150, 4, 0 ,0, 0);
			Plats.addRun(700,250, 3, 0 ,0, 0);
			Plats.addRun(850,380, 3, 0 ,0, 0);
			Plats.addRun(500,630, 3, 0 ,0, 0);
			Plats.addRun(650,510, 3, 0 ,0, 0);
			Plats.addRun(100,460, 3, 0 ,0, 0);
			Plats.addRun(300,330, 2, 0 ,0, 0);
			Plats.addRun(100,200, 3, 0 ,0, 0);
			
			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 400, 350, 17, 0 ,0, 0);
			Walls.addWall( 560, 350, 5, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(700,410,670,780));//1
			Enemtroop.push(new EnemyTrooper(640,50,570,720));//2
			Enemtroop.push(new EnemyTrooper(120,100,110,200));//3
			Enemtroop.push(new EnemyTrooper(750,150,730,820));//4
			Enemtroop.push(new EnemyTrooper(100,360,100,230));//5
			Enemtroop.push(new EnemyTrooper(500,250,450,570));//6
			//Enemtroop.push(new EnemyTrooper(540,140,500,660));//7
			//Enemtroop.push(new EnemyTrooper(250, 40, 40,380));//8
			//Enemtroop.push(new EnemyTrooper(800, 40,740,900));//9

			lvl.push(Enem);


			lvl.push(new Door(460,290));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel23():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(620,550, 3, 0 ,0, 0);
			Plats.addRun(590,310, 5, 0 ,0, 0);
			Plats.addRun(460,480, 3, 0 ,0, 0);
			Plats.addRun(280,600, 3, 0 ,0, 0);
			Plats.addRun(280,370, 3, 0 ,0, 0);
			Plats.addRun(150,250, 3, 0 ,0, 0);
			Plats.addRun(60,150, 3, 0 ,0, 0);
			Plats.addRun(580,160, 7, 0 ,0, 0);
			Plats.addRun(280,100, 3, 0 ,0, 0);
			Plats.addRun(850,680, 3, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 580, 550, 6, 0 ,0, 0);
			Walls.addWall( 790, 310, 4, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(500,380,480,600));//1
			Enemtroop.push(new EnemyTrooper(200,150,170,280));//2
			Enemtroop.push(new EnemyTrooper(700,60,640,850));//3
			Enemtroop.push(new EnemyTrooper(900,580,850,980));//4
			Enemtroop.push(new EnemyTrooper(400,0,300,420));//5
			
			lvl.push(Enem);


			lvl.push(new Door(650,490));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel24():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(300,570, 10, 0 ,0, 0);
			Plats.addRun(50,430, 6, 0 ,0, 0);
			Plats.addRun(420,450, 2, 0 ,0, 0);
			Plats.addRun(160,140, 3, 0 ,0, 0);
			Plats.addRun(380,310, 4, 0 ,0, 0);
			Plats.addRun(860,480, 3, 0 ,0, 0);
			Plats.addRun(720,370, 3, 0 ,0, 0);
			Plats.addRun(860,250, 3, 0 ,0, 0);
			Plats.addRun(860,100, 3, 0 ,0, 0);
			Plats.addRun(700,180, 3, 0 ,0, 0);
			Plats.addRun(430,100, 4, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(160, 420, 7, 0 ,0, 0);
			Walls.addWall(500, 550, 6, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(600,470,570,700));//1
			Enemtroop.push(new EnemyTrooper(250,330,220,300));//2
			Enemtroop.push(new EnemyTrooper(230,40,190,290));//3
			Enemtroop.push(new EnemyTrooper(780,80,720,830));//4
			Enemtroop.push(new EnemyTrooper(920, 150,900,1000));//5

			lvl.push(Enem);


			lvl.push(new Door(80,370));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel25():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(300,460,10, 0 ,0, 0);
			Plats.addRun(650,130, 3, 0 ,0, 0);
			Plats.addRun(620,350, 3, 0 ,0, 0);
			Plats.addRun(260,340, 1, 0 ,0, 0);
			Plats.addRun(120,150, 3, 0 ,0, 0);
			Plats.addRun(860,280, 3, 0 ,0, 0);
			Plats.addRun(360,680, 3, 0 ,0, 0);
			Plats.addRun(650,680, 3, 0 ,0, 0);
			Plats.addRun(190,550, 2, 0 ,0, 0);
			Plats.addRun(100,450, 2, 0 ,0, 0);
			
			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 260, 460, 3, 0 ,0, 0);
			Walls.addWall( 610, 130, 17, 0 ,0, 0);
			Walls.addWall(700, 460, 3, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(430,580,380,500));//1
			Enemtroop.push(new EnemyTrooper(640,360,350,700));//2
			Enemtroop.push(new EnemyTrooper(400,360,340,700));//3
			Enemtroop.push(new EnemyTrooper(190,50,130,240));//4
			Enemtroop.push(new EnemyTrooper(950,180,900,1000));//5

			lvl.push(Enem);


			lvl.push(new Door(680,68));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel26():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(200,260, 6, 0 ,0, 0);
			Plats.addRun(560,260, 5, 0 ,0, 0);
			Plats.addRun(440,420, 3, 0 ,0, 0);
			Plats.addRun(200,140, 1, 0 ,0, 0);
			Plats.addRun(720,140, 1, 0 ,0, 0);
			Plats.addRun(350,680, 3, 0 ,0, 0);
			Plats.addRun(700,680, 3, 0 ,0, 0);
			Plats.addRun(900,550, 3, 0 ,0, 0);
			Plats.addRun(700,450, 3, 0 ,0, 0);
			Plats.addRun(900,320, 2, 0 ,0, 0);
			Plats.addRun(900,200, 2, 0 ,0, 0);
			Plats.addRun(450,100, 3, 0 ,0, 0);
			Plats.addRun(80,400, 5, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall( 400, 420, 4, 0 ,0, 0);
			Walls.addWall(560, 420, 4, 0 ,0, 0);
			Walls.addWall( 200, 260, 3, 0 ,0, 0);
			Walls.addWall(720, 260, 3, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(400,580,400,490));//1
			Enemtroop.push(new EnemyTrooper(950,220,930,980));//2
			Enemtroop.push(new EnemyTrooper(300,160,250,440));//3
			Enemtroop.push(new EnemyTrooper(600,160,570,740));//4
			Enemtroop.push(new EnemyTrooper(500,320,460,580));//5
			Enemtroop.push(new EnemyTrooper(500,0,460,580));//6
			Enemtroop.push(new EnemyTrooper(120,300,100,250));//7

			lvl.push(Enem);


			lvl.push(new Door(480,357));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel27():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(300,650, 2, 0 ,0, 0);
			Plats.addRun(470,580, 2, 0 ,0, 0);
			Plats.addRun(650,530, 2, 0 ,0, 0);
			Plats.addRun(850,430, 2, 0 ,0, 0);
			Plats.addRun(700,370, 2, 0 ,0, 0);
			Plats.addRun(520,380, 2, 0 ,0, 0);
			Plats.addRun(350,330, 2, 0 ,0, 0);
			Plats.addRun(100,300, 2, 0 ,0, 0);
			Plats.addRun(250,190, 2, 0 ,0, 0);
			Plats.addRun(450,160, 2, 0 ,0, 0);
			Plats.addRun(650,100, 2, 0 ,0, 0);
			Plats.addRun(880,140, 2, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(520, 480,490,540));//1
			Enemtroop.push(new EnemyTrooper(900,330,850,950));//2
			Enemtroop.push(new EnemyTrooper(570,280,530,600));//3
			Enemtroop.push(new EnemyTrooper(150,200,110,200));//4
			Enemtroop.push(new EnemyTrooper(700,0,650,750));//5

			lvl.push(Enem);


			lvl.push(new Door(900,77));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel28():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add 	platforms
			Plats.addRun(  0,680, 4, 0 ,0, 0);
			Plats.addRun(300,620, 11, 0 ,0, 0);
			Plats.addRun(650,550, 2, 0 ,0, 0);
			Plats.addRun(650,500, 2, 0 ,0, 0);
			Plats.addRun(650,450, 2, 0 ,0, 0);
			Plats.addRun(850,400, 2, 0 ,0, 0);
			Plats.addRun(900,300, 2, 0 ,0, 0);
			Plats.addRun(880,200, 2, 0 ,0, 0);
			Plats.addRun(550,400, 2, 0 ,0, 0);
			Plats.addRun(350,350, 2, 0 ,0, 0);
			Plats.addRun(100,350, 2, 0 ,0, 0);
			Plats.addRun(100,230, 2, 0 ,0, 0);
			Plats.addRun(300,150, 2, 0 ,0, 0);
			Plats.addRun(480,133, 2, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(700,400,650,750));//1
			Enemtroop.push(new EnemyTrooper(950,200,900,1000));//2
			Enemtroop.push(new EnemyTrooper(150,250,100,200));//3
			Enemtroop.push(new EnemyTrooper(150,130,100,200));//4
			Enemtroop.push(new EnemyTrooper(400,250,360,450));//5

			lvl.push(Enem);


			lvl.push(new Door(500,70));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel29():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			Plats.getLevel(11);
			Walls.getLevel(11);
			// add platforms
			Plats.addRun(  0,680, 11, 0 ,0, 0);
			Plats.addRun(300,620, 11, 0 ,0, 0);
			Plats.addRun(850,680, 3, 0 ,0, 0);
			Plats.addRun(200,550, 2, 0 ,0, 0);
			Plats.addRun(750,550, 2, 0 ,0, 0);
			Plats.addRun(80,430, 2, 0 ,0, 0);
			Plats.addRun(870,430, 2, 0 ,0, 0);
			Plats.addRun(200,350, 2, 0 ,0, 0);
			Plats.addRun(700,370, 2, 0 ,0, 0);
			Plats.addRun(80,250, 2, 0 ,0, 0);
			Plats.addRun(870,250, 2, 0 ,0, 0);
			Plats.addRun(480,250, 1, 0 ,0, 0);
			Plats.addRun(750,150, 1, 0 ,0, 0);
			Plats.addRun(330,150, 1, 0 ,0, 0);
			Plats.addRun(480,133, 2, 0 ,0, 0);

			lvl.push(Plats.getArray());

			// add Walls
			Walls.addWall( 20, 660, 17, 0 ,0, 0);
			Walls.addWall(980, 680, 18, 0 ,0, 0);

			lvl.push(Walls.getArray());

			// add Enemies
			Enemtroop.push(new EnemyTrooper(600,520,340,730));//1
			Enemtroop.push(new EnemyTrooper(100,330,100,200));//2
			Enemtroop.push(new EnemyTrooper(900,330,870,970));//3
			Enemtroop.push(new EnemyTrooper(100,150,100,200));//4
			Enemtroop.push(new EnemyTrooper(900,150,870,970));//5
			Enemtroop.push(new EnemyTrooper(400,520,340,730));//6

			lvl.push(Enem);


			lvl.push(new Door(500,70));
			lvl.push(Enemtroop);
			return lvl;
		}
		
		public function loadLevel30():Array
		{
			var lvl = new Array();
			var Plats = new PlatformScape(PlatformScape.WAREHOUSEPLATFORM);
			var Walls = new PlatformScape(PlatformScape.WAREHOUSEWALL);
			var Enemtroop = new Array();
			var Enem = new Array ();
			var boss2 = new Array();
			
			Plats.getLevel(11);
			Walls.getLevel(11);
			Plats.addRun(0,660,11, 0 ,0, 0);
			Plats.addRun(120,540,5, 0 ,0, 0);
			Plats.addRun(800,660,5, 0 ,0, 0);
			Plats.addRun(320,420,7, 0 ,0, 0);
			
			lvl.push(Plats.getArray());
			
			Walls.addWall(20,660,17, 0 ,0, 0);
			Walls.addWall(980,660,17, 0 ,0, 0);
			
			lvl.push(Walls.getArray());
			
			var boss:Boss2 = new Boss2(0,0);
			boss2.push(boss);
			
			lvl.push(Enemtroop);
			lvl.push(new Door(-300,-300));
			lvl.push(boss2);
			
			return lvl;
		}
		
	}
	
}
