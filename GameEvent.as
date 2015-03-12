package  {
	
	import flash.events.Event;
	
	public class GameEvent extends Event 
	{
		public static const LEVEL_CHANGE = "lc";
		public static const GAME_OVER = "go";
		public static const START_GAME = "st";


		public var won:Boolean;
		public var mc:MainCharacter;
		public var scor:Number;
		public var timee:Number;


		public function GameEvent(type:String, success:Boolean = false, mm:MainCharacter = null, scr:Number = 0, tim:Number = 0) 
		{
			super(type);
			won = success; 
			mc = mm;
			scor = scr;
			timee = tim;
		}

	}
	
}
