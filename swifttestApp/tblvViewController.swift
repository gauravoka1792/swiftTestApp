//
//  tblvViewController.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/6/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit

class tblvViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    
    /*code for initialisation of table view */
    var tblview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* code for placing background image */
        self.view.backgroundColor=UIColor(patternImage: UIImage(named:"Image")!)
        
        
        /* code for creating  tableview programmatically */
        
        tblview = UITableView(frame: UIScreen.main.bounds , style: .grouped)
        tblview.delegate = self
        tblview.dataSource = self
        view.addSubview(tblview)
        tblview.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    /* function of table view which determines how many sections are there in table view */
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    /* function in table view which determines how many rows are there in each section */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if(section == 2)
        {
        return 1
        }
        else
        {
        return 2
        }
    }
    
    /* function in table view for iterating loop for number of times according to index path */
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
         let cell = tblview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        if(indexPath.section == 2)
        {
            cell.lblhello.isHidden = true
            
             cell.btnnext.addTarget(self, action: #selector(clickme), for: .touchUpInside)
            
        
            
        }
        else
        {
            cell.btnnext.isHidden = true
            
            cell.imageView?.image = UIImage(named:"Image")
            // cell.imageView?.image = UIImage(data:data!)!
           // cell.imageView?.frame = UIImageView(frame: self.contentView.bounds)
            cell.accessoryView = cell.imageView
            
            
            
            
        }
        
        return cell
        
    }
    
    
    @objc func clickme()
    {
        let viewcon = tblViewController1()
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
