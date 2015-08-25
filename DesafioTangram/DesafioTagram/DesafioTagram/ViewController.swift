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

    var viewVerdeClaro: UIImageView!
    var viewLaranja: UIImageView!
    var viewAzulEscuro: UIImageView!
    var viewAzulClaro: UIImageView!
    var viewAmarelo: UIImageView!
    var viewVerdeEscuro: UIImageView!
    var viewVermelho: UIImageView!
    
    var imageAzulEscuro: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initViews() {
        let imageVerdeClaro = UIImage(named: "Layer5.png")
        self.viewVerdeClaro = UIImageView(image: imageVerdeClaro!)
        self.viewVerdeClaro.frame = CGRectMake(34, 5, 75, 150)
        self.view.addSubview(self.viewVerdeClaro)
        
        let imageLaranja = UIImage(named: "Layer1.png")
        self.viewLaranja = UIImageView(image: imageLaranja!)
        self.viewLaranja.frame = CGRectMake(34, 5, 150, 75)
        self.view.addSubview(self.viewLaranja)
        
        let imageAzulClaro = UIImage(named: "Layer3.png")
        self.viewAzulClaro = UIImageView(image: imageAzulClaro!)
        self.viewAzulClaro.frame = CGRectMake(147, 5, 37, 75)
        self.view.addSubview(self.viewAzulClaro)

        let imageAmarelo = UIImage(named: "Layer8.png")
        self.viewAmarelo = UIImageView(image: imageAmarelo!)
        self.viewAmarelo.frame = CGRectMake(109, 80, 75, 75)
        self.view.addSubview(self.viewAmarelo)
        
        let imageVermelho = UIImage(named: "Layer4.png")
        self.viewVermelho = UIImageView(image: imageVermelho!)
        self.viewVermelho.frame = CGRectMake(109, 42, 75, 75)
        self.view.addSubview(self.viewVermelho)
        
        let imageVerdeEscuro = UIImage(named: "Layer6.png")
        self.viewVerdeEscuro = UIImageView(image: imageVerdeEscuro!)
        self.viewVerdeEscuro.frame = CGRectMake(72, 80, 75, 37)
        self.view.addSubview(self.viewVerdeEscuro)
        
        self.imageAzulEscuro = UIImage(named: "Layer7.png")
        self.viewAzulEscuro = UIImageView(image: imageAzulEscuro!)
        self.viewAzulEscuro.frame = CGRectMake(34, 117, 112, 37)
        self.view.addSubview(self.viewAzulEscuro)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        UIView.animateWithDuration(0.5, animations: {
            var angle45 = CGFloat(M_PI/4)
            var angle = CGFloat(M_PI * 2 - M_PI/4)
            //self.viewLaranja.transform = CGAffineTransformMakeRotation(angle)
            self.viewLaranja.center = CGPoint(x: 245, y: 275)
            self.viewLaranja.transform = CGAffineTransformMakeRotation(angle45*6)

            
            self.viewVerdeClaro.center = CGPoint(x: 180, y: 300 - self.viewLaranja.frame.height/2)
            self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(angle45*7)
            
            self.viewAmarelo.center = CGPoint(x: 156, y: 142)
            self.viewAmarelo.transform = CGAffineTransformMakeRotation(angle45*5)
            
            self.viewVermelho.center = CGPoint(x: 180, y: 171 )
            self.viewVermelho.transform = CGAffineTransformMakeRotation(angle45*1)

            
            self.viewAzulClaro.center = CGPoint(x: 100, y: 218)
            self.viewAzulClaro.transform = CGAffineTransformMakeRotation(angle45*2)

            
            let image = UIImage(CGImage: self.imageAzulEscuro?.CGImage, scale: self.imageAzulEscuro!.scale, orientation: UIImageOrientation.UpMirrored)
            self.viewAzulEscuro.image = image
            
            self.viewVerdeEscuro.center = CGPoint(x: 193, y: 354)
            self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(angle45*3)
            
            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle45*2)
            self.viewAzulEscuro.center = CGPoint(x: 298, y: 336)
            self.viewAzulEscuro.transform = CGAffineTransformScale(self.viewAzulEscuro.transform, 1, -1)
        })
    }

}

