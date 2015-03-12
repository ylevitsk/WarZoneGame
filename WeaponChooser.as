package  {
	
	import flash.display.MovieClip;
	
	public class WeaponChooser {

		public function WeaponChooser() 
		{
			// constructor code
		}
		
		public static function getWeapon(type:String):MovieClip
		{
			switch(type)
			{
				case "Pistol":
					return new Pistol(0,0);
					break;
				case "AK47":
					return new AK47(0,0,0);
					break;
				default:
				return new Pistol(0,0);
			}
		}

	}
	
}
