//
//  Alarm.swift
//  Midtermtask
//  Created by Kuanysh on 26.10.2021.
import Foundation
import UIKit

class Alarm {
    var timesString: String?
    var notesString: String?
    var isSwitched: Bool?
    
    init(timesString: String, notesString: String, isSwitched: Bool) {
        self.timesString = timesString
        self.notesString = notesString
        self.isSwitched = isSwitched
    }
}
