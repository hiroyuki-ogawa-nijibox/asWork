package sample
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Act004 extends Sprite
	{
		
		[Embed(source = '/img/hana.jpg', mimeType='image/jpeg')]
		private var ImageHana:Class;

		[Embed(source = '/img/daruma.jpg', mimeType='image/jpeg')]
		private var ImageDaruma:Class;
		
		public function Act004()
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE,initalize);
		}
		
		private function initalize(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE,initalize);
			addImage();
		}

		private function addImage():void
		{
			var bmpHana:Bitmap = new ImageHana() as Bitmap;
			addChild(bmpHana);

			var bmpDaruma:Bitmap = new ImageDaruma() as Bitmap;
			bmpDaruma.y = bmpHana.height;
			addChild(bmpDaruma);
		}
		
	}
}