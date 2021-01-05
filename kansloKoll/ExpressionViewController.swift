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
    
    @IBOutlet weak var buttonImageView: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let images = [
          ["glad" ,"Glad","Beskriv en glad person","sound-01"],
          ["ledsen" ,"Ledsen","Beskriv en ledsen person","sound-02"],
          ["förvånad" ,"Förvånad","Beskriv en förvånad person","sound-03"],
          ["förvirrad" ,"Förvirrad","Beskriv en förvirrad person","sound-01"],
          ["trött" ,"Trött","Beskriv en trött person","sound-02"],
          ["sjuk" ,"Sjuk","Beskriv en sjuk person","sound-03"],
          ["lugn" ,"Lugn","Beskriv en lugn person","sound-01"],
          ["arg" , "Arg" , "Beskriv en arg person" , "sound-02"],
          ["glad2" , "Glad" , "Beskriv en glad person" , "sound-02"],
          ["ledsen2" , "Ledsen" , "Beskriv en ledsen person" , "sound-02"],
          ["förvånad2" , "Förvånad" , "Beskriv en förvånad person" , "sound-02"],
          ["förvirrad2" , "Förvirrad" , "Beskriv en förvirrad person" , "sound-02"],
          ["trött2" , "Trött" , "Beskriv en trött person" , "sound-02"],
          ["sjuk2" , "Sjuk" , "Beskriv en sjuk person" , "sound-02"],
          ["lugn2" , "Lugn" , "Beskriv en lugn person" , "sound-02"],
          ["arg2" , "Arg" , "Beskriv en arg person" , "sound-02"],
          ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func randomImageBtnPress(_ sender: Any) {
    let randomResult = getRandomImage()
        setButtonImage(button: sender as! UIButton, UIImageNamed: randomResult[0])
        titleLabel.text = randomResult[1]
        descriptionLabel.text = randomResult[2]
        PlaySound(currentPlay: "win")

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
        button.layer.borderColor = UIColor.red.cgColor
          }
      func PlaySound(currentPlay: String!){
        let url = Bundle.main.url(forResource: currentPlay, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
          }
        

}
