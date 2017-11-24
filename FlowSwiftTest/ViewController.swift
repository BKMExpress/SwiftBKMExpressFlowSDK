//
//  ViewController.swift
//  FlowSwiftTest
//
//  Created by Kadir Guzel on 24/11/2017.
//  Copyright © 2017 Kadir Guzel. All rights reserved.
//

import UIKit
import BKMExpress

let kTICKET_TOKEN:String = "Ticket Token will be given by BKM after the merchant integration"
let kTICKET_PATH:String = "Ticket Path will be given by BKM after the merchant integration"
let kTICKET_ID:String = "Ticket Id will be given by BKM after the merchant integration"

class ViewController: UIViewController,BKMExpressPaymentDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        let instanceOfCustomObject: BKMExpressPaymentViewController = BKMExpressPaymentViewController(bexTicketToken: kTICKET_TOKEN, bexTicketPath: kTICKET_PATH, bexTicketId :kTICKET_ID, delegate: self)
        
        instanceOfCustomObject.setEnableDebugMode(false)
        
        self.present(instanceOfCustomObject , animated:true,completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bkmExpressPaymentDidComplete() {
        NSLog("Successful payment")
    }
    
    func bkmExpressPaymentDidFail(_ error: Error!) {
        NSLog("An error has occurred on payment %@", error.localizedDescription)
    }
    
    func bkmExpressPaymentDidCancel() {
        NSLog("Payment is cancelled by user")
    }

}

