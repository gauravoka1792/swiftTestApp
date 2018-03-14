//
//  collViewController.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/9/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit

class collViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
    var collview : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 60)
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        collview = UICollectionView(frame: CGRect(x:0,y:0,width:410,height:80) ,   collectionViewLayout: layout)
        collview.dataSource = self
        collview.delegate = self
        collview.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collview.backgroundColor = UIColor .white
        view.addSubview(collview)
        
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    
       // cell.lblhello.text="this is \(indexPath.row) row of \(indexPath.section) section"
        cell.lblhello.text = "hello world"
        cell.lblhello.textColor = UIColor .black
        
        
        return cell
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
