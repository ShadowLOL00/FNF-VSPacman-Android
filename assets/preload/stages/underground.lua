function onCreate()
	-- background shit

	makeLuaSprite('bg', 'dig/digbg', -400, -100)
	makeLuaSprite('spikes', 'dig/digspikeys', -400, -100)
	makeLuaSprite('bgadded', 'dig/digbgsmiler', -400, -100)
	makeLuaSprite('fgspikes', 'dig/digfgspikeys', -400, -120)
		setScrollFactor('fgspikes', 0.9, 1.3);
	makeAnimatedLuaSprite('pixel', 'dig/digmoment', -245, -58)
	addAnimationByPrefix('pixel', 'digdig', 'diggug instance 1', 24, true)
		setObjectCamera('pixel', 'other')
		scaleObject('pixel', 4, 4)

	addLuaSprite('bg', false);
	addLuaSprite('spikes', false);
	addLuaSprite('fgspikes', true);
	setProperty('pixel.antialiasing',false)
end

function onStepHit()

	if curStep == 576 then
		addLuaSprite('pixel', false)
	end
	if curStep == 583 then
		addLuaSprite('bgadded', false)
	end
	if curStep == 592 then
		removeLuaSprite('pixel')
	end
	if curStep == 856 then
		setProperty('defaultCamZoom', 1.03)
	end
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		setProperty('bgadded.y',-100+20)
		doTweenY('smile','bgadded',-100,0.45,'circOut')
	end
end