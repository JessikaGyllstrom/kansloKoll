//
//  PlayTwoViewController.swift
//  kansloKoll
//
//  Created by MadJackChurchill on 2021-01-06.
//

import UIKit
import AVFoundation

class FeelingsTwo
{
    
    var name = ""
    var image = ""
    
    init(na : String, im : String) {
        name = na
        image = im
    }
}

class PlayTwoViewController: UIViewController {

    var correctNumber = 0

    var känslor = [Feelings]()
    
    var audioPlayer = AVAudioPlayer()
    
    var score = 0


    @IBOutlet weak var thumbs: UIImageView!
    
    @IBOutlet weak var rätt: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        thumbs.isHidden = true

        button1.layer.cornerRadius = 20
        button2.layer.cornerRadius = 20
        button3.layer.cornerRadius = 20
        button4.layer.cornerRadius = 20
        button5.layer.cornerRadius = 20
        button6.layer.cornerRadius = 20
        button7.layer.cornerRadius = 20
        button8.layer.cornerRadius = 20
        
        känslor.append(Feelings(na: "Arg", im: "angry2"))
        känslor.append(Feelings(na: "Förvånad", im: "surprised2"))
        känslor.append(Feelings(na: "Glad", im: "happy2"))
        känslor.append(Feelings(na: "Ledsen", im: "sad2"))
        känslor.append(Feelings(na: "Lugn", im: "calm2"))
        känslor.append(Feelings(na: "Sjuk", im: "sick2"))
        känslor.append(Feelings(na: "Trött", im: "tierd2"))
        känslor.append(Feelings(na: "Förvirrad", im: "confused2"))

    
            newRound()

    }
    
    func newRound()
    {

        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        button4.backgroundColor = UIColor.clear
        button5.backgroundColor = UIColor.clear
        button6.backgroundColor = UIColor.clear
        button7.backgroundColor = UIColor.clear
        button8.backgroundColor = UIColor.clear


        känslor.shuffle()
        
        correctNumber = Int.random(in: 0..<8)
        
        rätt.text = känslor[correctNumber].name
        
        button1.setImage(UIImage(named: känslor[0].image), for: .normal)

        button2.setImage(UIImage(named: känslor[1].image), for: .normal)

        button3.setImage(UIImage(named: känslor[2].image), for: .normal)
        
        button4.setImage(UIImage(named: känslor[3].image), for: .normal)
        
        button5.setImage(UIImage(named: känslor[4].image), for: .normal)
        
        button6.setImage(UIImage(named: känslor[5].image), for: .normal)
        
        button7.setImage(UIImage(named: känslor[6].image), for: .normal)
        
        button8.setImage(UIImage(named: känslor[7].image), for: .normal)
        
    }
    
    
    @IBAction func button1(_ sender: Any) {
    
    if(correctNumber == 0)
        {

            print("YEY RÄTT")
        button1.backgroundColor = UIColor.green
        answerCorrect()
        
        newRound()

           // answerCorrect()
            
        } else {
            button1.backgroundColor = UIColor.red

            print("NEJ FEL")
           // answerWrong()
        }

    }
    @IBAction func Button2(_ sender: Any) {
        if(correctNumber == 1)
        {

            print("YEY RÄTT")
            button2.backgroundColor = UIColor.green
            answerCorrect()

            newRound()

           // answerCorrect()
            
        } else {
            button2.backgroundColor = UIColor.red
            print("NEJ FEL")
           // answerWrong()
        }
    }
    @IBAction func Button3(_ sender: Any) {
        if(correctNumber == 2)
        {
            print("YEY RÄTT")
            button3.backgroundColor = UIColor.green

            answerCorrect()
            newRound()

           // answerCorrect()
        } else {
            button3.backgroundColor = UIColor.red

            print("NEJ FEL")
            //answerWrong()
        }
    }
        @IBAction func Button4(_ sender: Any) {
            if(correctNumber == 3)
            {
                print("YEY RÄTT")
                button4.backgroundColor = UIColor.green
                answerCorrect()

                newRound()

               // answerCorrect()
            } else {
                button4.backgroundColor = UIColor.red

                print("NEJ FEL")
                //answerWrong()
    }
    }
    @IBAction func Button5(_ sender: Any) {
        if(correctNumber == 4)
        {
            print("YEY RÄTT")
            button5.backgroundColor = UIColor.green

            answerCorrect()
            newRound()

           // answerCorrect()
        } else {
            button5.backgroundColor = UIColor.red

            print("NEJ FEL")
            //answerWrong()
        }
    }
    @IBAction func Button6(_ sender: Any) {
        if(correctNumber == 5)
        {
            print("YEY RÄTT")
            button6.backgroundColor = UIColor.green
            answerCorrect()

            newRound()

           // answerCorrect()
        } else {
            button6.backgroundColor = UIColor.red

            print("NEJ FEL")
            //answerWrong()
        }
    }
    @IBAction func Button7(_ sender: Any) {
        if(correctNumber == 6)
        {
            print("YEY RÄTT")
            button7.backgroundColor = UIColor.green
            answerCorrect()
            newRound()

        } else {
            button7.backgroundColor = UIColor.red
            print("NEJ FEL")
        }
    }
    @IBAction func Button8(_ sender: Any) {
        if(correctNumber == 7)
        {
            print("YEY RÄTT")
            button8.backgroundColor = UIColor.green
            answerCorrect()
            newRound()

        } else {
            button8.backgroundColor = UIColor.red

            print("NEJ FEL")
        }

    }
    
func answerCorrect()
{
    score += 1

    audioPlayer.play()
    do {
        self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "beep", ofType: "mp3")!))
    }
    catch{
        print(error)
        
    }
    
            self.audioPlayer.play()
    
    
    thumbs.isHidden = false
    
    UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseInOut, animations: {
        

    self.thumbs.frame.size.width += 40
    self.thumbs.frame.size.height += 40
        
}){ finished in
        UIView.animate(withDuration: 0.7, delay: 0, options: .repeat, animations: {
            self.thumbs.isHidden = true

          
    },
        completion: nil)
        }
    
    func winner()
    {
    performSegue(withIdentifier: "winner2", sender: self)
    }
    
    if score == 10{
    winner()
}
    }
}
