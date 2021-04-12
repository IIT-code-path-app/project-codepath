//
//  PostViewController.swift
//  Leftover
//
//  Created by suiyan he on 4/5/21.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var postPicture: UIImageView!
    
    @IBOutlet weak var foodName: UITextField!
    
    
    @IBOutlet weak var ingredients: UITextField!
    
    
    @IBOutlet weak var estimatedTime: UITextField!
    
    @IBOutlet weak var instructions: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func post(_ sender: Any) {
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
