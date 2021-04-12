//
//  HomeViewController.swift
//  Leftover
//
//  Created by suiyan he on 4/5/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Logout(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let login = main.instantiateViewController(identifier: "LoginController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
             let delegate = windowScene.delegate as? SceneDelegate        else{
            return
            
        }
        delegate.window?.rootViewController = login
    }
    
    @IBOutlet weak var searchIngredients: UISearchBar!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
