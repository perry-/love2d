function  love.load()
	points = {}
	currentColor = {love.math.random(0, 255), love.math.random(0, 255), love.math.random(0, 255)}
end

function love.draw()

	if love.mouse.isDown("l") then
		points[#points+1] = {love.mouse.getX(), love.mouse.getY(), currentColor}
	end

	if love.mouse.isDown("r") then
		currentColor = {love.math.random(0, 255), love.math.random(0, 255), love.math.random(0, 255)}
	end

	for i=1, #points do
    	love.graphics.circle( "fill", points[i][1], points[i][2], 50, 100 )
    	love.graphics.setColor(points[i][3])
	end
end