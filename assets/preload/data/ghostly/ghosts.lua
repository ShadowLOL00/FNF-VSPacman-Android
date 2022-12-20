function onCreate()

	makeAnimatedLuaSprite('ghosts', 'schoolRoof/GHOSTSBOPPINhi', 1300, 100)
	addAnimationByPrefix('ghosts', 'hi', 'ghosthi', 24, false)
	objectPlayAnimation('ghosts', 'hi')
	setProperty('ghosts.alpha', 0)

	makeAnimatedLuaSprite('ghosto', 'schoolRoof/GHOSTSBOPPINbye', 1300, 100)
	addAnimationByPrefix('ghosto', 'bye', 'ghostbye', 24, false)
	objectPlayAnimation('ghosto', 'bye')
	setProperty('ghosto.alpha', 0)

	setObjectOrder('ghosts', 7)
	setObjectOrder('ghosto', 7)

	addLuaSprite('ghosts', false)
	addLuaSprite('ghosto', false)
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('ghosts', 'hi')
	end
end

function onStepHit()

	if curStep == 1488 then
		setProperty('ghosts.alpha', 1)
	end
	if curStep == 1528 then
		removeLuaSprite('ghosts')
		setProperty('ghosto.alpha', 1)
		objectPlayAnimation('ghosto', 'bye')
	end
	if curStep == 1543 then
		removeLuaSprite('ghosto')
	end
end