//
//  detailViewController.swift
//  Hackwich6
//
//  Created by User on 4/20/21.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
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
