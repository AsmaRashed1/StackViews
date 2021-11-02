//
//  ViewController.swift
//  StackViews
//
//  Created by Mobark Alseif on 27/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Ali","Mubarak","Mohmmad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setdelegate()
    }


}


extension ViewController :UITableViewDelegate,UITableViewDataSource {
    
    func setdelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MessagesTableViewCell else { return UITableViewCell() }
        
        cell.message.text = "Mem"
        cell.imageProfile.image = UIImage(systemName: "circle")
        cell.userName.text = names[indexPath.row]
        cell.dateMessage.text = Date.now.description
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    
    
}
