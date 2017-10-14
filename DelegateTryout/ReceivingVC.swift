//
//  ReceivingVC.swift
//  DelegateTryout
//
//  Created by YILDIRAY HAZIR on 8/6/17.
//  Copyright © 2017 interview. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController,DataSentDelegate {

    @IBOutlet weak var receivingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC : SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }


}

