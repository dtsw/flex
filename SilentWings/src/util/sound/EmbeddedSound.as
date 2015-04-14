package util.sound
{
	import flash.display.Sprite;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	public class EmbeddedSound extends Sprite
	{
		[Embed(source="assets/sounds/quack.mp3")]
		public var soundClass:Class;
		
		public function EmbeddedSound()
		{
			var smallSound:Sound = new soundClass() as Sound;
			smallSound.play();
		}
	}

}
