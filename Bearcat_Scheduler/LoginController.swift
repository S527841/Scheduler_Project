 
 import UIKit
 
 class LoginController: UIViewController {
    
    let backendless = Backendless.sharedInstance()!
 
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBAction func loginBTN(_ sender: Any) {
        loginUser()
    }
    func loginUser() {
    
    Types.tryblock({ () -> Void in
        
        let user = self.backendless.userService.login(self.emailTF.text!, password: self.passwordTF.text!)
            print("User has been logged in (SYNC): \(user)")
    },
        catchblock: { (exception) -> Void in
            print("Server reported an error: \(exception as! NSException)")
    })
 }
 }
    
    
    
 
                
