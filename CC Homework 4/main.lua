require("L5")

function setup()
  --window size. Angle units
size(700, 500)
angleMode(DEGREES)

--Program Title
windowTitle("Matthew Melican Homework 4")

--screen reader assistant
describe("A cave in the forest with two pink flowers nearby")
end

--Draw loop. Loops the draw. God I'm so unfunny sometimes.
function draw()

  --Things draw top to bottom, so hierarchy is reversed. Don't forget that Matty pls.

--Outline for all your drawings. Delete/Remove/Disable when finished.
noStroke()

  --Background color
background(198, 235, 255)

--Grass color
fill(81, 152, 88)
rect(0,300,700,200)

--Path color
fill(204, 196, 161)
quad(200,300,120,300,40,500,400,500)

--Tree color
fill(115, 99, 70)
rect(0,150,700,150)

--Tree lines
fill(0)
rect(670,150,10,150)
rect(500,150,10,150)
rect(330,150,10,150)

--Leaves colors
fill(50,105,55)
--all the little shapes
ellipse(89,105,300,200)
ellipse(340,80,400,250)
ellipse(635,110,350,175)

--Rocks colors
fill(112,112,112)
--all the little shapes
ellipse(30,290,140,100)
ellipse(70,260,140,100)
ellipse(110,200,140,100)
ellipse(150,180,140,100)
ellipse(210,200,140,100)
ellipse(240,260,140,100)
ellipse(290,290,140,100)
ellipse(210,270,300,100)
ellipse(150,300,300,100)
ellipse(210,300,300,100)

--Cave entrance color
fill(35,35,35)
quad(103,355,250,355,122,247,210,247)
ellipse(170,282,150,150)

--flower stems
fill(0)
rect(530,400,10,80)
rect(640,360,10,80)

--flowers
fill(254,157,255)
ellipse(535,400,40,80)
ellipse(535,400,80,40)
ellipse(645,360,40,80)
ellipse(645,360,80,40)

fill(255,255,255)
circle(535,400,20)
circle(645,360,20)

-- Mouse Coordinate Positions
  fill(0)
  text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end