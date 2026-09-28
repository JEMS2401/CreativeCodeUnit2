require("L5")

function setup()
  --window size. Angle units
size(600, 600)
angleMode(DEGREES)

--Program Title
windowTitle("Matthew Melican Homework 5")

--screen reader assistant
describe("Super cool homework CHANGE THIS")
end

function draw()

  --Things draw top to bottom.

--removes the outline for all your drawings.
noStroke()

  --Background color
background(0)

fill(220,50,50)
rect(width/2,height/2,width*.5,height*.5)

fill(120,120,120)
ellipse(mouseX,mouseY,width*0.2,height*0.1)
ellipse(mouseX,mouseY-20,width*0.15,height*0.15)
fill(255)
ellipse(mouseX,mouseY-35,width*0.05,height*0.05)

-- Mouse Coordinate Positions
  fill(0)
  text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end