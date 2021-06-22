//
//  ViewController.swift
//  Calculator_Brain
//
//  Created by user182438 on 10/8/20.
//  Copyright © 2020 user182438(AmrinderKaur). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lbl: UILabel!
    var inp = ""
    var calc : Calculator_Brain = Calculator_Brain()
    
    var op : String?
    
    var allCalc = [String]()
    
    
    @IBOutlet weak var myTable: UITableView!
    
    
    @IBAction func digit_pressed(_ sender: Any) {
        
        let button_Clicked = sender as! UIButton
        switch button_Clicked.currentTitle {
            
            
        case "0":
            lbl.text? += "0"
            inp += "0"
            break
            
        case "1":
            lbl.text? += "1"
            inp += "1"
            break
            
        case "2":
            lbl.text? += "2"
            inp += "2"
            break
        
        case "3":
            lbl.text? += "3"
            inp += "3"
            break
            
        case "4":
            lbl.text? += "4"
            inp += "4"
            break
            
            
        case "5":
            lbl.text? += "5"
            inp += "5"
            break
            
        case "6":
            lbl.text? += "6"
            inp += "6"
            break
            
        case "7":
            lbl.text? += "7"
            inp += "7"
            break

        case "8":
            lbl.text? += "8"
            inp += "8"
            break
            
        case "9":
            lbl.text? += "9"
            inp += "9"
            break
            
        case "CLEAR":
        lbl.text? = ""
        inp = ""
        default:
            break
        }
    }
    

    @IBAction func op_pressed(_ sender: Any) {
        let button = sender as! UIButton
        
        switch button.currentTitle {
            
        case "+":
            calc.pushItem(item : Double(inp)!)
            lbl.text = String(calc.calculate( operatr : "+"))
            let newString = String(calc.tableString())
            allCalc.append(newString)
            myTable.reloadData()
            break
            
        case "-":
            calc.pushItem(item : Double (inp)!)
            lbl.text = String(calc.calculate( operatr : "-"))
            let newString = String(calc.tableString())
            allCalc.append(newString)
            myTable.reloadData()
            break
            
        case "*":
            calc.pushItem(item : Double (inp)!)
            lbl.text = String(calc.calculate( operatr : "*"))
            let newString = String(calc.tableString())
            allCalc.append(newString)
            myTable.reloadData()
            break
            
        case "/":
            calc.pushItem(item : Double(inp)!)
            lbl.text = String(calc.calculate( operatr : "/"))
            let newString = String(calc.tableString())
            allCalc.append(newString)
            myTable.reloadData()
            break
            
        default:
            break
        }
    }
    
    
    @IBAction func enter_pressed(_ sender: UIButton) {
        
        lbl.text = ""
        calc.pushItem(item : Double(inp)!)
        inp = ""
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
        return allCalc.count
    }

    
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell")
        cell?.textLabel?.text = allCalc[indexPath.row]
        
        return cell!
    }


}


