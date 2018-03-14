//
//  CollectionViewCell.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/9/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    var lblhello = UILabel();
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        lblhello = UILabel(frame : self.contentView.bounds)
        
        contentView.addSubview(lblhello)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
