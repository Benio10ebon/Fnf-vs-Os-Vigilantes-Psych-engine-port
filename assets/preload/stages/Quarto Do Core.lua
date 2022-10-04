function onCreate()


	makeAnimatedLuaSprite('Setup', 'Quarto Do Core/Setup',-200, -100);

	addLuaSprite('Setup', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('Setup', 'idle', 'halloweem bg lightning strike', 6, true);

	
	
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end