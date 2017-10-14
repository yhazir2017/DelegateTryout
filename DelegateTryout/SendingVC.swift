//
//  SendingVC.swift
//  DelegateTryout
//
//  Created by YILDIRAY HAZIR on 8/6/17.
//  Copyright © 2017 interview. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data:String)
}

class SendingVC: UIViewController {
    
    var delegate : DataSentDelegate? = nil

    @IBOutlet weak var dataEntryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
        if delegate != nil{
            if dataEntryTextField.text != nil{
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
   

}
