function love.load()
    pilka = love.graphics.newImage("pilka.png")
    x = 250
    y = 200
    speed = 300
    Def = love.audio.newSource("definicja.mp3","static")
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        x=x+(speed*dt)
    end
    
    if love.keyboard.isDown("left") then
        x=x-(speed*dt)
    end
    
    if love.keyboard.isDown("down") then
        y=y+(speed*dt)
    end
    
    if love.keyboard.isDown("up") then
        y=y-(speed*dt)
    end
end 

function love.draw()
    love.graphics.print(x,20,40)
    love.graphics.print(y,200,40)
    love.graphics.draw(pilka,x,y)
    if (x>615 or x <-105 or y > 310 or y < -100) then
        love.graphics.print('Wychodzisz poza schemat buntowniczko ... ;)',25,25)
        love.audio.play(Def)
    
    end
end
