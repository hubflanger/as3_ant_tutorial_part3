package
{
	import flash.display.*;
	import flash.events.Event;
	import flash.net.URLRequest;

	public class Demo3 extends Sprite
	{
		private var loader:Loader;
		
		public function Demo3()
		{
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener( Event.COMPLETE, loadCompleteHandler );
			loader.load( new URLRequest( "externalAssets.swf" ));
		}		
		
		private function loadCompleteHandler( evt:Event ):void
		{
			evt.target.removeEventListener( Event.COMPLETE, loadCompleteHandler );
			addChild( loader );
		}
	}
}