//
//  ViewController.swift
//  LikeCollegeStudent
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPageButton.layer.cornerRadius = 18
    }
    
    
    @IBAction func myPageButton(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "MyPage")
        
        // 로그인 성공 ? -> tabBarViewController로 화면 push
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    

}

