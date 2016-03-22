//
//  ViewController.swift
//  calculator_hw
//
//  Created by Roy on 2016/3/10.
//  Copyright © 2016年 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
   
    var isequal:Bool = false
    var ischanged:Bool = true
    var iscal:Bool = false
    var recentValue:Float = 0
    var cal_symbol:String = ""
    
    
    @IBOutlet weak var display: show!
   
    
    @IBAction func enter_number(sender: UIButton) {
        
        if (isequal == true){display.text=sender.currentTitle; isequal = false}
        else if (ischanged == false && iscal == true){
            recentValue = Float(display.text!)!;
            display.text=sender.currentTitle;
            ischanged = true;
            }
        else {
      self.display.add(Int(sender.currentTitle!)!)
        }
        
    }
    
    @IBAction func reset(sender: UIButton) {
        clear();
    }
    
    @IBAction func reverse(sender: UIButton) {
        let i = Float(self.display.text!)!
        
        if(ischanged == false || display.text == "0"){
        recentValue = i
        self.display.text = "-0"
         }
        else
            
        {let j = Float(-1) * i
            self.display.check(String(j))}
        
        
        isequal = false
    }
    
    @IBAction func percentage(sender: UIButton) {
        self.display.text = String(Float(self.display.text!)!/Float(100))
        isequal=false
        if(ischanged == false){recentValue = recentValue / Float(100)}
        
        
    }
    
    @IBAction func dot(sender: UIButton) {
        if(ischanged == false){
        recentValue = Float(self.display.text!)!
        self.display.text="0."
        ischanged = true}
        
        else if (isequal == true){
            self.display.text="0."
            isequal = false}
        
        else if(self.display.text!.localizedStandardContainsString(".")==true){}
        
        else {self.display.text = self.display.text! + "."}
            
            }
   
    @IBAction func divide(sender: UIButton) {
        
        if(ischanged == true && cal_symbol != ""){
            let answer = self.display.cal(recentValue, b: Float(self.display.text!)!, s: cal_symbol)
            if(answer == "nil"){clear();}
            else {self.display.check(answer);
                isequal = false ;
                ischanged = false;
                iscal = true;
                cal_symbol = "/";
                recentValue = Float(answer)!;}
        }
            
            
        else if (ischanged == false){cal_symbol = "/"}
        
        else{
        recentValue = Float(display.text!)!
        cal_symbol = "/";
        isequal = false
        ischanged = false
        iscal = true;
        }
        
    }
    
    @IBAction func multiply(sender: UIButton) {
        
        if(ischanged == true && cal_symbol != ""){
            let answer = self.display.cal(recentValue, b: Float(self.display.text!)!, s: cal_symbol)
            if(answer == "nil"){clear();}
            else {self.display.check(answer);
                isequal = false ;
                ischanged = false;
                iscal = true;
                cal_symbol = "x";
                recentValue = Float(answer)!;}
        }
            
            
        else if (ischanged == false){cal_symbol = "x"}
            
        else{
            recentValue = Float(display.text!)!
            cal_symbol = "x";
            isequal = false
            ischanged = false
            iscal = true;
        }
        
    }
    
    @IBAction func minus(sender: UIButton) {
        if(ischanged == true && cal_symbol != ""){
            let answer = self.display.cal(recentValue, b: Float(self.display.text!)!, s: cal_symbol)
            if(answer == "nil"){clear();}
            else {self.display.check(answer);
                isequal = false ;
                ischanged = false;
                iscal = true;
                cal_symbol = "-";
                recentValue = Float(answer)!;}
        }
            else if (ischanged == false){cal_symbol = "-"}
        else{
            recentValue = Float(display.text!)!
            cal_symbol = "-";
            isequal = false
            ischanged = false
            iscal = true;
        }

    }
    
    @IBAction func plus(sender: UIButton) {
        if(ischanged == true && cal_symbol != ""){
            let answer = self.display.cal(recentValue, b: Float(self.display.text!)!, s: cal_symbol)
            if(answer == "nil"){clear();}
            else {self.display.check(answer);
                isequal = false ;
                ischanged = false;
                iscal = true;
                cal_symbol = "+";
                recentValue = Float(answer)!;}
        }
            else if (ischanged == false){cal_symbol = "+"}
        else{
            recentValue = Float(display.text!)!
            cal_symbol = "+";
            isequal = false
            ischanged = false
            iscal = true;
        }

    }
   
    @IBAction func equal(sender: UIButton) {
        let answer = self.display.cal(recentValue, b: Float(self.display.text!)!, s: cal_symbol)
        if(answer == "nil"){clear();}
        else {self.display.check(answer);
            isequal = true
            ischanged = true
            iscal = false
            cal_symbol = ""
            recentValue = 0}
    }
    
    func clear (){
        isequal = false
        ischanged = true
        iscal = false
        recentValue = 0
        cal_symbol = ""
        self.display.text="0"}
    
    }


func cal_fun (s : String){
}
    


