function onCreate()

	addCharacterToList('pacsterplay', 'bf')
	addCharacterToList('skeebo', 'dad')
end

function onStepHit()
	if curStep == 919 then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'pacsterplay');
	end
	if curStep == 1501 then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf');	
	end

	if curStep == 919 then
	noteTweenX('funnyskeebo', 0, 730, 1, 'quartOut')
	noteTweenX('funnyskeebo1', 1, 845, 1, 'quartOut')
	noteTweenX('funnyskeebo2', 2, 960, 1, 'quartOut')
	noteTweenX('funnyskeebo3', 3, 1070, 1, 'quartOut')
	noteTweenX('funnypacster', 4, 90, 1, 'quartOut')
	noteTweenX('funnypacster1', 5, 205, 1, 'quartOut')
	noteTweenX('funnypacster2', 6, 317, 1, 'quartOut')
	noteTweenX('funnypacster3', 7, 426, 1, 'quartOut')
end

	if curStep == 1501 then
	noteTweenX('funnyskeebo', 0, 90, 1, 'quartOut')
	noteTweenX('funnyskeebo1', 1, 205, 1, 'quartOut')
	noteTweenX('funnyskeebo2', 2, 317, 1, 'quartOut')
	noteTweenX('funnyskeebo3', 3, 426, 1, 'quartOut')
	noteTweenX('funnypacster', 4, 730, 1, 'quartOut')
	noteTweenX('funnypacster1', 5, 845, 1, 'quartOut')
	noteTweenX('funnypacster2', 6, 960, 1, 'quartOut')
	noteTweenX('funnypacster3', 7, 1070, 1, 'quartOut')
end
end