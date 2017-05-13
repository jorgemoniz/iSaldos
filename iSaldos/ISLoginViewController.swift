//
//  ISLoginViewController.swift
//  iSaldos
//
//  Created by jorgemoniz on 13/5/17.
//  Copyright © 2017 Jorge Moñiz. All rights reserved.
//

import UIKit
import Parse
import AVFoundation

class ISLoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myUsernameTF: UITextField!
    @IBOutlet weak var myPasswordTF: UITextField!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    @IBAction func doLoginACTION(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
