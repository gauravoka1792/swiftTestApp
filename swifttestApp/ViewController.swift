//
//  ViewController.swift
//  swifttestApp
//
//  Created by Gaurav Oka on 10/6/17.
//  Copyright © 2017 Gaurav Oka. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    var lblname = UILabel()
    var lblpass = UILabel()
    var txtname = UITextField()
    var txtpass = UITextField()
    var btnsub = UIButton()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* code for applying background image to view */
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"Image")!)
        
        /* code for creating UIlabels*/
        lblname = UILabel(frame:CGRect(x:70,y:130,width:100,height:60))
        lblname.text="UserName:"
        lblname.textColor = UIColor .black
        lblname.font = UIFont .boldSystemFont(ofSize: 17.0)
        self.view.addSubview(lblname)
        
        lblpass = UILabel(frame: CGRect(x:80,y:190,width:100,height:60))
        lblpass.text="Password:"
        lblpass.textColor = UIColor .black
        lblpass.font = UIFont .boldSystemFont(ofSize: 17.0)
        self.view.addSubview(lblpass)
        
        /* Code for creating UITextFields */
        
        txtname = UITextField(frame: CGRect(x:180,y:148,width:200,height:30))
        txtname.backgroundColor = UIColor(red:137/255,green:238/255,blue:249/255,alpha:1)
        txtname.borderStyle = UITextBorderStyle.roundedRect
        txtname.font = UIFont .systemFont(ofSize: 17.0)
        txtname.textColor  = UIColor .black
        txtname.keyboardType = UIKeyboardType.default
        self.view.addSubview(txtname)
        
        txtpass = UITextField(frame: CGRect(x:180,y:205,width:200,height:30))
        txtpass.backgroundColor = UIColor(red:137/255,green:238/255,blue:249/255,alpha:1)
        txtpass.textColor = UIColor .black
        txtpass.isSecureTextEntry = true
        txtpass.borderStyle = UITextBorderStyle.roundedRect
        txtpass.font=UIFont .systemFont(ofSize: 17.0)
        txtname.keyboardType=UIKeyboardType.default
        self.view.addSubview(txtpass)
        
        /*code for UIButton Creation */
        
        btnsub = UIButton(frame: CGRect(x:200,y:270,width:150,height:30))
        btnsub.setTitle("Submit", for: .normal)
        btnsub.setTitleColor(UIColor .black , for: .normal)
        btnsub.layer.borderWidth = 1.0
        btnsub.backgroundColor = UIColor(red:100/255,green:191/255 , blue:201/255,alpha:1)
        btnsub.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        self.view.addSubview(btnsub)
        
        
        
        
        
        
        
        
        
    }
    /* function that will work on button click*/
    
    @objc func nextpage()
    {
        
        
        if txtname.text == "Gaurav" &&  txtpass.text == "gaurav"
        {
            let viewcon = tblvViewController()
            self.navigationController?.pushViewController(viewcon, animated: true)
        }
        else
        {
            let alert = UIAlertController(title:"Alert", message:"Input Valid Credentials", preferredStyle: UIAlertControllerStyle.alert )
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert,animated: true , completion: nil)
            
            
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

