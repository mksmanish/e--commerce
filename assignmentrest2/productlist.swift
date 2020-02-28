//
//  productlist.swift
//  assignmentrest2
//
//  Created by admin on 20/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import SwiftyJSON
struct information {
    let id: String
    let name: String
    let color: String
    let size: String
    let price: String
}
struct information1 {
    let id: String
    let name: String
    let color: String
    let size: String
    let price: String
    let viewcount: String
    let ordercount: String
    let shares: String
}
class productlist: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    var bottomda =  [JSON]()
    var footdat =  [JSON]()
    var upperda =  [JSON]()
    var bottomda1 =  [JSON]()
    var footdat1 =  [JSON]()
    var upperda1 =  [JSON]()
    var mobileda =  [JSON]()
    var mobileda1 =  [JSON]()
    var laptopda =  [JSON]()
    var laptopda1 =  [JSON]()
    
    var rankingofproduct = [JSON]()
    
    var dataofbottomname = [information1]()
    var dataofbottomname1 = [information1]()
    
    var dataoffootname = [information1]()
    var dataoffootname1 = [information1]()
    
    var dataofuppername = [information1]()
    var dataofuppername1  = [information1]()
    
    var dataofmobilename = [information]()
    var dataofmobilename1 = [information]()
    
    var dataoflaptopname = [information]()
    var dataoflaptopname1  = [information]()
    var indexPaths = [Int]()
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        //bottom clothes
        for index in 0..<bottomda.count
        {
            var str1 =  bottomda[index]["name"]
            let str2 =  bottomda[index]["variants"]
            for index1 in 0..<str2.count
            {
               var str3 = bottomda[index]["variants"][index1]["id"]
               var str4 = bottomda[index]["variants"][index1]["color"]
               var str5 = bottomda[index]["variants"][index1]["size"]
               var str6 = bottomda[index]["variants"][index1]["price"]
               var strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                        dataofbottomname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                        dataofbottomname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                        dataofbottomname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
            }
        }
        for index in 0..<bottomda1.count
        {
            var str1 =  bottomda1[index]["name"]
            let str2 =  bottomda1[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 = bottomda1[index]["variants"][index1]["id"]
                var str4 = bottomda1[index]["variants"][index1]["color"]
                var str5 = bottomda1[index]["variants"][index1]["size"]
                var str6 = bottomda1[index]["variants"][index1]["price"]
                let strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                        dataofbottomname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                        dataofbottomname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                        dataofbottomname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
            }
            
        }
        //footer clothes
        for index in 0..<footdat.count
        {
            var str1 =  footdat[index]["name"]
            let str2 =  footdat[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  footdat[index]["variants"][index1]["id"]
                var str4 =  footdat[index]["variants"][index1]["color"]
                var str5 =  footdat[index]["variants"][index1]["size"]
                var str6 =  footdat[index]["variants"][index1]["price"]
                let strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                          dataoffootname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                          dataoffootname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                          dataoffootname.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
                
            }
        }
        
        
        for index in 0..<footdat1.count
        {
            var str1 =  footdat1[index]["name"]
            let str2 =  footdat1[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  footdat1[index]["variants"][index1]["id"]
                var str4 =  footdat1[index]["variants"][index1]["color"]
                var str5 =  footdat1[index]["variants"][index1]["size"]
                var str6 =  footdat1[index]["variants"][index1]["price"]
                let strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                        dataoffootname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                        dataoffootname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                        dataoffootname1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
                
            }
        }
        
        //upperclothes
        for index in 0..<upperda.count
        {
            var str1 =  upperda[index]["name"]
            let str2 =  upperda[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  upperda[index]["variants"][index1]["id"]
                var str4 =  upperda[index]["variants"][index1]["color"]
                var str5 =  upperda[index]["variants"][index1]["size"]
                var str6 =  upperda[index]["variants"][index1]["price"]
                let strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                        dataofuppername.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                        dataofuppername.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                        dataofuppername.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
                
            }
        }
        for index in 0..<upperda1.count
        {
            var str1 =  upperda1[index]["name"]
            let str2 =  upperda1[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  upperda1[index]["variants"][index1]["id"]
                var str4 =  upperda1[index]["variants"][index1]["color"]
                var str5 =  upperda1[index]["variants"][index1]["size"]
                var str6 =  upperda1[index]["variants"][index1]["price"]
                let strcount = rankingofproduct[0][0]["products"]
                for index in 0..<strcount.count
                {
                    let strmatch = rankingofproduct[0][0]["products"][index]["id"]
                    let strmatch1 = rankingofproduct[0][1]["products"][index]["id"]
                    let strmatch2 = rankingofproduct[0][2]["products"][index]["id"]
                    let strviewcount =  rankingofproduct[0][0]["products"][index]["view_count"]
                    let strordercount =  rankingofproduct[0][1]["products"][index]["order_count"]
                    let strsharecount =  rankingofproduct[0][2]["products"][index]["shares"]
                    if(str3 == strmatch )
                    {
                        dataofuppername1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:strviewcount.stringValue, ordercount:"0", shares: "0"))
                    }
                    if(str3 == strmatch1)
                    {
                        dataofuppername1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: strordercount.stringValue, shares: "0"))
                    }
                    if(str3 == strmatch2)
                    {
                        dataofuppername1.append(information1(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue,viewcount:"0", ordercount: "0", shares: strsharecount.stringValue))
                    }
                }
                
            }
        }
        //mobile
        for index in 0..<mobileda.count
        {
            var str1 =  mobileda[index]["name"]
            let str2 =  mobileda[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  mobileda[index]["variants"][index1]["id"]
                var str4 =  mobileda[index]["variants"][index1]["color"]
                var str5 =  mobileda[index]["variants"][index1]["size"]
                var str6 =  mobileda[index]["variants"][index1]["price"]
                dataofmobilename.append(information(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue))
                
            }
        }
        for index in 0..<mobileda1.count
        {
            var str1 =  mobileda1[index]["name"]
            let str2 =  mobileda1[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  mobileda1[index]["variants"][index1]["id"]
                var str4 =  mobileda1[index]["variants"][index1]["color"]
                var str5 =  mobileda1[index]["variants"][index1]["size"]
                var str6 =  mobileda1[index]["variants"][index1]["price"]
                dataofmobilename1.append(information(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue))
                
            }
        }
        //laptop
        for index in 0..<laptopda.count
        {
            var str1 =  laptopda[index]["name"]
            let str2 =  laptopda[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  laptopda[index]["variants"][index1]["id"]
                var str4 =  laptopda[index]["variants"][index1]["color"]
                var str5 =  laptopda[index]["variants"][index1]["size"]
                var str6 =  laptopda[index]["variants"][index1]["price"]
                dataoflaptopname.append(information(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue))
                
            }
        }
        for index in 0..<laptopda1.count
        {
            var str1 =  laptopda1[index]["name"]
            let str2 =  laptopda1[index]["variants"]
            for index1 in 0..<str2.count
            {
                var str3 =  laptopda1[index]["variants"][index1]["id"]
                var str4 =  laptopda1[index]["variants"][index1]["color"]
                var str5 =  laptopda1[index]["variants"][index1]["size"]
                var str6 =  laptopda1[index]["variants"][index1]["price"]
                dataoflaptopname1.append(information(id: str3.stringValue, name: str1.stringValue, color: str4.stringValue, size: str5.stringValue, price: str6.stringValue))
                
            }
        }
    
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            if(section == 0)
            {
             return dataofbottomname.count
            }
            else if(section == 1)
            {
             return dataofbottomname1.count
            }
            else if(section == 2)
            {
                return dataoffootname.count
            }
            else if(section == 3)
            {
               return dataoffootname1.count
             }
            else if(section == 4)
            {
               return dataofuppername.count
            }
            else if(section == 5)
            {
               return  dataofuppername1.count
            }
            else if(section == 6)
            {
                return dataofmobilename.count
            }
            else if(section == 7)
            {
                return dataofmobilename1.count
            }
            else if(section == 8)
            {
              return dataoflaptopname.count
            }
            else
            {
              return dataoflaptopname1.count
            }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.section == 0)
        {
           
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofbottomname[indexPath.row].name
            cell.lblcolor.text = dataofbottomname[indexPath.row].color
            cell.lblsize.text = dataofbottomname[indexPath.row].size
            cell.lblprice.text = dataofbottomname[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 1)
        {
     
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofbottomname1[indexPath.row].name
            cell.lblcolor.text = dataofbottomname1[indexPath.row].color
            cell.lblsize.text = dataofbottomname1[indexPath.row].size
            cell.lblprice.text = dataofbottomname1[indexPath.row].price
           
            return cell
        }
        else if(indexPath.section == 2)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataoffootname[indexPath.row].name
            cell.lblcolor.text = dataoffootname[indexPath.row].color
            cell.lblsize.text =  dataoffootname[indexPath.row].size
            cell.lblprice.text = dataoffootname[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 3)
        {   let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataoffootname1[indexPath.row].name
            cell.lblcolor.text = dataoffootname1[indexPath.row].color
            cell.lblsize.text =  dataoffootname1[indexPath.row].size
            cell.lblprice.text = dataoffootname1[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 4)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofuppername[indexPath.row].name
            cell.lblcolor.text = dataofuppername[indexPath.row].color
            cell.lblsize.text =  dataofuppername[indexPath.row].size
            cell.lblprice.text = dataofuppername[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 5)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofuppername1[indexPath.row].name
            cell.lblcolor.text = dataofuppername1[indexPath.row].color
            cell.lblsize.text =  dataofuppername1[indexPath.row].size
            cell.lblprice.text = dataofuppername1[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 6)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofmobilename[indexPath.row].name
            cell.lblcolor.text =  dataofmobilename[indexPath.row].color
            cell.lblsize.text =   "not available"
            cell.lblprice.text = dataofmobilename[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 7)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataofmobilename1[indexPath.row].name
            cell.lblcolor.text = dataofmobilename1[indexPath.row].color
            cell.lblsize.text =  "not available"
            cell.lblprice.text = dataofmobilename1[indexPath.row].price
            return cell
        }
        else if(indexPath.section == 8)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataoflaptopname[indexPath.row].name
            cell.lblcolor.text = dataoflaptopname[indexPath.row].color
            cell.lblsize.text = "not available"
            cell.lblprice.text = dataoflaptopname[indexPath.row].price
            return cell
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncellCollectionViewCell", for: indexPath) as! collectioncellCollectionViewCell
            cell.lblnames.text = dataoflaptopname1[indexPath.row].name
            cell.lblcolor.text = dataoflaptopname1[indexPath.row].color
            cell.lblsize.text =  "not available"
            cell.lblprice.text = dataoflaptopname1[indexPath.row].price
            return cell
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "controllerdescription") as! controllerdescription
        if(indexPath.section == 0)
        {
            vc.name = dataofbottomname[indexPath.row].name
            vc.color = dataofbottomname[indexPath.row].color
            vc.size =  dataofbottomname[indexPath.row].size
            vc.price =  dataofbottomname[indexPath.row].price
            vc.viewcount =  dataofbottomname[indexPath.row].viewcount
            vc.ordered =   dataofbottomname[indexPath.row].ordercount
            vc.shares =    dataofbottomname[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
       else if(indexPath.section == 1)
        {
            vc.name = dataofbottomname1[indexPath.row].name
            vc.color = dataofbottomname1[indexPath.row].color
            vc.size =  dataofbottomname1[indexPath.row].size
            vc.price =  dataofbottomname1[indexPath.row].price
            vc.viewcount =  dataofbottomname1[indexPath.row].viewcount
            vc.ordered =   dataofbottomname1[indexPath.row].ordercount
            vc.shares =    dataofbottomname1[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 2)
        {
            vc.name = dataoffootname[indexPath.row].name
            vc.color = dataoffootname[indexPath.row].color
            vc.size =  dataoffootname[indexPath.row].size
            vc.price =  dataoffootname[indexPath.row].price
            vc.viewcount =  dataoffootname[indexPath.row].viewcount
            vc.ordered =   dataoffootname[indexPath.row].ordercount
            vc.shares =    dataoffootname[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 3)
        {
            vc.name = dataoffootname1[indexPath.row].name
            vc.color = dataoffootname1[indexPath.row].color
            vc.size =  dataoffootname1[indexPath.row].size
            vc.price =  dataoffootname1[indexPath.row].price
            vc.viewcount =  dataoffootname1[indexPath.row].viewcount
            vc.ordered =   dataoffootname1[indexPath.row].ordercount
            vc.shares =    dataoffootname1[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 4)
        {
            vc.name = dataofuppername[indexPath.row].name
            vc.color = dataofuppername[indexPath.row].color
            vc.size =  dataofuppername[indexPath.row].size
            vc.price =  dataofuppername[indexPath.row].price
            vc.viewcount =  dataofuppername[indexPath.row].viewcount
            vc.ordered =   dataofuppername[indexPath.row].ordercount
            vc.shares =    dataofuppername[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 5)
        {
            vc.name = dataofuppername1[indexPath.row].name
            vc.color = dataofuppername1[indexPath.row].color
            vc.size =  dataofuppername1[indexPath.row].size
            vc.price =  dataofuppername1[indexPath.row].price
            vc.viewcount =  dataofuppername1[indexPath.row].viewcount
            vc.ordered =   dataofuppername1[indexPath.row].ordercount
            vc.shares =    dataofuppername1[indexPath.row].shares
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 6)
        {
            vc.name = dataofmobilename[indexPath.row].name
            vc.color = dataofmobilename[indexPath.row].color
            vc.size =  dataofmobilename[indexPath.row].size
            vc.price =  dataofmobilename[indexPath.row].price
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 7)
        {
            vc.name = dataofmobilename1[indexPath.row].name
            vc.color = dataofmobilename1[indexPath.row].color
            vc.size =  dataofmobilename1[indexPath.row].size
            vc.price =  dataofmobilename1[indexPath.row].price
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 8)
        {
            vc.name =  dataoflaptopname[indexPath.row].name
            vc.color = dataoflaptopname[indexPath.row].color
            vc.size =  dataoflaptopname[indexPath.row].size
            vc.price =  dataoflaptopname[indexPath.row].price
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if(indexPath.section == 9)
        {
            vc.name = dataoflaptopname1[indexPath.row].name
            vc.color = dataoflaptopname1[indexPath.row].color
            vc.size =  dataoflaptopname1[indexPath.row].size
            vc.price =  dataoflaptopname1[indexPath.row].price
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    @IBAction func btnviewed(_ sender: Any) {

      dataofbottomname = dataofbottomname.sorted(by: { $0.viewcount > $1.viewcount })
      dataofbottomname1 = dataofbottomname1.sorted(by: { $0.viewcount > $1.viewcount })
      dataoffootname = dataoffootname.sorted(by: { $0.viewcount > $1.viewcount })
      dataoffootname1 = dataoffootname1.sorted(by: { $0.viewcount > $1.viewcount })
      dataofuppername = dataofuppername .sorted(by: { $0.viewcount > $1.viewcount })
      dataofuppername1 = dataofuppername1.sorted(by: { $0.viewcount > $1.viewcount })
      collectionview.reloadData()
    }
    
    @IBAction func btnordered(_ sender: Any) {
        dataofbottomname = dataofbottomname.sorted(by: { $0.ordercount > $1.ordercount})
        dataofbottomname1 = dataofbottomname1.sorted(by: { $0.ordercount > $1.ordercount})
        dataoffootname = dataoffootname.sorted(by: { $0.ordercount > $1.ordercount })
        dataoffootname1 = dataoffootname1.sorted(by: { $0.ordercount > $1.ordercount })
        dataofuppername = dataofuppername .sorted(by: { $0.ordercount > $1.ordercount})
        dataofuppername1 = dataofuppername1.sorted(by: { $0.ordercount > $1.ordercount })
        
        collectionview.reloadData()
    }
    
    @IBAction func btnshared(_ sender: Any) {
        dataofbottomname = dataofbottomname.sorted(by: { $0.shares > $1.shares })
         dataofbottomname1 = dataofbottomname1.sorted(by: { $0.shares > $1.shares })
         dataoffootname = dataoffootname.sorted(by: { $0.shares > $1.shares })
         dataoffootname1 = dataoffootname1.sorted(by: { $0.shares > $1.shares })
        dataofuppername = dataofuppername .sorted(by: { $0.shares > $1.shares })
        dataofuppername1 = dataofuppername1.sorted(by: { $0.shares > $1.shares })
         collectionview.reloadData()
    }
    
}
