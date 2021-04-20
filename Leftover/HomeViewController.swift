//
//  HomeViewController.swift
//  Leftover
//
//  Created by suiyan he on 4/5/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tbView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let foodnameArr = ["beef", "lamb", "Bananas", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh"]
    
    var searchfood = [String]()
    var isSearching = false

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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Do any additional setup after loading the view.
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
     
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         if isSearching {
             return searchfood.count
         } else {
             return foodnameArr.count
         }
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
         if isSearching {
             cell?.textLabel?.text = searchfood[indexPath.row]
         } else {
             cell?.textLabel?.text = foodnameArr[indexPath.row]
         }
         return cell!
     }
 }

extension HomeViewController: UISearchBarDelegate {
     
     func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchfood = foodnameArr.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
         isSearching = true
         tbView.reloadData()
     }
     
     func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
         isSearching = false
         searchBar.text = ""
         tbView.reloadData()
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

