function  love.load()
	xPos = 10
	yPos = love.graphics.getHeight()
	love.graphics.circle("fill", xPos, yPos, 10)

	balls = {}
	balls[1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
end

function love.draw()
	if yPos <= love.graphics.getHeight() then
		yPos = yPos+5
	end
	
	for i=1, #balls do 
		if balls[i][2] <= love.graphics.getHeight() then
			balls[i][2] = balls[i][2]+2
		end
	end

	if love.keyboard.isDown("left") and xPos > 0 then
		xPos = xPos-10
	end

	if love.keyboard.isDown("right") and xPos < love.graphics.getWidth() then
		xPos = xPos+10
	end

	if love.keyboard.isDown("up") and yPos > 0 then
		yPos = yPos-10
	end

	if love.keyboard.isDown("down") and yPos < love.graphics.getHeight() then
		yPos = yPos+10
	end

	if love.keyboard.isDown(" ") then
		love.graphics.setColor(255, 0, 0)
	end

	love.graphics.setColor(255, 255, 255)
	love.graphics.circle("fill", xPos, yPos, 10)

	for i=1, #balls do 
		love.graphics.setColor(0, 255, 0)
		love.graphics.circle("fill", balls[i][1], balls[i][2], 10)
	end
end

function love.update(dt)
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
	balls[#balls+1] = {love.math.random(10, love.graphics.getWidth()), 0}
end