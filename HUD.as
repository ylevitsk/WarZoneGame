package  {
	
	import flash.display.MovieClip;
	import flash.geom.Rectangle;
	
	
	public class HUD extends MovieClip {
		
		public var HP:hpBar, wep:MovieClip,wep_text:String;
		
		private var hW:int, hH:int, aW:int, aH;
		
		public function HUD(xx:int, yy:int) 
		{
			x = xx;
			y = yy; 
			
			
			HP = new hpBar(); // symbol aligned to top left
			HP.x = 92;
			HP.y = 6;
			hW = HP.width;
			hH = HP.height;
			addChild(HP);
		}
		
		public function switchwep(p:PlayerEvent)
		{
			if(p.weapon_type != null)
			{
				if(wep != null && this.contains(wep))
					removeChild(wep);
				
				wep = WeaponChooser.getWeapon(p.weapon_type);
				wep_text = p.weapon_type;
				weaponText.text = wep_text;
				
				wep.scaleX = 100 / wep.width;
				wep.scaleY = wep.scaleX;
				wep.x = -80;
				wep.y = -10;
				addChild(wep);
			}
		}
		
		public function setValues(hh:Number, ah:Number, cost:Number, score:Number)
		{
			HP.scrollRect = new Rectangle(0,0,hW*hh,hH);
			if(cost != 0)
			AmmoText.text = Math.floor(ah*100/cost)+"/"+(100/cost);
			else
			AmmoText.text = "Infinity";
			scoreText.text = "Score: "+score;
		}
	}
	
}
