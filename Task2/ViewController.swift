//
//  ViewController.swift
//  Task2
//
//  Created by 野村大悟 on 2021/02/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var topTextfield: UITextField!
    @IBOutlet private var bottomTextfield: UITextField!
    @IBOutlet private var resultLabel: UILabel!
    private var flag:Int = 0
    @IBOutlet private var calculationSegment: UISegmentedControl!
    private var resultNumber = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculationChange(_ sender: Any) {
        flag =  calculationSegment.selectedSegmentIndex
    }
    @IBAction func calculationButton(_ sender: Any) {
        guard let topText = topTextfield.text else { return }
        guard let bottomText = bottomTextfield.text else { return }
        let topNumber = Double(topText) ?? 0
        let bottomNumber = Double(bottomText) ?? 0
        switch flag {
        case 0:
            resultNumber = topNumber + bottomNumber
        case 1:
            resultNumber = topNumber - bottomNumber
        case 2:
            resultNumber = topNumber * bottomNumber
        case 3:
            if topNumber == 0.0 {
                resultLabel.text = "割る数には０以外を入力して下さい"
            } else {
                resultNumber = topNumber / bottomNumber
            }
        default:
            break
        }
        resultLabel.text = String(resultNumber)
    }
}
