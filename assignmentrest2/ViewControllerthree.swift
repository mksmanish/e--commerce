//
//  ViewControllerthree.swift
//  assignmentrest2
//
//  Created by admin on 20/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import SwiftyJSON
class ViewControllerthree: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tblview: UITableView!
    var bottom1 = [String]()
    var foot1 = [String]()
    var upper1 = [String]()
    var mobile1 = [String]()
    var laptop1 = [String]()
    
    var bottomdata =  [JSON]()
    var footdata =  [JSON]()
    var upperdata =  [JSON]()
    var bottomdata1 =  [JSON]()
    var footdata1 =  [JSON]()
    var upperdata1 =  [JSON]()
    var mobiledata =  [JSON]()
    var mobiledata1 =  [JSON]()
    var laptopdata =  [JSON]()
    var laptopdata1 =  [JSON]()
    var rankingproduct1 =  [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    func numberOfSections(in tableView: UITableView) -> Int {
      return 5
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(section == 0)
        {
            return bottom1.count
        }
        else if(section == 1)
        {
            return foot1.count
        }
        else if(section == 2)
        {
            return upper1.count
        }
        else if(section == 3)
        {
            return mobile1.count
        }
        else
        {
            return laptop1.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if(indexPath.section == 0)
        {
            let cell: TableViewCellthree  = tableView.dequeueReusableCell(withIdentifier: "TableViewCellthree", for: indexPath) as! TableViewCellthree
            cell.lblnames.text = bottom1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
         }
         else if(indexPath.section == 1)
         {
            let cell: TableViewCellthree  = tableView.dequeueReusableCell(withIdentifier: "TableViewCellthree", for: indexPath) as! TableViewCellthree
            cell.lblnames.text = foot1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
            
         }
        else if(indexPath.section == 2)
        {
            let cell: TableViewCellthree  = tableView.dequeueReusableCell(withIdentifier: "TableViewCellthree", for: indexPath) as! TableViewCellthree
            cell.lblnames.text = upper1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        else if(indexPath.section == 3)
        {
    
            let cell: TableViewCellthree  = tableView.dequeueReusableCell(withIdentifier: "TableViewCellthree", for: indexPath) as! TableViewCellthree
            cell.lblnames.text = mobile1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        else
        {
            let cell: TableViewCellthree  = tableView.dequeueReusableCell(withIdentifier: "TableViewCellthree", for: indexPath) as! TableViewCellthree
            cell.lblnames.text = laptop1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "productlist") as! productlist
        vc.rankingofproduct =  rankingproduct1
        if(indexPath.section == 0)
        {
            if(indexPath.row == 0)
            {
                vc.bottomda = bottomdata
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                 vc.bottomda1 = bottomdata1
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        else if(indexPath.section == 1)
        {
            if(indexPath.row == 0)
            {
                vc.footdat = footdata
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                vc.footdat1 = footdata1
                self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }

        else if(indexPath.section == 2)
        {
            if(indexPath.row == 0)
            {
                vc.upperda = upperdata
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                vc.upperda1 = upperdata1
                self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }

        else if(indexPath.section == 3)
        {
            if(indexPath.row == 0)
            {
                vc.mobileda = mobiledata
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                vc.mobileda = mobiledata1
                self.navigationController?.pushViewController(vc, animated: true)
            }
         
        }
        else
        {
            if(indexPath.row == 0)
            {
                vc.laptopda = laptopdata
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                vc.laptopda1 = laptopdata1
                self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }

    }
  
}
