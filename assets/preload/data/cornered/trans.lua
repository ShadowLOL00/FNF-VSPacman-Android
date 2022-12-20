function onStepHit()

	if curStep == 784 or curStep == 1440 or curStep == 2048 or curStep == 3010 then
		triggerEvent('Ghost Trans In','','')
	end
	if curStep == 800 or curStep == 1444 or curStep == 2066 or curStep == 3048 then
		triggerEvent('Ghost Trans Out','','')
	end
end