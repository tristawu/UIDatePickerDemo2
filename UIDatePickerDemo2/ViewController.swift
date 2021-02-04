//
//  ViewController.swift
//  UIDatePickerDemo2
//
//  Created by Trista on 2021/2/4.
//

import UIKit

class ViewController: UIViewController {

    /*建立兩個屬性,同
     var myDatePicker: UIDatePicker!
     var myLabel: UILabel!
     */
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //設置 NSDate 的格式
        let formatter = DateFormatter()
        
        //設置時間顯示的格式
        formatter.dateFormat = "yyyy-MM-dd HH:mm"

        //設置顯示的語言環境
        myDatePicker.locale = NSLocale(localeIdentifier: "zh_TW") as Locale
        
    }

    /*設置改變日期時間時會執行動作的方法,同
     myDatePicker.addTarget(self,action:#selector(ViewController.datePickerChanged),for: .valueChanged)
    */
    @IBAction func datePickerChanged(_ sender: Any) {
        //設置顯示在 UILabel 的日期時間格式
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
    
        //更新 UILabel 的內容
        myLabel.text = formatter.string(from: (sender as AnyObject).date)
    }
    
}

