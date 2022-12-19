function onCreate()
	-- background shit
	makeLuaSprite('wall', 'hideout/wall', -550, -300);
	
	makeLuaSprite('hideoutbg', 'hideout/hideoutbg', -550, -300);

	addLuaSprite('wall', false);
	addLuaSprite('hideoutbg', false);

end

function onMoveCamera(c)
        if c == 'gf' then
            setProperty('defaultCamZoom',1.1)
 else

            setProperty('defaultCamZoom',0.9)
end
end