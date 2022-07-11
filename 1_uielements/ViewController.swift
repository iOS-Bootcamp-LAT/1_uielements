//
//  ViewController.swift
//  1_uielements
//
//  Created by David Granado Jordan on 5/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    let pickerOptions = ["Leon", "Tigre", "Gallina", "Perro", "Gato"]

    @IBOutlet weak var infoPicker: UIPickerView!
    
    
    @IBOutlet weak var infoSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infoLabel.text = "TEST TEST"
        infoLabel.textColor = .blue
        
        infoPicker.dataSource = self
        infoPicker.delegate = self
        
        infoSwitch.isOn = false
        infoSwitch.onTintColor = .systemBlue
        infoSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
        
        // Set current row
        let currenIndex = infoPicker.selectedRow(inComponent: 0)
        infoLabel.text = pickerOptions[currenIndex]
        
    }
    
    @objc func switchChanged(infoS: UISwitch) {
        if infoS.isOn {
            infoLabel.text = "Is On"
        } else {
            infoLabel.text = "Is Off"
        }
    }

    
    @IBAction func changeLabel(_ sender: Any) {
        infoLabel.text = "CLICK TEST"
        infoLabel.textColor = .darkGray
        
        infoButton.backgroundColor = .brown

    }
    
}

// Extension for UIPickerViewDataSource
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerOptions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        infoLabel.text = pickerOptions[row]
    }
    
}
