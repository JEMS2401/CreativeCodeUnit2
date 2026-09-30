-- Circle Scale
CircleSize = 200
CircleChange = 0.5

--Circle Scale 2
Circle2Size = 1
Circle2Change = 0.5

-- Spliting in Half Bar
rectX = -100
rectNX= -300
rectX2 = -500
rectNX2 = -700

require("L5")

function setup()
  size(600, 500)
  windowTitle("Matthew Melican Homework 6")
  
  --No Outlines
noStroke()
  
--Rectangle Origin Point  
rectMode(CENTER)
  
  angleMode(DEGREES)
end

function draw()
  if mouseY > height/2 then
    background(0)
else
background (255, 255, 255)
end

-- Second part of BG
if mouseY > height/2 then
    fill(255, 255, 255)
else
fill (0)
end
rect(width*.5, height, width, height)

  -- Splitting Bars
if mouseY > height/2 then
    fill(255, 255, 255)
else
fill (0)
end
  rect(rectX,height*0.5,width*.4,height/20)
  rectX = rectX + 5

  if rectX > 700 then
    rectX = -100
  end

  rect(rectX2,height*0.5,width*.4,height/20)
  rectX2 = rectX2 + 5
  
  if rectX2 > 700 then
    rectX2 = -100
  end

  --Splitting Bars 2
  if mouseY > height/2 then
    fill(0)
else
fill (255, 255, 255)
end
  rect(rectNX,height*0.5,width*.3,height/20)
  rectNX = rectNX + 5

  if rectNX > 700 then
    rectNX = -100
  end

  rect(rectNX2,height*0.5,width*.3,height/20)
  rectNX2 = rectNX2 + 5
  
  if rectNX2 > 700 then
    rectNX2 = -100
  end

  --Circle Top
if mouseY > height/2 then
    fill(255, 255, 255)
else
fill (0)
end
circle(width/2, height/4, CircleSize)

CircleSize = CircleSize + CircleChange

if CircleSize > 200 or CircleSize < 1 then
    CircleChange = CircleChange * -1
  end

  --Circle Bottom
if mouseY > height/2 then
    fill(0)
else
fill (255, 255, 255)
end
circle(width/2, height*.75, Circle2Size)

Circle2Size = Circle2Size + Circle2Change

if Circle2Size > 200 or Circle2Size < 1 then
    Circle2Change = Circle2Change * -1
  end

end