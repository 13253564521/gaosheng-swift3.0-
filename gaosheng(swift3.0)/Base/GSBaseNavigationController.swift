//
//  GSBaseNavigationController.swift
//  gaosheng(swift3.0)
//
//  Created by 刘高升 on 17/3/23.
//  Copyright © 2017年 刘高升. All rights reserved.
//1.统一管理项目中的导航控制器
//2.如果说项目中突然有个页面要旋转，必须加上这个类。不然不好处理

import UIKit

class GSBaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //状态栏颜色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        //导航栏背景颜色
        navigationBar.barTintColor = kNavBgCorlor
        
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
