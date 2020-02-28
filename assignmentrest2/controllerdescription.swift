//
//  controllerdescription.swift
//  assignmentrest2
//
//  Created by admin on 24/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import CoreData
import Firebase
import FirebaseDatabase

struct inform
{
    let name:String
    let color:String
    let size:String
    let price: String
    let count: String
    let ordered:String
    let shares:String
}
class controllerdescription: UIViewController {

    @IBOutlet weak var lblnames: UILabel!
    @IBOutlet weak var lblcolor: UILabel!
    @IBOutlet weak var lblsize: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var lblcount: UILabel!
    @IBOutlet weak var lblordered: UILabel!
    @IBOutlet weak var lblshares: UILabel!
    var data = [inform]()
     var name: String = ""
     var color: String = ""
     var size: String = ""
     var price: String = ""
     var viewcount:String = ""
     var ordered:String = ""
     var shares: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblnames.text = name
        lblcolor.text = color
        lblsize.text = size
        lblprice.text = price
        lblcount.text = viewcount
        lblordered.text = ordered
        lblshares.text = shares
        showdata()
    }
    
    func showdata()
    {
        let ref = Database.database().reference()
        ref.observeSingleEvent(of: .value, with: { snapshot in

            if !snapshot.exists() { return }
            print(snapshot)
            
            
        })
        
    }
    @IBAction func btnaddtocart(_ sender: Any) {
        
        let ref = Database.database().reference()
        data.append(inform(name: name, color: color, size: size, price: price, count: viewcount, ordered: ordered, shares: shares))
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let profile = NSEntityDescription.insertNewObject(forEntityName: "Products", into: context) as! Products
        profile.name = name
        profile.color = color
        profile.size = size
        profile.price = price
        profile.viewcount = viewcount
        profile.order = ordered
        profile.shares = shares
        do{
            ref.childByAutoId().setValue(["name":name,"color":color,"size":size,"price":price,"viewcount":viewcount,"order":ordered,"shares":shares])
            try context.save()
          }
        catch let error{
            print(error.localizedDescription)
        }
        let alert = UIAlertController(title: "ADD PRODUCT", message: "Product Added Successfully", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnshop(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "diaplaydata") as! diaplaydata
        self.present(vc, animated: true, completion: nil)
    }
    
}
