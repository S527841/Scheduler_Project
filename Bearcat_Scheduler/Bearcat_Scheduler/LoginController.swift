 
 import UIKit
 
 class LoginController: UIViewController {
    let backendless = Backendless.sharedInstance()!
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBAction func loginBTN(_ sender: Any) {
        
        if emailTF.text!.isEmpty{
            let alert = UIAlertController(title: "Error", message: "Email can't be empty", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        if passwordTF.text!.isEmpty{
            let alert = UIAlertController(title: "Error", message: "Password can't be empty", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        
            
            self.present(alert, animated: true)
        }else{
            if !loginUser(){
                let alert = UIAlertController(title: "Error", message: "Invalid Login", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            }

        }
    }
    func loginUser()-> Bool {
        var flag:Bool = false
        Types.tryblock({ () -> Void in
            
            let user = self.backendless.userService.login(self.emailTF.text!, password: self.passwordTF.text!)
            print("User has been logged in (SYNC): \(user)")
            flag = true
        },
                       catchblock: { (exception) -> Void in
                        print("Server reported an error: \(exception as! Fault)")
        })
        return flag
    }
 }
 /*
 func validUserTokenSync() {
    Types.tryblock({ () -> Void in
        
        var result = self.backendless.userService.isValidUserToken() //as NSNumber
        print("isValidUserToken (SYNC): \(result.boolValue)")
    },
              catchblock: { (exception) -> Void in
                print("Server reported an error (SYNC): \(exception as! Fault)")
    }
    )
 }
*/
