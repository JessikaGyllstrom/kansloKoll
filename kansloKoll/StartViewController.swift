//
//  StartViewController.swift
//  emo
//
//  Created by MadJackChurchill on 2021-01-02.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var lärdigBtn: UIButton!
    
    @IBOutlet weak var utmaningBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lärdigBtn.layer.cornerRadius = 20
        utmaningBtn.layer.cornerRadius = 20


        // Do any additional setup after loading the view.
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
