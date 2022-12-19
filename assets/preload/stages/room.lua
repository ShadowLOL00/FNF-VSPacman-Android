function onCreate()
	-- background shit
	makeLuaSprite('floor', 'freebase/floor', -600, 0);

	makeLuaSprite('wall1', 'freebase/wall1', -600, 0);

	makeLuaSprite('black', 'freebase/anussex', 0, 0)
	makeGraphic('black', 1280, 720, '000000')
	setObjectCamera('black', 'other')
	setObjectOrder('black', 1)
	
	makeLuaText('pacmantext', 'here comes PacMan...', 1000, 135, 300)
	setTextFont('pacmantext', 'impact.ttf')
	setTextSize('pacmantext', 80)
	setTextColor('pacmantext', 'ffffff')
	setTextAlignment('pacmantext', 'center')
	setObjectCamera('pacmantext', 'other')
	setProperty('pacmantext.alpha', 0)


	makeAnimatedLuaSprite('door', 'freebase/doorr', 670, 107);
	addAnimationByPrefix('door', 'door open', 'door open', 24, false)
	addAnimationByPrefix('door', 'door close', 'door close', 24, false)
	addAnimationByIndices('door', 'dooridle', 'door open', 1, 24)
	objectPlayAnimation('door', 'dooridle', true)
	

	makeLuaSprite('wall2', 'freebase/wall2', -600, 0);

	makeLuaSprite('couch', 'freebase/couch', -600, 0);

	addLuaSprite('floor', false);
	addLuaSprite('wall1', false);
	addLuaSprite('door', false);
	addLuaSprite('wall2', false);
	addLuaSprite('couch', false);
	addLuaSprite('black', false);
	addLuaText('pacmantext', false);
	setObjectOrder('dadGroup', 1)
end

function onStepHit()

	if curStep == 32 then
		removeLuaSprite('black')
		removeLuaText('pacmantext')
	end
	if curStep == 10 then
		doTweenAlpha('yaknow', 'pacmantext', 1, 1, 'linear')
	end
	if curStep == 11 or curStep == 141 or curStep == 254 or curStep == 375 or curStep == 651 or curStep == 745 or curStep == 848 or curStep == 1036 then
		objectPlayAnimation('door', 'door open', true)
	end

	if curStep == 128 or curStep == 224 or curStep == 323 or curStep == 639 or curStep == 687 or curStep == 799 or curStep == 928 or curStep == 1088 then
		objectPlayAnimation('door', 'door close', true)
		cameraShake('game', 0.01, 0.3)
		cameraShake('hud', 0.005, 0.3)
	end

end

function onMoveCamera(c)
        if c == 'dad' then
            setProperty('defaultCamZoom',0.9)
 else

            setProperty('defaultCamZoom',0.8)
end
end