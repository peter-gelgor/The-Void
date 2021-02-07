//
//  ViewController.swift
//  TheVoid
//
//  Created by Peter Gelgor on 2021-02-06.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        textview.delegate = self
        
//        let myGesture = UITapGestureRecognizer(target: self, action: Selector("tappedAwayFunction:"))
//        self.view.addGestureRecognizer(myGesture)
        
        doTheThing()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        textview.text = "Nice! Feel free to upload more text to the void"
        textview.textColor = UIColor.lightGray
        
    
    }
    
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var tvd: UITextViewDelegate!
    @IBOutlet weak var image: UIImageView!
    func doTheThing() {
        //giving textview a border
        
        textview.layer.borderColor = UIColor.lightGray.cgColor
        textview.layer.borderWidth = 1.0
        textview.layer.cornerRadius = 5.0
        textview.text = "Put some text in here, and nobody (yourself included) will see this ever again!"
        textview.textColor = UIColor.lightGray
    }
    
    @IBAction func userTappedBaackground(sender: AnyObject){
        view.endEditing(true)
    }
    
    
    
    
    internal func textViewDidBeginEditing(_ textView: UITextView){
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    internal func textViewDidEndEditing(_ textView: UITextView) {
        textview.resignFirstResponder()
    }
    
}

