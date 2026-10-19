local customimg
require("L5")

function setup()
  size(600, 600)
  windowTitle('loadImage example')
  -- Same deal as the font
  customimg = loadImage('assets/Newspaper.png')
  -- Draw the image.
  image(customimg, 0, 0, width, height)

end