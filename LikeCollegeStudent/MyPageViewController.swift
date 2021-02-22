//
//  MyPageViewController.swift
//  LikeCollegeStudent
//
//  Created by 김유진 on 2021/02/22.
//

import UIKit

var idArr: [String] = [""]
var departmentArr = [""]
var birthArr = [""]
var emailArr = [""]
var nameArr = [""]
var numberArr = [""]

class MyPageViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var department: UILabel!
    @IBOutlet weak var birth: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var number: UILabel!
    
    var edit: Bool = false
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        edit = UserDefaults.standard.bool(forKey: "edit")
        user = UserDefaults.standard.integer(forKey: "newwUserCount")
        
        print(user,getIdArr()?.count)
        
        if(edit == true){
            id.text = (getIdArr()?[user] ?? "")!
            number.text = (getNumberArr()?[user] ?? "")!
            birth.text = (getBirthArr()?[user] ?? "")!
            name.text = ("\((getNameArr()?[user] ?? "")!) 님,")
            email.text = (getEmailArr()?[user] ?? "")!
            department.text = (getDepartmentArr()?[user] ?? "")!
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func userMoveButton(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "User")
        
        // 로그인 성공 ? -> tabBarViewController로 화면 push
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    @IBAction func myPageWriteMoveButton(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "MyPageWrite")
        
        // 로그인 성공 ? -> tabBarViewController로 화면 push
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    func getIdArr() -> [String]? {
       guard let id = UserDefaults.standard.array(forKey: "idArr") as? [String] else {
          return nil
       }
       return id
    }
    
    func getDepartmentArr() -> [String]? {
       guard let department = UserDefaults.standard.array(forKey: "departmentArr") as? [String] else {
          return nil
       }
       return department
    }
    
    func getNameArr() -> [String]? {
       guard let name = UserDefaults.standard.array(forKey: "nameArr") as? [String] else {
          return nil
       }
       return name
    }
    
    func getEmailArr() -> [String]? {
       guard let email = UserDefaults.standard.array(forKey: "emailArr") as? [String] else {
          return nil
       }
       return email
    }
    
    func getNumberArr() -> [String]? {
       guard let number = UserDefaults.standard.array(forKey: "numberArr") as? [String] else {
          return nil
       }
       return number
    }
    
    func getBirthArr() -> [String]? {
       guard let id = UserDefaults.standard.array(forKey: "birthArr") as? [String] else {
          return nil
       }
       return id
    }
}
