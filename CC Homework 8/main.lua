--Some lyrics im writing as a fancover for a song I like. This will surely help me decide which lyrics I want to go with in the final product.

firstLine = {"Bow Down and Pray,","No Hope to Pray,","Why do you Pray,"}
secondLine = {"Cannot Delay,","No More Delays,","Please Don't Delay,"}
thirdLine = {"Nothing to Say,","No Voice to Say,","To Save the World,"}
fourthLine = {"Theyre on Their Way.","No Other Way.","There is One Way."}
fontSize = 30

require("L5")

function setup()
    size(500, 400)
    frameRate(60)
    windowTitle("Matthew Melican HW 8")
    describe('Song Lyrics Im writing for a vocal cover of a song uhhh I hope this counts.')
    background(0)
    textAlign(CENTER)
    textSize(30)
    -- The Grouping of Array and Random Elements
    sentenceBuilder(30)
end

function draw()
  -- Frame Count is Every 4 Seconds. 60*4=240
  if frameCount%240 == 0 then
    background(0)
    --sentenceBuilder is the "folder" for all the code below.
    sentenceBuilder(fontSize)
  end
end

function sentenceBuilder(fontSize)
--Inside the "folder"
  textSize(fontSize)
  text(random(firstLine), width/2, height*.3)
  text(random(secondLine), width/2, height*.5)
  text(random(thirdLine), width/2, height*.7)
  text(random(fourthLine), width/2, height*.9)
  text("4 Syllables in groups of 2.",width/2, height*0.15)
end