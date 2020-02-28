//
//  viewcontrollertwo.swift
//  assignmentrest2
//
//  Created by admin on 15/02/20.
//  Copyright © 2020 admin. All rights reserved.


import UIKit
import SwiftyJSON
class viewcontrollertwo: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    @IBOutlet weak var tblview: UITableView!
    var data = [String]()
    var data1 = [String]()
    var bottom = [String]()
    var foot = [String]()
    var upper = [String]()
    var mobile = [String]()
    var laptop = [String]()
  
    var bottomdataproduct =  [JSON]()
    var footdataproduct =  [JSON]()
    var upperdataproduct =  [JSON]()
    var bottomdataproduct1 =  [JSON]()
    var footdataproduct1 =  [JSON]()
    var upperdataproduct1 =  [JSON]()
    var mobiledataproduct =  [JSON]()
    var mobiledataproduct1 =  [JSON]()
    var laptopdataproduct =  [JSON]()
    var laptopdataproduct1 =  [JSON]()
    var ranking  =  [JSON]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblview.delegate = self
        self.tblview.dataSource = self
        tblview.rowHeight = 65
    
    }
    func numberOfSections(in tableView: UITableView) -> Int {
             return 2    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0)
        {
            return data.count
        }
        else
        {
            return data1.count
        }
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0)
        {
            
            let cell: tablecelltwo  = tableView.dequeueReusableCell(withIdentifier: "tablecelltwo", for: indexPath) as! tablecelltwo
            cell.lblnames.text = data[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        else
        {
            let cell: tablecelltwo  = tableView.dequeueReusableCell(withIdentifier: "tablecelltwo", for: indexPath) as! tablecelltwo
            cell.lblnames.text =  data1[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
            
        }
  
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerthree") as! ViewControllerthree
        vc.rankingproduct1 = ranking
        if(indexPath.section == 0)
        {
            if(indexPath.row == 0)
            {
               vc.bottom1  = bottom
               vc.bottomdata  = bottomdataproduct
               vc.bottomdata1  = bottomdataproduct1
               self.navigationController?.pushViewController(vc, animated: true)
            }
            else if(indexPath.row == 1)
            {
                vc.foot1 = foot
                vc.footdata = footdataproduct
                vc.footdata1 = footdataproduct1
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            else
            {
                vc.upper1 = upper
                vc.upperdata = upperdataproduct
                vc.upperdata1 = upperdataproduct1
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
        else
        {
            if(indexPath.row == 0)
            {
               vc.mobile1 = mobile
               vc.mobiledata = mobiledataproduct
               vc.mobiledata1 = mobiledataproduct1
            self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                vc.laptop1 = laptop
                vc.laptopdata  = laptopdataproduct
                vc.laptopdata1 = laptopdataproduct1
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
   
      
    }

}
