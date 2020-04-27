local loading = {}
local progress = {}
local i = 0
local x = 0

local button = love.graphics.newImage('/textures/button.png')

function loading:load()
    for x=0,40 do
        progress[x] = love.graphics.newImage('textures/progress/' .. x .. '0.png')
    end
end

function loading:update() end

function loading:draw()
    WIDTH, HEIGHT = love.graphics.getDimensions()
    love.graphics.setColor(0, 0, 0, 1)

    if i < 41 then
        love.graphics.draw(progress[i], WIDTH / 2 - 220, HEIGHT / 2 - 35)
        i = i + 1
        love.timer.sleep(0.05)
    else
        state = 'title'
    end
end

return loading