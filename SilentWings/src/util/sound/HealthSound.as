package util.sound
{
	import flash.display.Sprite;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	public class HealthSound extends Sprite
	{
		[Embed(source="assets/sounds/phonenr3.mp3")]
		public var soundClass:Class;
		
		public function HealthSound()
		{
			var smallSound:Sound = new soundClass() as Sound;
			smallSound.play();
		}
	}
	
}
