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

        let resultText: String

        switch calculationSegment.selectedSegmentIndex {
        case 0:
            resultText = String(topNumber + bottomNumber)
        case 1:
            resultText = String(topNumber - bottomNumber)
        case 2:
            resultText = String(topNumber * bottomNumber)
        case 3:
            if topNumber == 0.0 {
                resultText = "割る数には０以外を入力して下さい"
            } else {
                resultText = String(topNumber / bottomNumber)
            }
        default:
            return
        }
        resultLabel.text = resultText
    }
}
