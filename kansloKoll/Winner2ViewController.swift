//
//  Winner2ViewController.swift
//  emo
//
//  Created by MadJackChurchill on 2021-01-03.
//

import UIKit
import AVFoundation

class Winner2ViewController: UIViewController {

    @IBOutlet weak var braLbl: UILabel!
    @IBOutlet weak var stars: UIImageView!
    @IBOutlet weak var fortsättBtn: UIButton!
    
    
    var audioPlayer = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        override func viewWillAppear(_ animated: Bool) {
            
            audioPlayer.play()
            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "win", ofType: "mp3")!))
            }
            catch{
                print(error)
                
            }
            
                    self.audioPlayer.play()
            
            
            braLbl.layer.masksToBounds = true
            braLbl.layer.cornerRadius = 20
            fortsättBtn.layer.masksToBounds = true
            fortsättBtn.layer.cornerRadius = 20


            self.stars.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            UIView.animate(withDuration: 2, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2, options: .repeat,animations: {
                    self.stars.transform = CGAffineTransform(scaleX: 1, y: 1)
            },
            completion: nil)


}
}
            


