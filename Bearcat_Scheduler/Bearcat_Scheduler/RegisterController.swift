//
//  File.swift
//  Bearcat_Scheduler
//
//  Created by Smith,Logan W on 3/12/19.
//

import UIKit

class RegisterController: UIViewController{
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var cpasswordTF: UITextField!
    @IBAction func confirmBTN(_ sender: Any) {
        registerUser()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let backendless = Backendless.sharedInstance()!
    func registerUser() {
        // do not forget to call Backendless.initApp when your app initializes
        let user = BackendlessUser()
        user.setProperty("email", object: emailTF.text!)
        user.password = passwordTF.text! as NSString
        backendless.userService.register(user,
        response: {
            (registeredUser : BackendlessUser?) -> Void in
            print("User registered \(registeredUser?.value(forKey: "email"))")
        },
        error: {
            (fault : Fault?) -> Void in
            print("Server reported an error: \(fault?.description)")
        })
}
}
