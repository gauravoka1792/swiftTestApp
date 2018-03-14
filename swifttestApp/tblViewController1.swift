//
//  tblViewController1.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/9/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit

class tblViewController1: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    
    
       var tbleview = UITableView()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbleview = UITableView(frame: UIScreen.main.bounds , style: .grouped)
        tbleview.delegate = self
        tbleview.dataSource = self
        tbleview.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tbleview)
        

        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor .orange
    }
    func numberOfSections(in tableView: UITableView) -> Int {
      return  3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 2)
        {
            return 1
        }
        else
        {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbleview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
       // cell.textLabel?.text="this is \(indexPath.row)th row of \(indexPath.section) sction"
        
        cell.btnnext.addTarget(self, action: #selector(nextslide), for: .touchUpInside)
        
        if(indexPath.section == 2)
        {
            cell.lblhello.isHidden = true
        }
        else
        {
            cell.btnnext.isHidden = true
        }
        
        
        
        return cell
    }
    @objc func nextslide()
    {
        let viewcon = collViewController()
        
        self.navigationController?.pushViewController(viewcon, animated: true)
        
    
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
