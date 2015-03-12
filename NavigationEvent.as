package  
{
	import flash.events.Event;
	public class NavigationEvent extends Event 
	{
		public static const RESTART:String = "restart";
		public static const START:String = "start";
		public static const PAUSE:String = "pause";
		public static const RESUME:String = "resume";
 		public static const TSTOP:String = "tstop";
		public static const TSTART:String = "tstart";
		public static const LEVEL:String = "level";
		
		public function NavigationEvent( type:String )
		{
			super( type );
		}
	}
}