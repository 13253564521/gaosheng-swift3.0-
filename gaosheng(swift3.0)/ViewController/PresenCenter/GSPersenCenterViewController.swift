//
//  GSPersenCenterViewController.swift
//  gaosheng(swift3.0)
//
//  Created by 刘高升 on 17/3/23.
//  Copyright © 2017年 刘高升. All rights reserved.
//

import UIKit

class GSPersenCenterViewController: GSBaseViewController , UITableViewDelegate , UITableViewDataSource {
    var tableview: UITableView?
    
    
    lazy var dataSource: Array<Array<String>> = {
        
        return [[""],["昵称","英文名","个性签名"],["修改地址","通讯工具"],["修改密码"],["用户反馈"],["推广挣钱","城市经理"],["退出账号"]]
    
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initTableview()
    }

    private func initTableview() {
        tableview = UITableView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - kTabbarHeight), style: UITableViewStyle.grouped)
        tableview?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        tableview?.delegate = self;
        tableview?.dataSource = self;
    
        view.addSubview(tableview!)
    }
    
// UITableViewDelegate , UITableViewDataSource
    public func numberOfSections(in tableView: UITableView) -> Int{
        return dataSource.count
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        switch section {
        case 0,3,4,6:
            return 1
        case 2,5:
            return 2
        case 1:
            return 3
        default:
            return 1
        }

    
    
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let  cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        var array = dataSource[indexPath.section]
        cell.textLabel?.text = array[indexPath.row]
        if indexPath.section == 0 {
            cell.imageView?.image = UIImage(named: "menpai3")
        }else if indexPath.section == 5{
            
            cell.textLabel?.textColor = UIColor.orange
            
            
        }else if indexPath.section == 6{
        
            cell.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            cell.textLabel?.textAlignment = NSTextAlignment.center
            cell.textLabel?.textColor = UIColor.white
            
        
        }
        return cell
    
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        tableView.deselectRow(at: indexPath, animated: true)
    
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
