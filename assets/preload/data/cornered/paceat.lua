function onCreate()

	makeAnimatedLuaSprite('pacman', 'hideout/pacball', -1550, 280);
	addAnimationByPrefix('pacman', 'ball', 'pacball', 24, false);

	makeLuaSprite('pacman1', 'hideout/pacdude eat', -400, 510);

	makeAnimatedLuaSprite('pacman2', 'hideout/pacidle', 420, 455);
	addAnimationByPrefix('pacman2', 'bop', 'pacdude idle', 24, false);

	makeAnimatedLuaSprite('pacman3', 'hideout/pacjump', 453, 255);
	addAnimationByPrefix('pacman3', 'jump', 'pacdude jump', 24, false);

	setObjectOrder('pacman', 4);

end

function onStepHit()

	if curStep == 2664 then
		playSound('smash', 0.6)
	end
	if curStep == 2694 then
		addLuaSprite('pacman', false);
		objectPlayAnimation('pacman', 'ball');
		doTweenX('pacman', 'pacman', 370, 2, 'quartOut')
	end
	if curStep == 2711 then
		playSound('jump', 0.3)
	end
	if curStep == 2726 then
		removeLuaSprite('pacman')
		setObjectOrder('pacman2', 4);
		addLuaSprite('pacman2', false);
	end
	if curStep == 3002 then
		removeLuaSprite('pacman2')
		setObjectOrder('pacman3', 4);
		addLuaSprite('pacman3', false);
		objectPlayAnimation('pacman3', 'jump')
	end
	if curStep == 3030 then
		removeLuaSprite('pacman3')
		setObjectOrder('pacman1', 4);
		addLuaSprite('pacman1', false);
	end
		
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('pacman2', 'bop');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('pacman2', 'bop');
	end
end