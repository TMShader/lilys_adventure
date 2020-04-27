WINDOW_WIDTH=0
WINDOW_HEIGHT=0

title = require 'states/title'
loading = require 'states/loading'

cursor = love.mouse.newCursor('textures/cursor.png', 0, 0)

function love.load()
    love.mouse.setCursor(cursor)
    love.window.setTitle("Lily's Adventure")
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = true,
        resizable = true,
        vsync = true
    })

    blokletters = love.graphics.newFont('blokletters.ttf', 20)
    blokletters_big = love.graphics.newFont('blokletters.ttf', 50)

    loading:load()

    state = 'title'
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.clear(1, 1, 1, 1)

    if state == 'title' then
        title:draw()
    elseif state == 'loading' then
        loading:draw()
    end
end