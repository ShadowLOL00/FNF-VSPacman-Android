function onCreate()
	-- background shit
	makeLuaSprite('pacbg', 'pacbg', -650, -200);
	setLuaSpriteScrollFactor('pacbg', 0.9, 0.9);
	
	makeAnimatedLuaSprite('boppin', 'pakkubop', -650, -200);
	addAnimationByPrefix('boppin', 'bop', 'ghostbop instance 1', 24, false);
	objectPlayAnimation('boppin', 'bop');
	setLuaSpriteScrollFactor('boppin', 0.88, 0.88);

	addLuaSprite('pacbg', false);
	addLuaSprite('boppin', false);
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('boppin', 'bop');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('boppin', 'bop');
	end
end