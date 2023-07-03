//
//  screenForNumbers.swift
//  game
//
//  Created by R82 on 28/06/23.
//

import UIKit
import AVFoundation

class screenForNumbers: UIViewController {

    var player = AVSpeechSynthesizer()
    @IBOutlet weak var priviousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var i = 0
    var arrayForNumbersImage = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]
    var arrayForNumbersName = ["one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","twenty-one","twenty-two","twenty-three","twenty-four","twenty-five","twenty-six","twenty-seven","twenty-eight","twenty-nine","thirty","thirty-one","thirty-two","thirty-three","thirty-four","thirty-five","thirty-six","thirty-seven","thirty-eight","thirty-nine","forty","forty-one","forty-two","forty-three","forty-four","forty-five","forty-six","forty-seven","forty-eight","forty-nine","fifty","fifty-one","fifty-two","fifty-three","fifty-four","fifty-five","fifty-six","fifty-seven","fifty-eight","fifty-nine","sixty","sixty-one","sixty-two","sixty-three","sixty-four","sixty-five","sixty-six","sixty-seven","sixty-eight","sixty-nine","seventy","seventy-one","seventy-two","seventy-three","seventy-four","seventy-five","seventy-six","seventy-seven","seventy-eight","seventy-nine","eighty","eighty-one","eighty-two","eighty-three","eighty-four","eighty-five","eighty-six","eighty-seven","eighty-eight","eighty-nine","ninety","ninety-one","ninety-two","ninety-three","ninety-four","ninety-five","ninety-six","ninety-seven","ninety-eight","ninety-nine","one hundred"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func numbers(){
        image.image = UIImage(named: "1")
    }
    @IBAction func nextButtonAction(_ sender: Any) {
        i += 1
        if i == 100 {
            i = 0
        }
        image.image = UIImage(named: arrayForNumbersImage[i].description)
        label.text = arrayForNumbersName[i].description
        sound()
    }
    @IBAction func previousButtonAction(_ sender: Any) {
        i -= 1
        if i == -1 {
            i = 99
        }
        image.image = UIImage(named: arrayForNumbersImage[i].description)
        label.text = arrayForNumbersName[i].description
        sound()
    }
    func sound(){
        var k = AVSpeechUtterance(string: arrayForNumbersName[i].description)
        player.speak(k)
        k.rate = 0.3
    }
    func setup(){
        image.image = UIImage(named: arrayForNumbersImage[0].description)
        label.text = arrayForNumbersName[0].description
        sound()
    }
    @IBAction func speekAgain(_ sender: Any) {
        sound()
    }
}
