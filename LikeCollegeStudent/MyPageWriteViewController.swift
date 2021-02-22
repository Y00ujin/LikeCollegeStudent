//
//  MyPageWriteViewController.swift
//  LikeCollegeStudent
//
//  Created by 김유진 on 2021/02/22.
//

import UIKit

var user = 0

class MyPageWriteViewController: UIViewController{
    
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var department: UITextField!
    @IBOutlet weak var birth: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    var edit: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 10
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
        
        idArr.append(id.text!)
        departmentArr.append(department.text!)
        birthArr.append(birth.text!)
        emailArr.append(email.text!)
        nameArr.append(name.text!)
        numberArr.append(number.text!)
        user += 1
        print("user Count : \(user) / Arr Count : \(idArr.count)")
        
        edit = true
        
        // 배열 정보 저장
        UserDefaults.standard.set(idArr, forKey: "idArr")
        UserDefaults.standard.set(departmentArr, forKey: "departmentArr")
        UserDefaults.standard.set(birthArr, forKey: "birthArr")
        UserDefaults.standard.set(nameArr, forKey: "nameArr")
        UserDefaults.standard.set(emailArr, forKey: "emailArr")
        UserDefaults.standard.set(numberArr, forKey: "numberArr")
        
        

        UserDefaults.standard.set(user, forKey: "newwUserCount")
        UserDefaults.standard.set(edit, forKey: "edit")
        
        self.navigationController?.popViewController(animated: true)
    }
}
