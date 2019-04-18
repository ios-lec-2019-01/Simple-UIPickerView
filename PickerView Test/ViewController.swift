//
//  ViewController.swift
//  PickerView Test
//
//  Created by amadeus on 16/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var myColor = ["red", "green", "blue", "white", "black"]
    var myEmotion = ["Angry", "Calm", "Cool", "Innocent", "Fear"]
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Deleagte 객체 연결
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        // 실행 초기 Label 문자를 "red"로 변경
        outLabel.text = myColor[0]
    }
    
    // UIPickerViewDataSource 메소드 호출
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return myColor.count
        } else {
            return myEmotion.count
        }
    }
    
    // UIPickerViewDelegate 메소드 호출
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return myColor[row]
        } else {
            return myEmotion[row]
        }
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print("Component = \(component)")
            print(row)
            print("----------")
            outLabel.text = myColor[row]
        } else {
            print("Component = \(component)")
            print(row)
            print("----------")
            outLabel.text = myEmotion[row]
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80.0
    }
}

