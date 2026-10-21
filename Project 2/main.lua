require("L5")

BlueSkyHeight = 0

TestCircleY = 100
TestSquareY = 0
TestCircle2Y = -100
TestSquare2Y = -200

RouletteSpeed = 1

LeftArrowOpacity = 255
MidArrowOpacity = 255
RightArrowOpacity = 255

characterArray = {"TestCircleImage","TestSquareImage","TestCircle2Image","TestSquare2Image"}


function setup()
  size(700, 500)

  windowTitle("Matthew Melican Project 2")
  rectMode(CENTER)
  angleMode(DEGREES)
  noStroke()

  --Loading the Roulette Icon Images
  --TestCircleImage = loadImage('assets/TestCircleImage.png')
  --TestSquareImage = loadImage('assets/TestSquareImage.png')
  --TestCircleImage2 = loadImage('assets/TestCircleImage2.png')
  --TestSquareImage2 = loadImage('assets/TestSquareImage2.png')
end

function draw()
background(255)


--Box Roulette Icons
fill(0)
circle(width*.3,TestCircleY,20)
square(width*.3,TestSquareY,20)
--temp fill. Will replace all these with images hopefully
fill(255,0,0)
circle(width*.3,TestCircle2Y,20)
square(width*.3,TestSquare2Y,20)

-- Making the object move downward
  TestCircleY = TestCircleY + RouletteSpeed
TestSquareY = TestSquareY + RouletteSpeed
TestCircle2Y = TestCircle2Y + RouletteSpeed
TestSquare2Y = TestSquare2Y + RouletteSpeed

  -- If the object is off screen, it gets set back
  if TestCircleY > height*.4+100 then
    TestCircleY = -100
  end

  if TestSquareY > height*.4+100 then
    TestSquareY = -100
  end
  
  if TestCircle2Y > height*.4+100 then
    TestCircle2Y = -100
  end

  if TestSquare2Y > height*.4+100 then
    TestSquare2Y = -100
  end


--Sky Color. I have to form boxes to leave background room for the roulette to work.
fill(135, 206, 235)
--Left and Right Side
rect(0,height/2,width*.495,height)
rect(width,height/2,width*.495,height)
--Top and Bottom
rect(width/2,0,width,height*.65)
rect(width/2,height,width,height*1.05)
--Inbetween the Boxes
rect(width*.4,height*0.4, width*.09142857142, height)
rect(width*.6,height*0.4, width*.09142857142, height)


--Dark Blue Gradient for the Sky.
for i = 1, 15, 1 do
fill(4, 26, 64, 10)
rect(0, 0, width*2, BlueSkyHeight)

BlueSkyHeight = BlueSkyHeight + 15
end
--Resetting the variable to 0 so it doesn't infinitely grow.
BlueSkyHeight = 0

--Clouds to Stand On
fill(255)
ellipse(width*.35,height*.95,width*.5,height*.3)
ellipse(width*.05,height*.9,width*.5,height*.3)
ellipse(width*.65,height*.95,width*.5,height*.3)
ellipse(width*.95,height*.9,width*.5,height*.3)

--Clouds in the Sky
ellipse(width*0.1,height*0.30,width*.13,height*.10)
ellipse(width*0.07,height*0.28,width*.13,height*.10)

ellipse(width*0.9,height*0.30,width*.13,height*.10)
ellipse(width*0.93,height*0.28,width*.13,height*.10)

--Roulette Boxes
push()
stroke(0)
strokeWeight(4)
fill(255,0)
square(width*.3,height*0.4,75)
square(width*.5,height*0.4,75)
square(width*.7,height*0.4,75)

--UI Boxes
fill(255)
rect(0, 0, width*.55,height*.35)
rect(0, height, width*.55,height*.35)
rect(width, 0, width*.55,height*.35)
rect(width, height, width*.55,height*.35)
pop()



  -- Mouse Cursor Cords. Delete once done Coding
  fill(0)
  text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end





--Key Inputs to Stop Roulette
function keyPressed()
    if key == "left" then
RouletteSpeed = RouletteSpeed + 3

--image(random(characterArray),width*.3,height*0.4,75, width*0.1)

LeftArrowOpacity = 0
    else
end
if key == "up" then
RouletteSpeed = RouletteSpeed + 3

MidArrowOpacity = 0
    else
end
if key == "right" then
RouletteSpeed = RouletteSpeed + 3

RightArrowOpacity = 0
    else
end
end