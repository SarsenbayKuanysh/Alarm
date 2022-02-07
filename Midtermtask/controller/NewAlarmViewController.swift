//
//  NewAlarmViewController.swift
//  Midtermtask
//  Created by Kuanysh on 26.10.2021.
import UIKit

class NewAlarmViewController: UIViewController {
    
    var myProtocol: AddAlarm?
    @IBOutlet weak var myPicker: UIDatePicker!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "NewAlarm"
        myTextField.delegate = self
    }
    
    @IBAction func saveAction(_ sender: UIButton) {
        let times = myPicker.calendar.dateComponents([.hour, .minute], from: myPicker.date)
        var hour = ""
        var minute = ""
        if times.hour! < 10 {
            hour = "0\(times.hour!)"
        }
        if times.hour! >= 10 {
            hour = "\(times.hour!)"
        }
        if times.minute! < 10 {
            minute = "0\(times.minute!)"
        }
        if times.minute! >= 10 {
            minute = "\(times.minute!)"
        }
        let timesString = "\(hour) : \(minute)"
        myProtocol?.addAlarm(timesString: timesString, notesString: myTextField.text!, isSwitched: false)
        navigationController?.popViewController(animated: true)
    }
    
}

extension NewAlarmViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
