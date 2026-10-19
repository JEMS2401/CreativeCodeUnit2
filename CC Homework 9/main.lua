require("L5")

TintHeight = 0
TintHeight2 = 0

function setup()
    size(600, 700)
    angleMode(DEGREES)
    windowTitle("Matthew Melican Homework 9")

    describe('Landscape Image with An Orange Sunset Gradient Applied to it')

    --Loading the Image
    LandImage = loadImage('assets/Landscape.jpg')

noStroke()
end

function draw()

--Landscape Image Import with Red Tint
tint(200, 50, 50)
    image(LandImage, 0, 4/height, width)
noTint()


--Orange Sunset Loop. Stacks the 20 Opacity rectangles ontop of each other like pancakes.
for i = 1, 35, 1 do
fill(253, 94, 83, 20)
rect(0, 0, width, TintHeight)

TintHeight = TintHeight + 20
end

--Dark Blue Sky Loop.
for i = 1, 20, 1 do
fill(4, 26, 64, 20)
rect(0, 0, width, TintHeight2)

TintHeight2 = TintHeight2 + 20
end

--Resets the TintHeight back to 0 so it doesn't infinitely grow.
TintHeight = 0
TintHeight2 = 0

--Sun and its Glow Effect
fill(255, 255, 255,70)
circle(width/2,100,250)

fill(255, 255, 150,110)
circle(width/2,100,200)

fill(255,255,75,170)
circle(width/2,100,150)

fill(255,255,0, 200)
circle(width/2,100,100)
end