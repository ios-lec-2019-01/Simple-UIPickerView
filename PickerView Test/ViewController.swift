//
//  ViewController.swift
//  PickerView Test
//
//  Created by amadeus on 16/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var myColor = ["red", "green", "blue"]
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
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
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myColor.count
    }
    
    // UIPickerViewDelegate 메소드 호출
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myColor[row]
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        outLabel.text = myColor[row]
    }
}

