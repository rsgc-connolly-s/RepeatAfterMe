//: # Your goal
//: ![goal](scenario-one.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 360 pixels wide by 360 pixels high
 * rainbow circles, circles in upper left, and squares in lower right must be exactly as shown
 * the "bites" taken out of the rainbow circle are randomly generated as follows:
 ​position varies as high as 50 pixels and as low as 50 pixels below horizontal centre line of image
 * when position is below centre line, opacity is 75%
 * when position is above centre line, opacity is 25%
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 360, height: 360)

// Loop three times
//for i in 1...3 {
//    
//    // Generate random number between -75 and 75
//    let offset = Int(arc4random_uniform(150)) - 75
//    
////    Draw circles in random horizontal positions in the middle of the canvas
//   canvas.drawEllipse(centreX: canvas.width / 2 + offset, centreY: 100 * i , width: 50, height: 50)
//
//}

// Modify code above as needed and continue writing code below as needed... 

//Draw Squares and Circles
for x in stride(from: 10, through: 100, by: 10){
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    canvas.borderColor = Color.black
    
    canvas.drawEllipse(centreX: 50, centreY: 310, width: x, height: x)
    canvas.drawRectangle(bottomLeftX: 260 + x, bottomLeftY: 0, width: 100 - x, height: 100 - x)
}






//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
