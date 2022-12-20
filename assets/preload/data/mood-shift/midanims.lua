function onCreate()
	addCharacterToList('pac2NERVOUS', 'dad')
	addCharacterToList('pac2SAD', 'dad')
	addCharacterToList('pac2ANGRY', 'dad')
end

function onStepHit()

	if curStep == 444 then
		triggerEvent('Play Animation', 'nervous', 'dad')
	end
	if curStep == 479 then
		triggerEvent('Change Character', 'dad', 'pac2NERVOUS')
	end
	if curStep == 992 then
		triggerEvent('Play Animation', 'sad', 'dad')
	end
	if curStep == 1072 then
		setProperty('defaultCamZoom', 0.9)
	end
	if curStep == 1087 then
		triggerEvent('Change Character', 'dad', 'pac2SAD')
	end
	if curStep == 1210 then
		setProperty('defaultCamZoom', 0.75)
	end
	if curStep == 1336 then
		triggerEvent('Play Animation', 'angry', 'dad')
	end
	if curStep == 1387 then
		triggerEvent('Change Character', 'dad', 'pac2ANGRY')
	end
end