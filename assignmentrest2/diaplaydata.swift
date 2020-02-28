//
//  diaplaydata.swift
//  assignmentrest2
//
//  Created by admin on 24/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import CoreData
struct info
{
    let name: String
    let color: String
    let size: String
    let price: String
    let viewcount: String
    let ordercount: String
    let shares: String
}
class diaplaydata: UIViewController ,UITableViewDataSource,UITableViewDelegate{
 
    @IBOutlet weak var tblview: UITableView!
    @IBOutlet weak var lblquant: UILabel!
    @IBOutlet weak var lbltotalprice: UILabel!
    var dataadd = [info]()
    var total:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        tblview.rowHeight = 200
        total = 0
        getdatafromcore()
        lbltotalprice.text =  String (total)

    }
    override func viewWillAppear(_ animated: Bool) {
        

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataadd.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DisplaycelldataTableViewCell", for: indexPath) as! DisplaycelldataTableViewCell
        cell.lblnames.text = dataadd[indexPath.row].name
        cell.lblprice.text = dataadd[indexPath.row].price
        cell.lblcolor.text = dataadd[indexPath.row].color
        cell.delegate = self
        cell.index = indexPath.row
        var str = dataadd.count
        lblquant.text = String(str)
        return cell
    }
    
    func  getdatafromcore()
    {
        
        var arrprofile = [Products]()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Products")
        do{
            arrprofile = try context.fetch(fetchrequest) as! [Products]
            for item in arrprofile {
                let str1 = item.value(forKey: "name") as! String
                let str2 = item.value(forKey: "color")  as! String
                let str3 = item.value(forKey: "size")  as! String
                let str4 = item.value(forKey: "price")  as! String
                let str5 = item.value(forKey: "viewcount")  as! String
                let str6 = item.value(forKey: "order")  as! String
                let str7 = item.value(forKey: "shares")  as! String
                dataadd.append(info(name: str1, color:str2 , size: str3, price: str4, viewcount: str5, ordercount: str6, shares: str7))
                total = total + Int(String(str4))!
                
            }
        }
        catch let error{
            print(error.localizedDescription)
        }
        
    }
    @IBAction func btncancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
extension diaplaydata: removecell
{
    func remove(index: Int) {
        dataadd.remove(at: index )
        tblview.deleteRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
        total = total - Int(dataadd[index - 1].price)!
        lbltotalprice.text =  String (total)
        tblview.reloadData()
        
    }
    
    
}
