require("L5")

--Sky Height for Gradient
BlueSkyHeight = 0

--Smaller Icon Roulette Heights to Scroll.
TestCircleY = 100
TestSquareY = 0
TestCircle2Y = -100
TestSquare2Y = -200

RouletteSpeed = 1

--Instruction Keys Opacity
LeftArrowOpacity = 255
MidArrowOpacity = 255
RightArrowOpacity = 255

--Big Icons that show up After Clicking.
LeftIconHeight = 0
RightIconHeight = 0
MiddleIconHeight = 0

--Smaller Icon Roulette Widths to make them Disappear.
LeftBoxIconWidth = 700*.3
MidBoxIconWidth = 700*.5
RightBoxIconWidth = 700*.7

--Checking if the Roulette has been Chosen
LeftBoxCheck = 0
MidBoxCheck = 0
RightBoxCheck = 0

--Left and Right Winners
LeftPlayerStars = 0
LeftPlayerCoins = 0

RightPlayerStars = 0
RightPlayerCoins = 0

--Has the UI changed?
UIUpdate = false


function setup()
  size(700, 500)
  windowTitle("Use the Left, Up, and Right Arrows")
  rectMode(CENTER)
  angleMode(DEGREES)
  noStroke()

  --Loading the Roulette Icon Images
  TestCircleImage = loadImage('assets/TestCircleImage1.png')
  TestSquareImage = loadImage('assets/TestSquareImage1.png')
  TestCircleImage2 = loadImage('assets/TestCircleImage2.png')
  TestSquareImage2 = loadImage('assets/TestSquareImage2.png')

  Left1Star = loadImage('assets/Left1StarImage.png')
  Right2Star = loadImage('assets/Right2StarImage.png')
  Left30Coins = loadImage('assets/Left10CoinsImage.png')
  Right10Coins = loadImage('assets/Right30CoinsImage.png')

  --Image Array for Random Generation
IconOutput = {TestCircleImage,TestSquareImage,TestCircleImage2,TestSquareImage2}
SpecialMidIconOutput = {Left1Star,Right2Star,Left30Coins,Right10Coins}

  --Output of the Roulette for Random Generation
LeftCurrentOutput = TestCircleImage
MidCurrentOutput = Left1Star
RightCurrentOutput = TestCircleImage

--Initial UI Text Arrangement. Int makes it so that it only outputs whole numbers.
Player1Stars = int(random(2,5))
Player1Coins = int(random(20,80))
Player2Stars = int(random(2,5))
Player2Coins = int(random(20,80))
Player3Stars = int(random(2,5))
Player3Coins = int(random(20,80))
Player4Stars = int(random(2,5))
Player4Coins = int(random(20,80))

end

function draw()
background(255)


--Box Roulette Icons Set 1. Left.
image(TestCircleImage,LeftBoxIconWidth-38,TestCircleY,75, width*0.1)
image(TestSquareImage,LeftBoxIconWidth-38,TestSquareY,75, width*0.1)
image(TestCircleImage2,LeftBoxIconWidth-38,TestCircle2Y,75, width*0.1)
image(TestSquareImage2,LeftBoxIconWidth-38,TestSquare2Y,75, width*0.1)

--Box Roulette Icons Set 2. Middle.
image(Left1Star,MidBoxIconWidth-38,TestCircleY,75, width*0.1)
image(Right2Star,MidBoxIconWidth-38,TestSquareY,75, width*0.1)
image(Left30Coins,MidBoxIconWidth-38,TestCircle2Y,75, width*0.1)
image(Right10Coins,MidBoxIconWidth-38,TestSquare2Y,75, width*0.1)

--Box Roulette Icons Set 3. Right.
image(TestCircleImage,RightBoxIconWidth-38,TestCircleY,75, width*0.1)
image(TestSquareImage,RightBoxIconWidth-38,TestSquareY,75, width*0.1)
image(TestCircleImage2,RightBoxIconWidth-38,TestCircle2Y,75, width*0.1)
image(TestSquareImage2,RightBoxIconWidth-38,TestSquare2Y,75, width*0.1)


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

--Big Icon Image When Keys are Pressed.
image(LeftCurrentOutput,width*.247,LeftIconHeight,75, width*0.1)
image(MidCurrentOutput,width*.447,MidIconHeight,75, width*0.1)
image(RightCurrentOutput,width*.647,RightIconHeight,75, width*0.1)

--Sky Color. I have to form boxes to leave background room for the roulette to work.
fill(0, 120, 191)
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
fill(255, 72, 176, 10)
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
stroke(255, 232, 0)
strokeWeight(4)
fill(0, 0)
square(width*.3,height*0.4,75)
square(width*.5,height*0.4,75)
square(width*.7,height*0.4,75)
pop()
--UI Boxes
push()
stroke(255, 72, 176)
strokeWeight(4)
fill(255)
rect(0, 0, width*.55,height*.35)
rect(0, height, width*.55,height*.35)
rect(width, 0, width*.55,height*.35)
rect(width, height, width*.55,height*.35)
pop()


--UI Text Setup
push()
fill(0)
textAlign(LEFT)
textSize(20)

--Top Left
text(Player1Stars.." Stars",width*.12,height*.06)
text(Player1Coins.." Coins",width*.12,height*.14)
image(TestCircleImage,width*.02,height*.04)


--Top Right
text(Player2Stars.." Stars",width*.85,height*.06)
text(Player2Coins.." Coins",width*.85,height*.14)
image(TestSquareImage,width*.75,height*.04)

--Bottom Left
text(Player3Stars.." Stars",width*.12,height*.9)
text(Player3Coins.." Coins",width*.12,height*.98)
image(TestCircleImage2,width*.02,height*.88)

--Bottom Right
text(Player4Stars.." Stars",width*.85,height*.9)
text(Player4Coins.." Coins",width*.85,height*.98)
image(TestSquareImage2,width*.75,height*.88)

pop()

--Checking What Two Players are in the Roulette. Left Side
if LeftCurrentOutput == TestCircleImage
then
LeftPlayerStars = Player1Stars
LeftPlayerCoins = Player1Coins
else
if LeftCurrentOutput == TestSquareImage
then
LeftPlayerStars = Player2Stars
LeftPlayerCoins = Player2Coins
else
if LeftCurrentOutput == TestCircleImage2
then
LeftPlayerStars = Player3Stars
LeftPlayerCoins = Player3Coins
else
if LeftCurrentOutput == TestSquareImage2
then
LeftPlayerStars = Player4Stars
LeftPlayerCoins = Player4Coins
else
end
end
end
end

--Checking What Two Players are in the Roulette. Right Side
if RightCurrentOutput == TestCircleImage then
RightPlayerStars = Player1Stars
RightPlayerCoins = Player1Coins
else
if RightCurrentOutput == TestSquareImage
then
RightPlayerStars = Player2Stars
RightPlayerCoins = Player2Coins
else
if RightCurrentOutput == TestCircleImage2
then
RightPlayerStars = Player3Stars
RightPlayerCoins = Player3Coins
else
if RightCurrentOutput == TestSquareImage2
then
RightPlayerStars = Player4Stars
RightPlayerCoins = Player4Coins
else
end
end
end
end

--When all 3 boxes are done, the UI changes values
if LeftBoxCheck == 1 and MidBoxCheck == 1 and RightBoxCheck == 1 and UIUpdate == false
then
if MidCurrentOutput == Left1Star then
LeftPlayerStars = LeftPlayerStars + 1
RightPlayerStars = RightPlayerStars - 1
UIUpdate = true
else
if MidCurrentOutput == Right2Star then
LeftPlayerStars = LeftPlayerStars - 2
RightPlayerStars = RightPlayerStars + 2
UIUpdate = true
else
--I drew the images wrong so Left is 10 and Right is 30.
if MidCurrentOutput == Left30Coins then
LeftPlayerCoins = LeftPlayerCoins + 10
RightPlayerCoins = RightPlayerCoins - 10
UIUpdate = true
else
if TestCircleImage2 == Right10Coins then
LeftPlayerCoins = LeftPlayerCoins - 30
RightPlayerCoins = RightPlayerCoins + 30
UIUpdate = true
else
end
end
end
end
end

--Updating the Initial Coin and Star Count Text. Right
if RightCurrentOutput == TestCircleImage then
Player1Stars = RightPlayerStars
Player1Coins = RightPlayerCoins
else
if RightCurrentOutput == TestSquareImage then
Player2Stars = RightPlayerStars
Player2Coins = RightPlayerCoins
else
if RightCurrentOutput == TestCircleImage2 then
Player3Stars = RightPlayerStars
Player3Coins = RightPlayerCoins
else
if RightCurrentOutput == TestSquareImage2 then
Player4Stars = RightPlayerStars
Player4Coins = RightPlayerCoins
else
end
end
end

--Updating the Initial Coin and Star Count Text. Left
if LeftCurrentOutput == TestCircleImage then
Player1Stars = LeftPlayerStars
Player1Coins = LeftPlayerCoins
else
if LeftCurrentOutput == TestSquareImage then
Player2Stars = LeftPlayerStars
Player2Coins = LeftPlayerCoins
else
if LeftCurrentOutput == TestCircleImage2 then
Player3Stars = LeftPlayerStars
Player3Coins = LeftPlayerCoins
else
if LeftCurrentOutput == TestSquareImage2 then
Player4Stars = LeftPlayerStars
Player4Coins = LeftPlayerCoins
else
end
end
end
end
end

end


--Key Inputs to Stop Roulette
function keyPressed()
    if key == "left" then
--The Roulette of Every Box Speeds Up.
RouletteSpeed = RouletteSpeed + 3
--The Big Icon Gets put into the Box.
LeftIconHeight = height*0.33
--The Smaller Icons get moved off screen.
LeftBoxIconWidth = 0
--The Arrow Icon turns transparent.
LeftArrowOpacity = 0
--Left Box Check Set to 0
LeftBoxCheck = 1
--Generate the Output of the Specific Box!
LeftCurrentOutput = random(IconOutput)

--Reroll if Right was the same as Left
if RightBoxCheck == 1 then
while LeftCurrentOutput == RightCurrentOutput do
LeftCurrentOutput = random(IconOutput)
end
end
end

if key == "up" then
RouletteSpeed = RouletteSpeed + 3

MidIconHeight = height*0.33

MidBoxIconWidth = 0

MidArrowOpacity = 0

MidBoxCheck = 1

MidCurrentOutput = random(SpecialMidIconOutput)
    else
end

if key == "right" then
RouletteSpeed = RouletteSpeed + 3

RightIconHeight = height*0.33

RightBoxIconWidth = 0

RightArrowOpacity = 0

RightBoxCheck = 1

RightCurrentOutput = random(IconOutput)

if LeftBoxCheck == 1 then
while RightCurrentOutput == LeftCurrentOutput do
RightCurrentOutput = random(IconOutput)
end
end
end
end