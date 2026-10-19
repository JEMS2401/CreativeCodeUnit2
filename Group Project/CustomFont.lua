local customfont
require("L5")

function setup()
  size(600,600)
  fill('deeppink')
  --Folder Located in the same place as the main.lua and L5. Contains your font.
  customfont = loadFont('Assets/PKMN.ttf')
  textFont(customfont)
  textAlign(CENTER)
  textSize(60)
  background(255)
  text('You guys shouldnt have given', 300, 250)
  text('me font control hehehehehe', 300, 350)
end
