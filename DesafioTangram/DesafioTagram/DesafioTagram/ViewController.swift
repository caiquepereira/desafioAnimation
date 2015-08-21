//
//  ViewController.swift
//  DesafioTagram
//
//  Created by Caique de Paula Pereira on 21/08/15.
//  Copyright (c) 2015 Caique de Paula Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var eixoX:CGFloat = UIScreen.mainScreen().bounds.width/4
    var eixoY:CGFloat = UIScreen.mainScreen().bounds.width/2 //250

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        let imageName = "Layer5.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.center.x = eixoX
        imageView.center.y = eixoY
        view.addSubview(imageView)
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

