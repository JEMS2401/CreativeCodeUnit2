TriangleRotation = 0

require("L5")

function setup()
  size(800, 600)
  angleMode(DEGREES)
  noStroke()
  windowTitle("Matthew Melican HW 7")
  describe('AAAAAAAAAAAA')
  for i = 1, 10, 1 do
    fill(random(100),random(100,255),random(100,255))
    ellipse(random(100,500),random(100,300),50,50)
  end
end

function draw()
background(255, 255, 255)

fill(0)
  push()
  rotate(TriangleRotation)
triangle(0,0,600,800,1000,800)
pop()

for RotTri = 1, 18, 1 do
  push()
  if RotTri%2 == 0 then
    fill(0)
  else
    fill(255)
  end
rotate(RotTri*20+TriangleRotation)
triangle(0,0,600,800,1000,800)
pop()
end

TriangleRotation = TriangleRotation + 0.5

end

function mousePressed()
  background(255,200)
  for i = 1, 10, 1 do
    fill(random(100),random(100,255),random(100,255))
    ellipse(random(0,800),random(400,600),random(20, 50),random(20, 50))
    ellipse(random(600,800),random(0,600),random(20, 50),random(20, 50))
  end

end