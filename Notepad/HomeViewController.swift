//
//  HomeViewController.swift
//  Notepad thing
//
//  Created by William on 2/26/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var notesTextView: UITextView!
    @IBOutlet var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleSaveButtonPressed(_ sender: Any) {
        let title = titleTextField.text
        print("my title is: \(title!)")
        
        let notes = notesTextView.text
        print("my body is: \(notes!)")
        
        UserDefaults.standard.set(title, forKey: "Title")
        UserDefaults.standard.set(notes, forKey: "Body")
    }
    
    @IBAction func handleLoadButtonPressed(_ sender: Any) {
        
        titleTextField.text = UserDefaults.standard.object(forKey: "Title") as? String
        
        notesTextView.text =  UserDefaults.standard.object(forKey: "Body") as? String
    }
}
