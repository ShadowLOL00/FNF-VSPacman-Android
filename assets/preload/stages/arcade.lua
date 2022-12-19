function onCreate()
	-- background shit
	addCharacterToList('stoolbf1', 'boyfriend')
	addCharacterToList('arcade1', 'dad')


	makeLuaSprite('arcadebg', 'arcade/arcadebg', 0, 0);
	makeLuaSprite('arcadefg', 'arcade/arcadefg', -200, 350);
		setScrollFactor('arcadefg', 1.1, 1.3);

	makeAnimatedLuaSprite('crowds', 'arcade/MANIACROWDS', 1110, 320);
	addAnimationByPrefix('crowds', 'bop', 'crowds', 24, false);
	objectPlayAnimation('crowds', 'bop');

	addLuaSprite('arcadebg', false);

	addLuaSprite('arcadefg', true);
end

function onSongStart()

	setProperty('defaultCamZoom',1.1)
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('crowds', 'bop');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('crowds', 'bop');
	end
end

function onStepHit()

	if curStep == 512 then
	setProperty('defaultCamZoom',1.3)
end

	if curStep == 518 then
		addLuaSprite('crowds', true);
end	

	if curStep == 1086 then
	triggerEvent('Change Character', 'dad', 'arcade1')	
end
	if curStep == 1088 then
	triggerEvent('Change Character', 0, 'stoolbf1')

	setProperty('defaultCamZoom',0.6)
	end
end