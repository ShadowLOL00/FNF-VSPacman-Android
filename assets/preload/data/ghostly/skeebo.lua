function onCreate()

	makeAnimatedLuaSprite('bash', 'schoolRoof/skeebobash', 1050, 50)
	addAnimationByPrefix('bash', 'bwaa', 'skeebash', 24, false)
	objectPlayAnimation('bash', 'bwaa')
	setProperty('bash.alpha', 0)

	makeAnimatedLuaSprite('micfirst', 'schoolRoof/micspin1', 1050, -150)
	addAnimationByPrefix('micfirst', 'woah', 'micupndown', 24, false)
	objectPlayAnimation('micfirst', 'woah')
	setProperty('micfirst.alpha', 0)

	makeAnimatedLuaSprite('micsecond', 'schoolRoof/micspin2', 1330, 200)
	addAnimationByPrefix('micsecond', 'wham', 'microphonespin', 24, false)
	objectPlayAnimation('micsecond', 'wham')
	setProperty('micsecond.alpha', 0)

	makeAnimatedLuaSprite('bfdies', 'schoolRoof/bfswat', 1050, 0)
	addAnimationByPrefix('bfdies', 'poop', 'BF gets swatted', 24, true)
	objectPlayAnimation('bfdies', 'poop')
	setProperty('bfdies.alpha', 0)

	makeAnimatedLuaSprite('skeebodies', 'schoolRoof/skeebograbbed', 788, 15)
	addAnimationByPrefix('skeebodies', 'pee', 'skeeboGRABBED', 24, false)
	objectPlayAnimation('skeebodies', 'pee')
	setProperty('skeebodies.alpha', 0)

	addLuaSprite('bfdies', true)
	addLuaSprite('bash', true)
	addLuaSprite('micfirst', true)
	addLuaSprite('micsecond', true)
	addLuaSprite('skeebodies', true)
end

function onStepHit()

	if curStep == 136 then
		triggerEvent('Play Animation', 'ohyeah', 'dad')
		setProperty('defaultCamZoom', 0.9)
	end
	if curStep == 146 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 919 then
		objectPlayAnimation('bash', 'bwaa')
		setProperty('bash.alpha', 1)
	end
	if curStep == 920 then
		setProperty('micfirst.alpha', 1)
		objectPlayAnimation('micfirst', 'woah')
		setProperty('bfdies.alpha', 1)
		objectPlayAnimation('bfdies', 'poop')
			doTweenX('blahhsd', 'bfdies', -8000, 2.5, circOut)
			doTweenY('aasaadasd', 'bfdies', -5000, 2.5, circOut)
		setProperty('boyfriend.alpha', 0)
		cameraShake('game', 0.01, 0.3)
		cameraShake('hud', 0.005, 0.3)
	end
	if curStep == 928 then
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 967 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 938 then
		removeLuaSprite('bfdies')
	end
	if curStep == 954 then
		removeLuaSprite('micfirst')
	end
	if curStep == 976 then
		setProperty('boyfriend.alpha', 1)
		removeLuaSprite('bash')
	end
	if curStep == 1490 then
		setProperty('skeebodies.alpha', 1)
		objectPlayAnimation('skeebodies', 'pee')
		setProperty('dad.alpha', 0)
		setProperty('micsecond.alpha', 1)
		objectPlayAnimation('micsecond', 'wham')
	end
	if curStep == 1542 then
		removeLuaSprite('micsecond')
	end
	if curStep == 1552 then
		removeLuaSprite('skeebodies')
		setProperty('dad.alpha', 1)
		setProperty('boyfriend.alpha', 0)
	end
	if curStep == 1567 then
		setProperty('boyfriend.alpha', 1)
	end
end
	