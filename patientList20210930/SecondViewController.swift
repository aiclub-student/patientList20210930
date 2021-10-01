//
//  SecondViewController.swift
//  patientList20210930
//
//  Created by Amit Gupta on 9/30/21.
//

import UIKit

class SecondViewController: UIViewController,UITextViewDelegate, UITextFieldDelegate {
    
    var patientId:Int?
    var name:String?
    var diagnosis:String?
    var notes:String?
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.delegate=self
        textField.delegate=self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label1.text=name ?? "Unknown"
        label2.text=diagnosis ?? "Diag not known"
        label3.text=notes ?? "No notes"
        textField.text=notes ?? "TF notes"
        textView.text=notes ?? "TV notes"
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        let s="TV:"+textView.text!
        CellData.updateNotes(id: patientId!, newNote: s)
        print("TextView updated with value: \(s)")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s="TF:"+textField.text!
        CellData.updateNotes(id: patientId!, newNote: s)
        print("TextField updated with value: \(s)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
