import UIKit
//Library import
import MarqueeLabel

class ViewController: UIViewController {
    
    //set MarqueeLabel class in label variable.
    var label = MarqueeLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the display area.
        label.frame = CGRect(x:0,y:100, width: view.frame.size.width, height: 100)
        
        // we will continuously display
        label.type = .continuous
        // how fast we will display our news
        label.speed = .rate(70)
        // we can set side fade length
        label.fadeLength = 10.0
        // Starting point, in this case, 30px from left edge
        label.leadingBuffer = 30.0
        // space between end and next start words
        label.trailingBuffer = 20.0
        
        //Text Align
        label.textAlignment = .left
        //Text Color
        label.textColor = .white
        //Description
        label.text = "[Breaking News] Noriaki is a Super Langara Developer. Hiring him is very competitive."
        
        //Display
        view.addSubview(label)
    }
}

