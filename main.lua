-- Global state
bat = {
  x = 10,
  y = 0,
  width = 100,
  height = 20
}

-- Initialization
function love.load()
    love.window.setMode(400, 300, {resizable=false, vsync=false, minwidth=400, minheight=300})
end

-- Updates and drawing
function love.draw()
  love.graphics.print("Hello World!", 400, 300)
  bat.y = love.graphics.getHeight() - 30
  love.graphics.rectangle("fill", bat.x, bat.y, bat.width, bat.height)
end

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
end

function love.update(dt)
  if love.keyboard.isDown('left') then
    bat.x = bat.x - dt*100
  end
  if love.keyboard.isDown('right') then
    bat.x = bat.x + dt*100
  end
end
