package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid','shared'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('gf', [2], 0, false, isPlayer);
		animation.add('gf-corrupt', [16], 0, false, isPlayer);
		animation.add('bf-corrupt', [3, 4], 0, false, isPlayer);
		animation.add('bf-infernum', [13, 4], 0, false, isPlayer);
		animation.add('whittyCorrupt', [5, 6], 0, false, isPlayer);
		animation.add('whittyCorrupt2', [7, 8], 0, false, isPlayer);
		animation.add('whittyCrazyCorrupt', [9, 10], 0, false, isPlayer);
		animation.add('whittyCrazyCorrupt2', [11, 12], 0, false, isPlayer);
		animation.add('whittyCrazyCorrupt3', [14, 15], 0, false, isPlayer);

		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
