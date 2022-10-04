function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stage_light', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight', 0.9, 0.9);
		scaleObject('no', 1.1, 1.1);
		
		makeLuaSprite('no', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('no', 0.9, 0.9);
		scaleObject('no', 1.1, 1.1);
		setPropertyLuaSprite('no', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 0.9, 0.9);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('no', false);
	addLuaSprite('no', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end