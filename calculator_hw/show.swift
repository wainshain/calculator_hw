//
//  show.swift
//  calculator_hw
//
//  Created by Roy on 2016/3/13.
//  Copyright © 2016年 123. All rights reserved.
//

import UIKit
class show:UILabel {
    
    func check (number :String){
        let a = Int(Float(number)!)
        let b = String(Float(a))
        
        if(b == number){
        self.text=String(a)
        }
        else{self.text = number}
    }
    
   
        
        func add(dig:Int){
            if (self.text=="0"){self.text=String(dig)}
            else if (self.text=="-0"){self.text = "-"+String(dig)}
            else{self.text=self.text!+"\(dig)"}
        }
    
    func cal(a:Float, b:Float,  s:String) ->String{
        var in_s = s
    
        if (b == Float(0) && s == "/"){in_s = "nil"}
        else{}
        switch(in_s){
            
        case "x":
            return String(a*b);
        case "+":
            return String(a+b);
        case "-":
            return String(a-b);
        case "/":
            return String(a/b);
        default :
            return "nil" ;
        }
        
    }

    
    
    
    
}