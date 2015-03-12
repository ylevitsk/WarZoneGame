package  {
	
	import flash.events.Event;
	import flash.display.MovieClip;
	
	public class PlayerEvent extends Event {

		public static const WEAPON_SWITCH = "ws";

		var weapon_type:String;
		
		public function setWeapon(type:String)
		{
			weapon_type = type; 
		}

		public function PlayerEvent(type:String) 
		{
			super(type);
			// constructor code
		}

	}
	
}
