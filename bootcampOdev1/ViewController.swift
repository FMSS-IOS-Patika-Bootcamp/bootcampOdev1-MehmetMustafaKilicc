//
//  ViewController.swift
//  bootcampOdev1
//
//  Created by Mehmet Mustafa Kılıç on 9.09.2022.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var mail: UILabel!
    @IBOutlet weak var number: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
        
    @IBAction func kayitButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        navigationController?.pushViewController(secondVC, animated: true)
    }
    

}



extension ViewController: SecondVCDelegate {
    
    func getData(saveName name: String, saveMail mail: String, saveNumber number: String) {
        self.name.text = name
        self.mail.text = mail
        self.number.text = number
    }
    
}
