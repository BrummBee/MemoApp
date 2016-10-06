



import UIKit
import CoreData

class MemoryTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBAction func scanNewQR(_ sender: AnyObject)
    {
        let solutionLogger = SolutionLogger(viewController: UIViewController)
        solutionLogger.scanQRCodeAndCaptureImage { (qrCode: String, image: UIImage)  in
            // use qrCode and image
        }
    }
    
}




class MemoryTableViewController: UITableViewController
{
    var coreDataStack: CoreDataStack!
    let memoryMatchSize = 2
    
    var codesOfImages = [UIImage: String]()
    var memoryPairs = Array<Array<[UIImage:String]>>() // A array in a array with a dictionary
    
    let fetchRequest = MemoryPair.fetchRequest()
    let fetchRequest: NSFetchRequest<MemoryPair> = MemoryPair.fetchRequest()
    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    do {
    let pairs: [MemoryPair] = try coreDataStack.context.fetch(fetchRequest)
    
    
    
    } catch {
    print("error")
    }
    
    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return fruits.count/memoryMatchSize
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoryMatchSize
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtoCell", for: indexPath) as! MemoryTableViewCell
        
        let currentItemIndex = indexPath.section*memoryMatchSize + indexPath.row
        let fruitName = fruits[currentItemIndex]
        cell.cellLabel?.text = fruitName//memoryPairs[indexPath.section][indexPath.row]codesOfImages[]
        cell.cellImageView?.image = UIImage(named: fruitName)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pair \(section+1)"
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("an item was pressed..")
        let solutionLogger = SolutionLogger(viewController: self)
        solutionLogger.scanQRCodeAndCaptureImage { (qrCode: String, image: UIImage)  in
            // use qrCode and image
        
            
            print("capturing image for QR scan and image")
            //self.saveMemoryPair(image1: image1, code1: qrCode1, image2: image1, code2: qrCode1)
            
            
            
            // do some shit
        }
    }
    
    @IBAction func newPair(_ sender: AnyObject)
    {
        print("Create new Pair!")
        
        
        /*
        let memoryPair = MemoryPair(context: coreDataStack.context)
        memoryPair.creationDate = Date()
        memoryPair.image1 = nil
        memoryPair.text1 = nil
        memoryPair.image2 = nil
        memoryPair.text2 = nil
        coreDataStack.saveContext()*/
    }
    
    /*
    func saveMemoryPair(image1: UIImage, code1: String, image2: UIImage, code2: String)
        {
            print("trying to save Memory pair code1: \(code1), code2: \(code2)")
            let memoryPair = MemoryPair(context: coreDataStack.context)
            memoryPair.creationDate = Date()
            memoryPair.image1 = image1
            memoryPair.text1 = code1
            memoryPair.image2 = image2
            memoryPair.text2 = code2
            coreDataStack.saveContext()
        }*/
    
    /*
    let fetchRequest: NSFetchRequest<MemoryPair> = MemoryPair.fetchRequest()
    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    
    do {
    let pairs: [MemoryPair] = try coreDataStack.context.fetch(fetchRequest)
    
        
    
    } catch {
        print(error)
    }*/
    
    
    
    /*
    let fetchRequest: NSFetchRequest<MemoryPair> = MemoryPair.fetchRequest()
    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    
    do {
    let pairs: [MemoryPair] = try coreDataStack.context.fetch(fetchRequest)
    // display the memory pairs
    } catch {
    print(error)
    }*/
    
    
    //@IBOutlet weak var tableCell: UITableViewCell!
    
    /*
    let fetchRequest: NSFetchRequest<MemoryPair> = MemoryPair.fetchRequest()
    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
            
    do
    {
        let pairs: [MemoryPair] = try coreDataStack.context.fetch(fetchRequest)
        // display the memory pairs
    } catch {
        print(error)
    }
    
    /*
            let memoryPair = MemoryPair(context: self.coreDataStack.context)
            memoryPair.creationDate = Date()
            memoryPair.image1 = image
            memoryPair.text1 = qrCode
            self.coreDataStack.saveContext()

            
            // use qrCode and image
            //tableCell.
        */
            
        }
    }*/
    
}
