////
////  oneViewController.swift
////  fireBaseTutorial
////
////  Created by Mohan K on 17/04/23.
////
//
//import UIKit
//
//class oneViewController: UIViewController {
//
//    @IBOutlet weak var textView: UITextView!
//
//
//    var array = ["string1", "string2", "string3"]
//    var i = 0
//    var str: String = ""
//    var timer = NSTimer()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("testFunc"), userInfo: nil, repeats: true)
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//        }
//
//    func testFunc() {
//        str += "\(array[i])\n"
//        textView.text = str
//        if i == count(array) - 1 {
//            timer.invalidate()
//        }
//        i += 1
//    }
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
