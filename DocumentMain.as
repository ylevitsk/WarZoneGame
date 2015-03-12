package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Mouse;
	import flash.events.Event;
	import flash.media.SoundChannel;
	
	
	public class DocumentMain extends MovieClip 
	{
		
		/*public var backgroundMusic:BackgroundMusic;
		public var bgmSoundChannel:SoundChannel;*/
		var level:int
		public var yourscore:int;
		var bg:Background, go:GAMEOVER, st:StartScreen, ss:StoryScreen;
		
		public function DocumentMain() 
		{
			st = new StartScreen();
			st.addEventListener(GameEvent.START_GAME, startG, false, 0, true);
			addChild(st);
		}
		
		public function startG(g:GameEvent)
		{
			removeChild(st);
			st = null;
			
			Mouse.hide();
			
			ss = new StoryScreen();
			ss.x = 0;
			ss.y = 0;
			ss.addEventListener(MouseEvent.CLICK, storyStart);
			addChild(ss);
			
			
		}
		
		public function storyStart(m:MouseEvent):void{
			
			removeChild(ss)
			ss = null;
			/*backgroundMusic = new BackgroundMusic();
			bgmSoundChannel = backgroundMusic.play();
			bgmSoundChannel.addEventListener( Event.SOUND_COMPLETE, onBackgroundMusicFinished );*/

			
		
			level = 1;
			bg = new Background(level, new MainCharacter(0,0));
			listen();
			addChild(bg);
		}
		
		
		public function listen() : void
		{
					
			bg.addEventListener(GameEvent.LEVEL_CHANGE, inc_level);
			bg.addEventListener(GameEvent.GAME_OVER, startoverscreen);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, bg.handleKeys);
			stage.addEventListener(KeyboardEvent.KEY_UP, bg.handleKeys);
			stage.addEventListener(MouseEvent.CLICK, bg.clik);
			stage.focus = bg;
		}
		
		public function inc_level(t:GameEvent) :void
		{
			stage.removeEventListener(MouseEvent.CLICK, bg.clik);
			removeChild(bg);
			level++;
			bg = new Background(level, t.mc,t.scor, t.timee);
			bg.addEventListener(GameEvent.LEVEL_CHANGE, inc_level);
			bg.addEventListener(GameEvent.GAME_OVER, startoverscreen);
			stage.addEventListener(MouseEvent.CLICK, bg.clik);
			addChild(bg);
		}
		
		public function startoverscreen(t:GameEvent) : void
		{
			yourscore = bg.score;
			removeChild(bg);
			Mouse.show();
			

			go = new GAMEOVER();
			go.setFinalScore(yourscore);
			addChild(go);
			stage.addEventListener(MouseEvent.CLICK, startover, false, 0, true);
			
			if(t.won)
			{
				//display score
			} else
			{
				// player lost
			}
			
			
			
		}
		
		public function startover(t:MouseEvent)
		{
			if(go != null)
				removeChild(go);
			go = null;
			
			stage.removeEventListener(MouseEvent.CLICK, startover);
			
			if (level > 1)		//Yuliya 
			{
			level -= 1;
			}
			else
			{
				level = 1;
			}					//Yuliya
			
			bg = new Background(level, new MainCharacter(0,0));
			listen();
			addChild(bg);
		}
		/*public function onBackgroundMusicFinished( event:Event ):void
		{
			bgmSoundChannel = backgroundMusic.play();
			bgmSoundChannel.addEventListener( Event.SOUND_COMPLETE, onBackgroundMusicFinished );
		}*/
		
	}
	
}
