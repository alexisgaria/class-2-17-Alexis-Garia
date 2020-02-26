//
//  ViewController.swift
//  class 2-17
//
//  Created by Alexis Garia on 2/17/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    
    
    
    @IBAction func alert(_ sender: Any) {
            //set up alert
            
            let alert = UIAlertController (title: "Import Update" , message: "The alert action has been played." , preferredStyle: .alert)
            
            //add the action
            alert.addAction(UIAlertAction (title: NSLocalizedString ("OK", comment: "Default action") , style: .`default` , handler: { _
                in}))
        
        //Display the alert
            self.present(alert,animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func loginAlert(_ sender: Any) {
        
        //design the input collection
        let ac = UIAlertController(title: "What is your username?", message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
        let answer = ac.textFields![0]
        self.usernameField.text = answer.text
        
        
        //design second alert
        let alert = UIAlertController(title: "welcome:" , message: answer.text, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("Okay", comment: "Default action"), style: .`default`, handler: {_ in}))
        
        //display the alert
        self.present(alert,animated: true, completion: nil)}
        ac.addAction(submitAction)
        present(ac, animated: true)
    
    }
    

   
    @IBAction func sirenPlay(_ sender: Any) {

            //play wav file
            var soundId: SystemSoundID = 0
            let soundFile:String=Bundle.main.path(forResource: "r2-d2", ofType:"wav")!
            let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
            AudioServicesCreateSystemSoundID(soundURL, &soundId)
            AudioServicesPlaySystemSound(soundId)

            //vibrate phone
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



}


