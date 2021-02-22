//
//  UserViewController.swift
//  LikeCollegeStudent
//
//  Created by 김유진 on 2021/02/22.
//

import UIKit


class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var user = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        user = UserDefaults.standard.integer(forKey: "user")
        return user
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        print("indexPath : \(indexPath)")
        cell.nameLabel.text = "1"
        
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func getNameArr() -> [String]? {
       guard let name = UserDefaults.standard.array(forKey: "nameArr") as? [String] else {
          return nil
       }
       return name
    }
}
