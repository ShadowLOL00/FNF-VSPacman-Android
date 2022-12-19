function onCreate()
	-- background shit
	makeLuaSprite('sky', 'schoolRoof/sky', -700, -500);
	setScrollFactor('sky', 0.3, 0.3);

	makeLuaSprite('floor', 'schoolRoof/schoolroof', -700, -500);

	makeLuaSprite('bighouses', 'schoolRoof/biglollipops', -700, -500);
	setScrollFactor('bighouses', 0.75, 0.75);

	makeLuaSprite('houses', 'schoolRoof/lollipops', -700, -500);
	setScrollFactor('houses', 0.6, 0.6);

	makeLuaSprite('skeeboshit', 'schoolRoof/skeebomoment', -700, -500)
	makeGraphic('skeeboshit', 2800, 1800, '000000')
	setProperty('skeeboshit.alpha', 0)

	makeLuaSprite('spotto', 'schoolRoof/spotlight yeah', 800, -100)
	setProperty('spotto.alpha', 0)

--------------------------------------------------------------------------------------------

	makeAnimatedLuaSprite('spiral', 'schoolRoof/spiralbop', 160, 150)
	addAnimationByPrefix('spiral', 'bop', 'Spiral bounce0', 24, false);
	objectPlayAnimation('spiral', 'bop');

	makeAnimatedLuaSprite('spiralayo', 'schoolRoof/spiralbopAYO', 160, 150)
	addAnimationByPrefix('spiralayo', 'bopA', 'Spiral bounce ayo', 24, false);
	objectPlayAnimation('spiralayo', 'bopA');

	makeAnimatedLuaSprite('spiralmad', 'schoolRoof/spiralbopMAD', 160, 150)
	addAnimationByPrefix('spiralmad', 'bopM', 'Spiral bounce mad', 24, false);
	objectPlayAnimation('spiralmad', 'bopM');

	makeAnimatedLuaSprite('spiralwoah', 'schoolRoof/spiralbopWOAH', 160, 150)
	addAnimationByPrefix('spiralwoah', 'bopW', 'Spiral bounce woah', 24, false);
	objectPlayAnimation('spiralwoah', 'bopW');

	makeAnimatedLuaSprite('cylindria', 'schoolRoof/cylindriabop', 800, 320)
	addAnimationByPrefix('cylindria', 'bop1', 'Cylindria bounce0', 24, false);
	objectPlayAnimation('cylindria', 'bop1');

	makeAnimatedLuaSprite('cylindriaayo', 'schoolRoof/cylindriabopAYO', 800, 320)
	addAnimationByPrefix('cylindriaayo', 'bop1A', 'Cylindria bounce ayo', 24, false);
	objectPlayAnimation('cylindriaayo', 'bop1A');

	makeAnimatedLuaSprite('cylindriamad', 'schoolRoof/cylindriabopMAD', 800, 320)
	addAnimationByPrefix('cylindriamad', 'bop1M', 'Cylindria bounce mad', 24, false);
	objectPlayAnimation('cylindriamad', 'bop1M');

	makeAnimatedLuaSprite('cylindriawoah', 'schoolRoof/cylindriabopWOAH', 800, 320)
	addAnimationByPrefix('cylindriawoah', 'bop1W', 'Cylindria bounce woah', 24, false);
	objectPlayAnimation('cylindriawoah', 'bop1W');

	makeAnimatedLuaSprite('bfpissed', 'schoolRoof/bfmadidle', 1250, 360)
	addAnimationByPrefix('bfpissed', 'braop', 'BF idle dance', 24, false);
	objectPlayAnimation('bfpissed', 'braop');
	setProperty('bfpissed.alpha', 0)
	
	makeAnimatedLuaSprite('bfayo', 'schoolRoof/bfyeye', 1000, 320)
	addAnimationByPrefix('bfayo', 'brap', 'BF ayo', 24, false);
	objectPlayAnimation('bfayo', 'brap');
	setProperty('bfayo.alpha', 0)
	
--------------------------------------------------------------------------------------------

	setObjectOrder('spiral', 1)
	setObjectOrder('cylindria', 1)
	setObjectOrder('bfpissed', 2)
	setObjectOrder('bfayo', 2)
	setObjectOrder('skeeboshit', 3)


	addLuaSprite('sky', false);
	addLuaSprite('houses', false);
	addLuaSprite('bighouses', false);
	addLuaSprite('floor', false);
	addLuaSprite('spiral', false);
	addLuaSprite('cylindria', false);
	addLuaSprite('bfpissed', false);
	addLuaSprite('skeeboshit', false);
	addLuaSprite('spotto', true);

end

function onStepHit()

	if curStep == 1317 then
		setProperty('bfpissed.alpha', 1)
	end
	if curStep == 1532 then
		removeLuaSprite('bfpissed')
		setProperty('bfayo.alpha', 1)
		objectPlayAnimation('bfayo', 'brap');
	end
	if curStep == 1545 then
		setProperty('defaultCamZoom',0.8)
	end
	if curStep == 1550 then
		setProperty('defaultCamZoom',0.9)
	end
	if curStep == 1616 then
		setProperty('defaultCamZoom',0.7)
	end
	if curStep == 1567 then
		removeLuaSprite('bfayo')
	end
	if curStep == 1232 then
		doTweenAlpha('bwee', 'spotto', 1, 0.5, 'quartOut')
		doTweenAlpha('bwa', 'skeeboshit', 1, 0.5, 'quartOut')
		setProperty('defaultCamZoom',0.9)
	end
	if curStep == 1296 then
		doTweenAngle('woosh', 'spotto', 75, 1, 'quartOut')
		doTweenX('whaam', 'spotto', 10, 1, 'quartOut')
	end
	if curStep == 1360 then
		doTweenAlpha('bwooo', 'spotto', 0, 0.5, 'quartOut')		
		doTweenAlpha('bwa', 'skeeboshit', 0, 0.5, 'quartOut')
		setProperty('defaultCamZoom',0.7)
	end
	if curStep == 1376 then
		removeLuaSprite('skeeboshit')
		removeLuaSprite('spotto')
	end
	if curStep == 920 then
		removeLuaSprite('spiral', false)
		removeLuaSprite('cylindria', false)
		addLuaSprite('spiralwoah', false)
		addLuaSprite('cylindriawoah', false)
		setObjectOrder('spiralwoah', 7)
		setObjectOrder('cylindriawoah', 7)
	end
	if curStep == 965 then
		triggerEvent('Play Animation', 'grrr', 'dad')
	end		
	if curStep == 967 then
		removeLuaSprite('spiralwoah')
		removeLuaSprite('cylindriawoah')
		addLuaSprite('spiralmad', false)
		addLuaSprite('cylindriamad', false)
		setObjectOrder('spiralmad', 7)
		setObjectOrder('cylindriamad', 7)
		setProperty('health', 1)
	end
	if curStep == 1352 then
		removeLuaSprite('spiralmad')
		removeLuaSprite('cylindriamad')
		addLuaSprite('spiralayo', false)
		addLuaSprite('cylindriaayo', false)
		setObjectOrder('spiralayo', 7)
		setObjectOrder('cylindriaayo', 7)
	end
	if curStep == 1552 then
		removeLuaSprite('spiralayo')
		removeLuaSprite('cylindriaayo')
		addLuaSprite('spiral', false)
		addLuaSprite('cylindria', false)
		setObjectOrder('spiral', 7)
		setObjectOrder('cylindria', 7)
	end
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('spiral', 'bop');
		objectPlayAnimation('spiralayo', 'bopA');
		objectPlayAnimation('spiralmad', 'bopM');
		objectPlayAnimation('spiralwoah', 'bopW');
		objectPlayAnimation('cylindria', 'bop1');
		objectPlayAnimation('cylindriaayo', 'bop1A');
		objectPlayAnimation('cylindriamad', 'bop1M');
		objectPlayAnimation('cylindriawoah', 'bop1W');
		objectPlayAnimation('bfpissed', 'braop');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('spiral', 'bop');
		objectPlayAnimation('cylindria', 'bop1');
	end
end