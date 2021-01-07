//
//  ExpressionViewController.swift
//  emo
//
//  Created by Sasha Garrette on 2021-01-03.
//

import UIKit
import AVFoundation

class ExpressionViewController: UIViewController {
    var player: AVAudioPlayer?
    var isPlaySound : Bool = true
    
    @IBOutlet weak var buttonImageView: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var buttonPlaySound: UIButton!
    
    let images = [
          ["happy" ,"Glad","Beskriv en glad person","sound-01"],
          ["sad" ,"Ledsen","Beskriv en ledsen person","sound-02"],
          ["surprised" ,"Förvånad","Beskriv en förvånad person","sound-03"],
          ["confused" ,"Förvirrad","Beskriv en förvirrad person","sound-01"],
          ["tierd" ,"Trött","Beskriv en trött person","sound-02"],
          ["sick" ,"Sjuk","Beskriv en sjuk person","sound-03"],
          ["calm" ,"Lugn","Beskriv en lugn person","sound-01"],
          ["angry" , "Arg" , "Beskriv en arg person" , "sound-02"],
          ["happy2" , "Glad" , "Beskriv en glad person" , "sound-02"],
          ["sad2" , "Ledsen" , "Beskriv en ledsen person" , "sound-02"],
          ["surprised2" , "Förvånad" , "Beskriv en förvånad person" , "sound-02"],
          ["confused2" , "Förvirrad" , "Beskriv en förvirrad person" , "sound-02"],
          ["tierd2" , "Trött" , "Beskriv en trött person" , "sound-02"],
          ["sick2" , "Sjuk" , "Beskriv en sjuk person" , "sound-02"],
          ["calm2" , "Lugn" , "Beskriv en lugn person" , "sound-02"],
          ["angry2" , "Arg" , "Beskriv en arg person" , "sound-02"],
          ]
    
    override func viewDidAppear(_ animated: Bool) {
        setButtonImage(button: buttonImageView , UIImageNamed : "masks")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func switchSound(_ sender: UIButton) {
        isPlaySound.toggle()
        if isPlaySound {
            buttonPlaySound.setTitle("Switch Off", for: .normal)
        } else {
            buttonPlaySound.setTitle("Switch On", for: .normal)
            
    }
}
    @IBAction func randomImageBtnPress(_ sender: Any) {
    let randomResult = getRandomImage()
        setButtonImage(button: sender as! UIButton, UIImageNamed: randomResult[0])
        titleLabel.text = randomResult[1]
        descriptionLabel.text = randomResult[2]
        PlaySound(currentPlay: "win")
        if isPlaySound {
        PlaySound(currentPlay: randomResult[3])
    }
}
    
    func getRandomImage() -> [String]{
        if let showImage = images.randomElement() {
          return showImage
        }
        return []
      }
      func setButtonImage(button: UIButton, UIImageNamed: String){
        button.setBackgroundImage(UIImage(named: UIImageNamed), for: .normal)

        button.layer.cornerRadius = 10
        button.layer.borderWidth = 7
        button.layer.borderColor = UIColor.clear.cgColor
          }
      func PlaySound(currentPlay: String!){
        let url = Bundle.main.url(forResource: currentPlay, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
          }
        

}
