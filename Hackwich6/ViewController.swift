//
//  ViewController.swift
//  Hackwich6
//
//  Created by User on 3/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var myFriendsArray = ["Miku", "Sarah", "Nicole"]
    
    //var countriesToVisitArray = ["Scotland", "Canada", "Japan"]
    
    var friendsHomeArray = ["Ewa Beach", "Kunia", "Kapolei"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myFriendsArray.count
        
        //return countriesToVisitArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        let text = myFriendsArray[indexPath.row]
        
        //let text = countriesToVisitArray[indexPath.row]
        
        cell.textLabel?.text = text

        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        
        return cell
    }

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

