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
    @IBOutlet private var calculationSegment: UISegmentedControl!

    @IBAction private func calculationButton(_ sender: Any) {
        guard let topText = topTextfield.text else { return }
        guard let bottomText = bottomTextfield.text else { return }
        let topNumber = Double(topText) ?? 0
        let bottomNumber = Double(bottomText) ?? 0
        switch calculationSegment.selectedSegmentIndex {
        case 0:
            resultLabel.text = String(topNumber + bottomNumber)
        case 1:
            resultLabel.text = String(topNumber - bottomNumber)
        case 2:
            resultLabel.text = String(topNumber * bottomNumber)
        case 3:
            if bottomNumber == 0.0 {
                resultLabel.text = "割る数には０以外を入力して下さい"
            } else {
                resultLabel.text = String(topNumber / bottomNumber)
            }
        default:
            return
        }
    }
}
