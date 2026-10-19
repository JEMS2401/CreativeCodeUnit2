KnifeX = 300
KnifeY = 300

require("L5")

function setup()
    size(600, 600)
    angleMode(DEGREES)
    rectMode(CENTER)
    windowTitle("Mouse Key Construction")
end

function draw()
background(0)

--This would be the knife
fill(255)
rect(KnifeX,KnifeY,20,20)

if keyIsDown('right') == true then
if KnifeX < width then
  KnifeX = KnifeX + 10
  end
end

  if keyIsDown('left') == true then
if KnifeX > 0 then
  KnifeX = KnifeX - 10  
end
end

    if keyIsDown('up') == true then
  if KnifeY > 0 then
  KnifeY = KnifeY - 10
  end
end

    if keyIsDown('down') == true then
 if KnifeY < height then
      KnifeY = KnifeY + 10
  end
end
end