require("L5")

function setup()
size(700, 400)
angleMode(DEGREES)

--Program Title
windowTitle("Matthew Melican Homework 5")

--screen reader assistant
describe("A cityscape at nighttime.")
end

function draw()

  --Things draw top to bottom.

--removes the outline for all your drawings.
noStroke()

  --Background color
background(4,0,21)

--Blue semicircle
fill(15,0,89)
circle(width*.5,height,height*1.85)

--Moon
fill(249,255,180)
circle(width*.5,height*.3,height*.35)

--Buildings Back
fill(21,21,21)
rect(width*.1,height*.6,width*.25,height)
rect(width*.65,height*.65,width*.25,height)

--Top of Building Back Thing
rect(width*.28,height*.58,width*.04,height)
rect(width*.295,height*.53,width*.01,height)

--Lights Back
fill(103,110,33)
rect(width*.28,height*.64,width*.05,height*.03)
rect(width*.27,height*.9,width*.05,height*.03)
rect(width*.67,height*.7,width*.05,height*.03)
rect(width*.7,height*.85,width*.05,height*.03)

--Buildings Mid
fill(63,63,63)
rect(0,height*.52,width*.25,height)
rect(width*.73,height*.55,width*.2,height)

--Top of Building Middle Thing
rect(width*.78,height*.53,width*.05,height)
rect(width*.798,height*.48,width*.013,height)

--Lights Mid
fill(177,187,69)
rect(0,height*.55,width*.07,height*.06)
rect(width*.02,height*.85,width*.07,height*.06)
rect(width*.15,height*.63,width*.07,height*.06)
rect(width*.79,height*.7,width*.07,height*.06)
rect(width*.76,height*.9,width*.07,height*.06)

--Buildings Front
fill(91,91,91)
rect(width*.06,height*.65,width*.25,height)
rect(width*.8,height*.6,width*.25,height)

--Top of Building Front Thing
rect(width*.16,height*.615,width*.07,height)
rect(width*.185,height*.53,width*.02,height)

--Lights Front
fill(241,255,94)
rect(width*.07,height*.7,width*.07,height*.09)
rect(width*.2,height*.9,width*.09,height*.08)
rect(width*.95,height*.7,width*.07,height*.09)
rect(width*.82,height*.85,width*.08,height*.08)

  --Mouse Art Plane
  fill(0)
ellipse(mouseX, mouseY, width / 10, height / 20)
ellipse(mouseX-20, mouseY, width / 10, height / 15)
quad(mouseX-20, mouseY, mouseX-10, mouseY, mouseX-30, mouseY-30, mouseX+20, mouseY+20)
quad(mouseX+20, mouseY, mouseX+20, mouseY, mouseX+30, mouseY-30, mouseX+30, mouseY+20)

--Mouse Art Lights
fill(59, 63, 20)
rect(mouseX+15, mouseY, width*.01, height*.01)
rect(mouseX-5, mouseY, width*.01, height*.01)
rect(mouseX-25, mouseY, width*.01, height*.01)

end