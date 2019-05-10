//
//  CreatePostVC.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 10/05/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var sendBtn: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "say something here..." {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = false
                    print("There was an error")
                }
            }
        }
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}


extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
