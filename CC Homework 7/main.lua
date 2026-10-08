--SMALL AMOUNT OF EPILEPSY WARNING!!!!!

TriangleRotation = 0
Incriment = 0
ElipseXVariable = 0
ElipseYVariable = 0
TwoElipseXVariable = 0
TwoElipseYVariable = 0
ThreeElipseXVariable = 0
ThreeElipseYVariable = 0
FourElipseXVariable = 0
FourElipseYVariable = 0

require("L5")

function setup()
  size(800, 600)
  angleMode(DEGREES)
  noStroke()
  windowTitle("Matthew Melican HW 7")
  describe('I dont know how to slow the randomness down its way too fast but like I have midterms to prepare for so uh if it aint broke')
end

function draw()

--Elipse X and Y Values, Changes every 20 Frames
Incriment = Incriment + 1
if Incriment > 20 then
Incriment = Incriment - 20
ElipseXVariable = random(0, 800)
ElipseYVariable = random(400,600)
TwoElipseXVariable = random(0, 800)
TwoElipseYVariable = random(400,600)
ThreeElipseXVariable = random(600, 800)
ThreeElipseYVariable = random(0,600)
FourElipseXVariable = random(600, 800)
FourElipseYVariable = random(0,600)
else
end


background(255)
fill(0)
  push()
  rotate(TriangleRotation)
triangle(0,0,600,800,1000,800)
pop()

--Roating Pinwheel
for RotTri = 1, 18, 1 do
  push()
  if RotTri%2 == 0 then
    fill(211, 175, 255)
  else
    fill(192, 255, 209)
  end
rotate(RotTri*20+TriangleRotation)
triangle(0,0,600,800,1000,800)
pop()
end

TriangleRotation = TriangleRotation + 0.5

--Horizontal Elipses Randomly Popping Up
for ElipseRandom = 1, 10, 1 do
if ElipseRandom%10 == 0 then
    fill(255, 72, 176)
    ellipse(ElipseXVariable,ElipseYVariable,random(20, 70),random(20, 50))
    fill(255, 232, 0)
    ellipse(TwoElipseXVariable,TwoElipseYVariable,random(20, 50),random(20, 70))

    fill(255, 72, 176)
    ellipse(ThreeElipseXVariable,ThreeElipseYVariable,random(20, 70),random(20, 50))
    fill(255, 232, 0)
    ellipse(FourElipseXVariable,FourElipseYVariable,random(20, 50),random(20, 70))
else
end
  end
  end