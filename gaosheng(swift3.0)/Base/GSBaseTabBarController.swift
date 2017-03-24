//
//  GSBaseTabBarController.swift
//  gaosheng(swift3.0)
//
//  Created by 刘高升 on 17/3/23.
//  Copyright © 2017年 刘高升. All rights reserved.
//

import UIKit

class GSBaseTabBarController: UITabBarController {

    private var homeVc:GSHomeViewController! = GSHomeViewController()
    private var mineVc:GSMineViewController! = GSMineViewController()
    private var breakNewVc:GSBreakNewsViewController! = GSBreakNewsViewController()
    private var iMesssagesVc:GSIMessagesViewController! = GSIMessagesViewController()
    private var persencenterVc:GSPersenCenterViewController! = GSPersenCenterViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor.black
        tabBar.backgroundImage = UIImage(named: "bar")
        addChildVc(viewController: homeVc, name: "城说", imageName: "recommendation_1", selectImage: "recommendation_2")
        addChildVc(viewController: mineVc, name: "我的", imageName: "broadwood_1", selectImage: "broadwood_2")
        addChildVc(viewController: breakNewVc, name: "快报", imageName: "classification_1", selectImage: "classification_2")
        addChildVc(viewController: iMesssagesVc, name: "消息", imageName: "tab_good_normal", selectImage: "tab_good_pressed")
        addChildVc(viewController: persencenterVc, name: "我", imageName: "my_1", selectImage: "my_2")

    }
    private func addChildVc(viewController: UIViewController , name: String , imageName: String , selectImage: String) {
        viewController.title = name
        viewController.tabBarItem.image = UIImage(named: imageName)
        viewController.tabBarItem.selectedImage = UIImage(named: selectImage)
        let baseNav = GSBaseNavigationController(rootViewController: viewController)
        addChildViewController(baseNav)

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
