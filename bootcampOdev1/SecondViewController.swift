//
//  SecondViewController.swift
//  bootcampOdev1
//
//  Created by Mehmet Mustafa Kılıç on 9.09.2022.
//

import UIKit

protocol SecondVCDelegate: AnyObject {
    func getData(saveName: String, saveMail:String, saveNumber:String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var saveName: UITextField!
    @IBOutlet weak var saveMail: UITextField!
    @IBOutlet weak var saveNumber: UITextField!
    
    weak var delegate: SecondVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        if let name = saveName.text,
           let mail = saveMail.text,
           let number = saveNumber.text {
            
            delegate?.getData(saveName: name, saveMail: mail, saveNumber: number)
            self.navigationController?.popViewController(animated: true)
            }  else {
            print("Alert goster")
        }
        
    }
    
    
}
