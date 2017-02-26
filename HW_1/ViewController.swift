//
//  ViewController.swift
//  HW_1
//
//  Created by Ryan Capala on 1/22/17.
//  Copyright © 2017 Ryan Capala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var combo = [1,1,1,1,2,2,2,2]
    var enteredCombo = [Int]()
    var counter:Int = 0
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Please enter 8 digit code."
        self.imageView.image = UIImage(named: "lock")
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func clearButton(_ sender: Any) {
        resetCombo()
    }
    
    @IBAction func one(_ sender: Any) {
        enteredCombo.append(1)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func two(_ sender: Any) {
        enteredCombo.append(2)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func three(_ sender: Any) {
        enteredCombo.append(3)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func four(_ sender: Any) {
        enteredCombo.append(4)
        counter += 1
        checkCombo(count: counter)
    }

    @IBAction func five(_ sender: Any) {
        enteredCombo.append(5)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func six(_ sender: Any) {
        enteredCombo.append(6)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func seven(_ sender: Any) {
        enteredCombo.append(7)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func eight(_ sender: Any) {
        enteredCombo.append(8)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func nine(_ sender: Any) {
        enteredCombo.append(9)
        counter += 1
        checkCombo(count: counter)
    }
    
    @IBAction func zero(_ sender: Any) {
        enteredCombo.append(0)
        counter += 1
        checkCombo(count: counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func checkCombo(count:Int){
        if count == 8 {
            if enteredCombo == combo {
                label.text = "You have the correct combination!"
                self.imageView.image = UIImage(named: "unlock")
            } else {
                label.text = "Please place the correct combination."
            }
        }
    }
    
    func resetCombo() {
        counter = 0
        enteredCombo = []
        self.imageView.image = UIImage(named: "lock")
        label.text = "Please enter 8 digit code."
    }
    
   


}

