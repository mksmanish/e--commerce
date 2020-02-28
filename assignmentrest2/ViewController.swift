//
//  ViewController.swift
//  assignmentrest2
//
//  Created by admin on 13/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire
import SwiftyJSON
import SVGKit
import Foundation
import CoreData
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var products = [JSON]()
    @IBOutlet weak var tblview: UITableView!
    var items = [String]()
    var dataitems = [String]()
    var wears = [String]()
    var mens = [String]()
    var electron = [String]()
    var bottom = [Int]()
    var foot = [Int]()
    var top =  [Int]()
    var mobile = [Int]()
    var laptop = [Int]()
    
    var bottomdataname = [String]()
    var bottomdataproducts =  [JSON]()
    var bottomdataproducts1 =  [JSON]()
    
    var footdataname = [String]()
    var footdataproducts =  [JSON]()
    var footdataproducts1 =  [JSON]()
    
    var upperdataname = [String]()
    var upperdataproducts =  [JSON]()
    var upperdataproducts1 =  [JSON]()
    
    var mobiledataname = [String]()
    var mobiledataproducts =  [JSON]()
    var mobiledataproducts1 =  [JSON]()
    
    var laptopdataname = [String]()
    var laptopdataproducts =  [JSON]()
    var laptopdataproducts1 =  [JSON]()
    
    var rankingproduct = [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
        tblview.rowHeight = 60
        self.tblview.delegate = self
        self.tblview.dataSource  = self
        self.tblview.reloadData()
    }
    
    func getdata(){
        
        Alamofire.request("https://stark-spire-93433.herokuapp.com/json").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                var str1 =   swiftyJsonVar["categories"]
                let str2 =   swiftyJsonVar["rankings"]
                
                self.rankingproduct = [str2]
                for ind in 0..<str1.count
                 {
                   let str3 = str1[ind]["products"]
                   var str4 = str1[ind]["name"]
                   self.items.append(str4.stringValue)
                   self.products = [str3]
                   let str5 = str1[ind]["id"]
                   if(str5 == 3 || str5 == 11)
                   {
                     self.wears.append(str1[ind]["name"].stringValue)
                   }
                    else if(str5 == 4 || str5 == 5 || str5 == 6 )
                   {
                      self.mens.append(str1[ind]["name"].stringValue)
                    
                   }
                     else if(str5 == 12 || str5 == 13 )
                    {
                       self.electron.append(str1[ind]["name"].stringValue)
                    }
                    if(str5 == 4)
                    {
                        var str6 = str1[ind]["child_categories"]
                        for index in 0..<str6.count
                        {
                            self.bottom.append(str6[index].int!)
                        }
                    }
                    if(str5 == 5)
                    {
                        var str6 = str1[ind]["child_categories"]
                        for index in 0..<str6.count
                        {
                            self.foot.append(str6[index].int!)
                        }
                    }
                    if(str5 == 6)
                    {
                        var str6 = str1[ind]["child_categories"]
                        for index in 0..<str6.count
                        {
                            self.top.append(str6[index].int!)
                        }
                    }
                    if(str5 == 12)
                    {
                        var str6 = str1[ind]["child_categories"]
                        for index in 0..<str6.count
                        {
                            self.mobile.append(str6[index].int!)
                        }
                    }
                    if(str5 == 13)
                    {
                        var str6 = str1[ind]["child_categories"]
                        for index in 0..<str6.count
                        {
                            self.laptop.append(str6[index].int!)
                        }
                    }
                    if(str5 == 2)
                    {
                        self.bottomdataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.bottomdataproducts.append(str8)
                        }
                    }
                    if( str5 == 8)
                    {
                        self.bottomdataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.bottomdataproducts1.append(str8)
                        }
                    }
                    if(str5 == 1)
                    {
                        self.footdataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.footdataproducts.append(str8)
                        }
                    }
                    if(str5 == 9)
                    {
                        self.footdataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.footdataproducts1.append(str8)
                        }
                    }
                    if(str5 == 7)
                    {
                        self.upperdataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.upperdataproducts.append(str8)
                        }
                    }
                    if(str5 == 10)
                    {
                        self.upperdataname.append(str1[ind]["name"].stringValue)
                         let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.upperdataproducts1.append(str8)
                        }
                    }
                    
                    
                    
                    if(str5 == 14)
                    {
                        self.mobiledataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.mobiledataproducts.append(str8)
                        }
                    }
                    if(str5 == 15)
                    {
                        self.mobiledataname.append(str1[ind]["name"].stringValue)
                        let number = str1[ind]["products"]
                        for incre in 0...number.count
                        {
                            let str8 = str1[ind]["products"][incre]
                            self.mobiledataproducts1.append(str8)
                        }
                    }
                    if(str5 == 16)
                    {
                            self.laptopdataname.append(str1[ind]["name"].stringValue)
                            let str8 = str1[ind]["products"][0]
                            let str9 = str1[ind]["products"][1]
                            self.laptopdataproducts.append(str8)
                            self.laptopdataproducts.append(str9)
                        
                    }
                    if(str5 ==  17)
                    {
                        self.laptopdataname.append(str1[ind]["name"].stringValue)
                        
                        let str8 = str1[ind]["products"][0]
                        let str9 = str1[ind]["products"][1]
                        self.laptopdataproducts1.append(str8)
                        self.laptopdataproducts1.append(str9)
    
                    }
       
                  }
                self.tblview.reloadData()

            }
        }
    }
   
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "viewcontrollertwo") as! viewcontrollertwo
        if(indexPath.row == 0)
        {
              vc.data  = mens
              vc.bottom  = bottomdataname
              vc.foot = footdataname
              vc.upper = upperdataname
              vc.bottomdataproduct = bottomdataproducts
              vc.footdataproduct = footdataproducts
              vc.upperdataproduct = upperdataproducts
              vc.bottomdataproduct1 = bottomdataproducts1
              vc.footdataproduct1 = footdataproducts1
              vc.upperdataproduct1 = upperdataproducts1
              vc.ranking = rankingproduct
              self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.row == 1)
        {
              vc.data1 = electron
              vc.mobile = mobiledataname
              vc.laptop = laptopdataname
              vc.mobiledataproduct = mobiledataproducts
              vc.mobiledataproduct1 = mobiledataproducts1
              vc.laptopdataproduct = laptopdataproducts
              vc.laptopdataproduct1 = laptopdataproducts1
              vc.ranking = rankingproduct
              self.navigationController?.pushViewController(vc, animated: true)
        }
 
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wears.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecellTableViewCell", for: indexPath) as! tablecellTableViewCell
        cell.lblitems.text = wears[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }

}
    




