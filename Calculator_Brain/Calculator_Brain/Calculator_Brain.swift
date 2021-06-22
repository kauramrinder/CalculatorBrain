//
//  Calculator_Brain.swift
//  Calculator_Brain
//
//  Created by user182438 on 10/8/20.
//  Copyright © 2020 user182438(AmrinderKaur). All rights reserved.
//

import Foundation

var str = "Calculator"
var number1 : Double?
var number2 : Double?
var opp : String = ""
var outputt : Double = 0.0

class Calculator_Brain{
    
    var arry = [Double]()
    

//pushing items into array
    func pushItem(item : Double){
        
        arry.append(item)
        printArray()
    }


//printing array
    func printArray() {
        for i in arry {
            print(i)
        }
    }


//popping items from array
    func popItem() -> Double {
         return arry.popLast() ?? 0
    }



    func calculate(operatr: String)->Double{
        var output = 0.00
        let num2 = popItem()
        let num1 = popItem()
        number1 = num1
        number2 = num2
        
        if(operatr == "+"){
            output = num1 + num2
            opp = "+"
            
            
        }else if(operatr == "-")
        {
            output = num1 - num2
            opp = "-"
            
        }else if(operatr == "*"){
            output = num1 * num2
            opp = "*"
        }
        else if(operatr == "/"){
            output = num1 / num2
            opp = "/"
            
        }
        
        outputt = output
        return output
    }
    
    func tableString() -> String {
        
        let finalString =  " \(number1!) \( opp ) \( number2!) \("=" ) \(outputt)"
        
        return finalString
    }
    
    
}
