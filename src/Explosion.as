package  
{
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	
	public class Explosion extends Entity
	{
		
		private var spr:Spritemap = new Spritemap(A.gfxEXPLOSION, 15, 14);
		
		public function Explosion(x:int,y:int) 
		{
			spr.angle = 90 * Math.floor(Math.random() * 4);
			spr.scaleX = 2;
			spr.scaleY = 2;
			spr.originX = 7;
			spr.originY = 7;
			super(x, y+7);
			spr.add("explode", [0, 1, 2, 3, 4, 5], 12, false);
			spr.play("explode");
			graphic = spr;
		}
		
		override public function update():void
		{
			x = FP.camera.x;
			if (spr.index == 5)
			{FP.world.remove(this);}
		}
		
	}

}