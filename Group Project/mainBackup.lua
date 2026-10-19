local customimg
local customfont

KnifeX = 300
KnifeY = 600

InvisLe = 0
InvisRe = 0
InvisLm = 0
InvisRm = 0
InvisCm = 0
pR = {242,140,247,216,53}
pG = {162,162,204,99,82}
pB = {24,219,123,60,44}
pIndex = 1

require("L5")


function setup()
  size(600, 600)
  windowTitle('Collaboration Project')
  -- Custom Font and Image Import
  customimg = loadImage('assets/Newspaper.png')
  customfont = loadFont('Assets/PKMN.ttf')
  textFont(customfont)
  textAlign(CENTER)
  angleMode(DEGREES)
  textSize(60)
end


InvisLe = 0
InvisRe = 0
InvisLm = 0
InvisRm = 0
InvisCm = 0
pR = {242,140,247,216,53}
pG = {162,162,204,99,82}
pB = {24,219,123,60,44}
pIndex = 1


function draw()
-- Draw the Newspaper.
image(customimg, 0, 0, width, height)

--Pumpkin and Carving
fill(67,97,12)
rect(269,50,48,90)
triangle(180,40,301,24,316,46)
 circle(300,300,400)
 fill(pR[pIndex],pG[pIndex],pB[pIndex])




  ellipse(250,300,300,400)




  fill(pR[pIndex],pG[pIndex],pB[pIndex])




ellipse(350,300,300,400)
 fill(pR[pIndex],pG[pIndex],pB[pIndex])
  ellipse(300,300,200,400)
 fill(pR[pIndex],pG[pIndex],pB[pIndex])
  ellipse(300,300,100,400)
 fill(pR[pIndex],pG[pIndex],pB[pIndex])
  ellipse(300,300,50,400)
 fill(pR[pIndex],pG[pIndex],pG[pIndex])


 --carving
 if KnifeY < 550 then
fill(226, 88, 34,InvisLe)
else
fill(0,InvisLe)
end
  triangle(231,199,249,286,199,272)
 
  if KnifeY < 550 then
fill(226, 88, 34,InvisRe)
else
fill(0,InvisRe)
end
  triangle(373,203,348,290,396,292)



if KnifeY < 550 then
fill(226, 88, 34,InvisLm)
else
fill(0,InvisLm)
end
  rect(184,367,40,60)

if KnifeY < 550 then
fill(226, 88, 34,InvisRm)
else
fill(0,InvisRm)
end
  rect(384,367,40,60)

if KnifeY < 550 then
fill(226, 88, 34,InvisCm)
else
fill(0,InvisCm)
end
  triangle(204,392,399,390,295,454)


  -- Knife on Mouse
  fill(120,120,120)
  triangle(mouseX-10,mouseY,mouseX-10, mouseY-70, mouseX+25, mouseY)
  arc(mouseX-17, mouseY-16, 88, 104,-80, 20, CHORD)
  strokeWeight(7)
  stroke(200,200,200)
  arc(mouseX-15, mouseY-16, 70, 90,-80, 20, OPEN)
  noStroke()
  fill(20,20,100)
  rect(mouseX-8, mouseY, 14, 35)
  circle(mouseX-1,mouseY+35,13)
  fill(120,120,120)
  stroke(0)
  strokeWeight(1)
  circle(mouseX-1, mouseY+5, 8)
  circle(mouseX-1,mouseY+17, 8)
  circle(mouseX-1, mouseY+29, 8)

--My Candle! (Key Movement)
fill(135, 215, 190)
push()
rectMode(CENTER)
noStroke()
fill(243, 227, 194)
rect(KnifeX,KnifeY,20,80)
fill(247, 55, 24)
ellipse(KnifeX,KnifeY-40,30,60)
fill(251, 183, 65)
ellipse(KnifeX,KnifeY-40,15,40)
pop()

--Mouse Movement
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


--Pumpkin Carving
function keyPressed()
  if key == 'c' then
if mouseX > 200 and mouseX < 285 then
  if mouseY > 200 and mouseY < 285 then
      InvisLe = 255
       
      end


end
end
if mouseX > 320 and mouseX < 405 then
  if mouseY > 200 and mouseY < 285 then
    InvisRe = 255
  end
 
  end
  if mouseX > 180 and mouseX < 245 then
  if mouseY > 360 and mouseY < 425 then
    InvisLm = 255
end




  end
  if mouseX > 380 and mouseX < 430 then
  if mouseY > 360 and mouseY < 425 then
    InvisRm = 255
  end
end
if mouseX > 200 and mouseX < 380 then
  if mouseY > 390 and mouseY < 450 then
    InvisCm = 255
     elseif key == 'r' then
    InvisLe = 0
    InvisRe = 0
    InvisLm = 0
    InvisRm = 0
    InvisCm = 0
  elseif key == 'p' then
    pIndex = pIndex + 1
  if pIndex > 5 then
    pIndex = 1
  end
end
end

end