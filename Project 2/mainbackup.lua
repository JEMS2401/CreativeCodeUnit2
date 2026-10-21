require("L5")

BlueSkyHeight = 0

TestCircleY = 0

function setup()
  size(700, 500)

  windowTitle("Matthew Melican Project 2")
  rectMode(CENTER)
  angleMode(DEGREES)
  noStroke()
end

function draw()
background(255)


--Box Roulette Icons
circle(width*.3,TestCircleY,20)




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