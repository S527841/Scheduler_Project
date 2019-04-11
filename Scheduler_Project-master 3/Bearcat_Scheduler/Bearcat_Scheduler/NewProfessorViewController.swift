//
//  NewProfessorViewController.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import UIKit

class NewProfessorViewController: UIViewController {


    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var DepartmentTF: UITextField!
    
    var newProfessor:Professor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func done(_ sender: Any) {
        let name = NameTF.text!
        let department = DepartmentTF.text!
        
        Professors.shared.add(professor: Professor(name: name, department: department))
        
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
