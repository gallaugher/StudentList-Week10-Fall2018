//
//  StudentDetailViewController.swift
//  StudentList
//
//  Created by John Gallaugher on 10/16/18.
//  Copyright © 2018 John Gallaugher. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet weak var saveBarButon: UIBarButtonItem!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var studentNameField: UITextField!
    var student: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if student == nil {
            student = ""
        }
        studentNameField.text = student
    }

    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode { // modal segue
            dismiss(animated: true, completion: nil)
        } else { // show segue
            navigationController!.popViewController(animated: true)
        }
    }
}
