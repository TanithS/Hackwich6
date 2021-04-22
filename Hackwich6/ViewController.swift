//
//  ViewController.swift
//  Hackwich6
//
//  Created by User on 3/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantImageData = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    /*var myFriendsArray = ["Miku", "Sarah", "Nicole"]
    
    //var countriesToVisitArray = ["Scotland", "Canada", "Japan"]
    
    var friendsHomeArray = ["Ewa Beach", "Kunia", "Kapolei"]*/
    
    var restaurantArray = ["Kapolei Kalapawai"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return myFriendsArray.count
        
        //return countriesToVisitArray.count
        
        return restaurantImageData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        //let text = myFriendsArray[indexPath.row]
        
        //let text = countriesToVisitArray[indexPath.row]
        
        //cell.textLabel?.text = text

        //cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        
        let text = restaurantArray[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
    }

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            
            let dict = NSDictionary(contentsOfFile: path!)
            
            restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
            
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        
        if segue.identifier == "mySegue"{
            
            let s1 = segue.destination as! detailViewController
            
            let imageIndex = tableView.indexPathForSelectedRow?.row
            
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    }

}

