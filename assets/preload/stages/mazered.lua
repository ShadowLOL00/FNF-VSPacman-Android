function onCreate()
	-- background shit
	makeLuaSprite('pacbgred', 'pacbgred', -650, -200);
	setLuaSpriteScrollFactor('pacbgred', 0.9, 0.9);

	makeLuaSprite('bopred', 'bopred', -650, -200);
	setLuaSpriteScrollFactor('bopred', 0.88, 0.88);

	addLuaSprite('pacbgred', false);
	addLuaSprite('bopred', false);
end