wwidth = 1600
wheight = 900


vwidth = 1920
vheight = 1080

score=0



Class = require 'class'
push = require 'push'

 
function love.load()

    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('Click')
    scorefont = love.graphics.newFont('04b_30__.ttf', 128)
    fpsfont= love.graphics.newFont('font.TTF', 32)

    push:setupScreen(vwidth, vheight, wwidth, wheight, {
        fullscreen = false,
        vsync = true, 
        resizable = true
    })
end

function love.resize(w, h)
    push:resize(w, h)
end


function love.mousepressed(x, y, button, istouch)
    if button == 1 then 
       score=score+1
    end
end

function love.draw()

   
    push:apply('start')


    love.graphics.clear(0 / 255, 100 / 255, 255 / 255, 255 / 255)
    love.graphics.setFont(scorefont)
    love.graphics.printf(score, 0, wheight/2, vwidth, 'center')
    displayFPS()
    

    push:apply('end') 
end


function displayFPS()
  
    love.graphics.setColor(0, 1, 0, 1)
   
    love.graphics.setFont(fpsfont)
    
    love.graphics.print('FPS:' .. tostring(love.timer.getFPS()), 40, 20)
   
    love.graphics.setColor(1, 1, 1, 1)
end