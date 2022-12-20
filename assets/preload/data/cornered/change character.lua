function onCreate()
	addCharacterToList('clydeBLUE', 'dad')
	addCharacterToList('inky', 'dad')
	addCharacterToList('inkyBLUE', 'dad')
	addCharacterToList('pinky', 'dad')
	addCharacterToList('pinkyBLUE', 'dad')
	addCharacterToList('blinky', 'dad')
	addCharacterToList('blinkyBLUE', 'dad')
	addCharacterToList('cornered1gf', 'gf')
	addCharacterToList('cornered2gf', 'gf')
	addCharacterToList('cornered3gf', 'gf')
	addCharacterToList('cornered4gf', 'gf')
	addCharacterToList('cornered5gf', 'gf')
	addCharacterToList('gf', 'gf')
	addCharacterToList('glowbf', 'boyfriend')
	addCharacterToList('bf', 'boyfriend')
end
	

function onStepHit()

	if curStep == 520 then
		triggerEvent('Change Character', 'boyfriend', 'glowbf')
	end

	if curStep == 528 then
		triggerEvent('Change Character', 'dad', 'clydeBLUE')
		triggerEvent('Change Character', 'gf', 'cornered1gf')
	end
	if curStep == 800 then
		triggerEvent('Change Character', 'dad', 'inky')
		triggerEvent('Change Character', 'gf', 'cornered2gf')
		setProperty('health', 1)
		triggerEvent('Change Character', 'boyfriend', 'bf')
	end

	if curStep == 1176 then
		triggerEvent('Change Character', 'boyfriend', 'glowbf')
	end

	if curStep == 1184 then
		triggerEvent('Change Character', 'dad', 'inkyBLUE')
		triggerEvent('Change Character', 'gf', 'cornered3gf')
	end
	if curStep == 1441 then
		triggerEvent('Change Character', 'dad', 'pinky')
		triggerEvent('Change Character', 'gf', 'cornered4gf')
		setProperty('health', 1)
		triggerEvent('Change Character', 'boyfriend', 'bf')
	end

	if curStep == 1776 then
		triggerEvent('Change Character', 'boyfriend', 'glowbf')
	end

	if curStep == 1784 then
		triggerEvent('Change Character', 'gf', 'cornered5gf')
	end
	if curStep == 1792 then
		triggerEvent('Change Character', 'dad', 'pinkyBLUE')
	end
	if curStep == 2056 then
		triggerEvent('Change Character', 'dad', 'blinky')
		triggerEvent('Change Character', 'gf', 'gf')
		setProperty('health', 1)
		triggerEvent('Change Character', 'boyfriend', 'bf')
	end

	if curStep == 2720 then
		triggerEvent('Change Character', 'boyfriend', 'glowbf')
	end
	if curStep == 2752 then
		triggerEvent('Change Character', 'dad', 'blinkyBLUE')
	end
	if curStep == 3024 then
		setProperty('dad.visible',false)
	end
end