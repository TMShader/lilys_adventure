local title = {}

local button = love.graphics.newImage('/textures/button.png')

function title:load() end

function title:update() end

function title:draw()
    WIDTH, HEIGHT = love.graphics.getDimensions()
    love.graphics.setColor(0, 0, 0, 1)

    -- Title
    love.graphics.setFont(blokletters_big)
    love.graphics.printf('Lily\'s Adventure', 0, HEIGHT / 2 / 2 - 25, WIDTH, 'center')

    -- Start Game button
    love.graphics.setFont(blokletters)
    love.graphics.printf('Start Game', 0, HEIGHT / 2 - 10, WIDTH, 'center')
    love.graphics.draw(button, WIDTH / 2 - 110, HEIGHT / 2 - 35)

    -- Start Game button
    love.graphics.setFont(blokletters)
    love.graphics.printf('Quit', 0, HEIGHT / 2 + 60, WIDTH, 'center')
    love.graphics.draw(button, WIDTH / 2 - 110, HEIGHT / 2 + 35)

    if love.mouse.isDown(1) then
        x = love.mouse.getX()
        y = love.mouse.getY()

        if x > WIDTH / 2 - 100 and x < WIDTH / 2 + 100 and y > HEIGHT / 2 - 30 and y < HEIGHT / 2 + 25 then
            state = 'loading'
        elseif x > WIDTH / 2 - 100 and x < WIDTH / 2 + 100 and y > HEIGHT / 2 + 45 and y < HEIGHT / 2 + 95 then
            love.event.quit()
        end
    end
end

return title