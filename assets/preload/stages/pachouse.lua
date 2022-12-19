function onCreate()
	-- background shit

	makeLuaSprite('bg', 'pac2/bg', -700, -700)
	makeLuaSprite('house', 'pac2/house', -700, -700)
	makeLuaSprite('epic tree', 'pac2/epic tree', -700, -700)
	makeLuaSprite('bush', 'pac2/bush', -700, -700)
	makeLuaSprite('mailbox', 'pac2/mailbox', -700, -700)
	makeAnimatedLuaSprite('micshit', 'pac2/mic bounce', -460, -300)
		addAnimationByPrefix('micshit', 'blam', 'mic throw', 24, false)
	setProperty('micshit.alpha', 0)
	

	addLuaSprite('bg', false);
	addLuaSprite('house', false);
	addLuaSprite('epic tree', false);
	addLuaSprite('bush', false);
	addLuaSprite('mailbox', false);
	addLuaSprite('micshit', true)
end

function onCreatePost()

	setProperty('gf.visible',false)
	setProperty('boyfriend.visible',false)
end

function onStepHit()

	if curStep == 440 then
		setProperty('micshit.alpha', 1)
		objectPlayAnimation('micshit', 'blam')
	end
	if curStep == 988 then
		objectPlayAnimation('micshit', 'blam')
	end
	if curStep == 1332 then
		objectPlayAnimation('micshit', 'blam')
	end
	if curStep == 1361 then
		removeLuaSprite('micshit')
	end
end