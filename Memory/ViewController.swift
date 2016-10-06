

import UIKit
import CoreData


class ViewController: UIViewController
{
    
    @IBAction func captureImageWithQRCode(_ sender: UIButton) {
        let solutionLogger = SolutionLogger(viewController: self)
        solutionLogger.scanQRCodeAndCaptureImage { (qrCode: String, image: UIImage)  in
            // use qrCode and image
        }
    }
    
    /*
    let memoryTableViewController = MemoryTableViewController()
    
    let solutionLogger = SolutionLogger(viewController: self)
    solutionLogger.scanQRCodeAndCaptureImage { (qrCode1: String, image1: UIImage)  in
    
    self.memoryTableViewController.saveMemoryPair(image1: image1, code1: qrCode1, image2: image1, code2: qrCode1)
 
    
    
    // do some shit
    }*/
    
    //@IBOutlet weak var cellLabel: UILabel!
    
    /*
    @IBAction func captureImageWithQRCode(_ sender: AnyObject)
    {
        let solutionLogger = SolutionLogger(viewController: self)
        solutionLogger.scanQRCodeAndCaptureImage { (qrCode1: String, image1: UIImage)  in
            
            self.memoryTableViewController.saveMemoryPair(image1: image1, code1: qrCode1, image2: image1, code2: qrCode1)
            
            
            
            // do some shit
        }
    
    
    }*/
    /*
    
    @IBAction func testAction(_ sender: AnyObject)
    {
        cellLabel.text = "TestText"
    }*/
    /*@IBAction func captureImageWithQRCode(_ sender: UIButton)
    {
        */

}

