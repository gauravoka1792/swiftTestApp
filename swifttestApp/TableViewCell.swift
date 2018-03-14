//
//  TableViewCell.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/6/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var lblhello = UILabel ()
    var btnnext = UIButton()
    
    
    /*  initialising function for custom cell */
        override init(style: UITableViewCellStyle, reuseIdentifier: String?)
        {
                super.init(style: style, reuseIdentifier: reuseIdentifier)
        
                /*  code for creating UIButton */
                lblhello = UILabel(frame: self.contentView.bounds)
                lblhello.text="hello world"
                lblhello.textColor = UIColor .black
                lblhello.font = UIFont .systemFont(ofSize: 17.0)
                contentView.addSubview(lblhello)
            
                /* code for creating UIButton */
                btnnext = UIButton(frame: self.contentView.bounds)
                btnnext.setTitle("Submit", for: .normal)
                btnnext.setTitleColor(UIColor .black, for: .normal)
                
                contentView.addSubview(btnnext)
            
            
            
        
         }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

   

}
