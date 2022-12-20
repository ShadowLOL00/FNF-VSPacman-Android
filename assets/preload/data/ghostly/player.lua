function onCreate()

	makeAnimatedLuaSprite('YOU', 'schoolRoof/YOU', 70, 260)
	addAnimationByPrefix('YOU', 'www', 'YOUTHING', 24, true)
	objectPlayAnimation('YOU', 'www')
	setProperty('YOU.alpha', 0)

	makeAnimatedLuaSprite('CPU', 'schoolRoof/CPU', 1290, 185)
	addAnimationByPrefix('CPU', 'sss', 'CPUTHING', 24, true)
	objectPlayAnimation('CPU', 'sss')
	setProperty('CPU.alpha', 0)

	makeAnimatedLuaSprite('YOU1', 'schoolRoof/YOU', 1290, 185)
	addAnimationByPrefix('YOU1', 'waw', 'YOUTHING', 24, true)
	objectPlayAnimation('YOU1', 'waw')
	setProperty('YOU1.alpha', 0)

	makeAnimatedLuaSprite('CPU1', 'schoolRoof/CPU', 70, 260)
	addAnimationByPrefix('CPU1', 'sas', 'CPUTHING', 24, true)
	objectPlayAnimation('CPU1', 'sas')
	setProperty('CPU1.alpha', 0)


	addLuaSprite('YOU', true)
	addLuaSprite('CPU', true)
	addLuaSprite('YOU1', true)
	addLuaSprite('CPU1', true)
end

function onStepHit()
	
	if curStep == 928 then
		doTweenY('wow','YOU', 200, 1,'circOut')
		doTweenAlpha('bruh','YOU', 1, 1,'circOut')
		doTweenY('bwow','CPU', 170, 1,'circOut')
		doTweenAlpha('bro','CPU', 1, 1,'circOut')
	end
	if curStep == 980 then
		doTweenAlpha('bye','YOU', 0, 1,'linear')
		doTweenAlpha('youtoo','CPU', 0, 1,'linear')
	end
	if curStep == 992 then
		removeLuaSprite('YOU')
		removeLuaSprite('CPU')
	end
	if curStep == 1544 then
		doTweenY('wo1w','CPU1', 200, 1,'circOut')
		doTweenAlpha('bru1h','CPU1', 1, 1,'circOut')
		doTweenY('bwo1w','YOU1', 200, 1,'circOut')
		doTweenAlpha('br1o','YOU1', 1, 1,'circOut')
	end
	if curStep == 1567 then
		doTweenAlpha('by1e','YOU1', 0, 1,'linear')
		doTweenAlpha('yout1oo','CPU1', 0, 1,'linear')
	end
	if curStep == 1584 then
		removeLuaSprite('YOU1')
		removeLuaSprite('CPU1')
	end
end