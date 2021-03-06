//
//  LoginViewController.swift
//  tabbarCustom
//
//  Created by Pelorca on 09/12/2017.
//  Copyright © 2017 Eduardo Pelorca. All rights reserved.
//

import UIKit
import SCLAlertView
import FoldingTabBar
class LoginViewController: UIViewController {
    @IBOutlet weak var email: UITextField!

    @IBOutlet weak var passoword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
       
        
        setupTabBarController()
   
        
   
    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTabBarController() {
        
        let testAppDelegate = UIApplication.shared.delegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabObj = storyboard.instantiateViewController(withIdentifier: "tabController") as? TabBarViewController
        testAppDelegate?.window??.rootViewController = tabObj
        testAppDelegate?.window??.makeKeyAndVisible()
        
        let window = testAppDelegate?.window
        guard let tabBarController = window??.rootViewController as? YALFoldingTabBarController else { return }
        
        let item1 = YALTabBarItem(itemImage: #imageLiteral(resourceName: "iconFire"), leftItemImage: UIImage(named: "search_icon"), rightItemImage: UIImage(named: "settings_icon"))
        let item2 = YALTabBarItem(itemImage: #imageLiteral(resourceName: "iconAccident"), leftItemImage: UIImage(named: "search_icon"), rightItemImage: UIImage(named: "settings_icon"))
        let item3 = YALTabBarItem(itemImage: #imageLiteral(resourceName: "iconWildAnimals"), leftItemImage: UIImage(named: "search_icon"), rightItemImage: UIImage(named: "settings_icon"))
        
        tabBarController.leftBarItems = [item1, item2]
        
        
        
        let item4 = YALTabBarItem(itemImage: #imageLiteral(resourceName: "iconCrime"), leftItemImage: UIImage(named: "search_icon"), rightItemImage: UIImage(named: "settings_icon"))
        tabBarController.rightBarItems = [item3, item4]
        
        tabBarController.centerButtonImage = UIImage(named:"plus_icon")!
        tabBarController.selectedIndex = 0
        
        
        
        
        tabBarController.tabBarView.dotColor = UIColor(
            red: 94.0/255.0,
            green: 91.0/255.0,
            blue: 149.0/255.0,
            alpha: 0.1)
        
        //customize tabBarView
        tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight;
        tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
        tabBarController.tabBarView.backgroundColor = UIColor.clear
        
        tabBarController.tabBarView.tabBarColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tabBarController.tabBarView.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
        tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
        tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
        
        self.present(tabObj!, animated: true, completion: nil)
        
    }
    
}
