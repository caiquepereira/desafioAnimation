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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViews()
        
        
        UIView.animateWithDuration(0.5, animations: {
            var angle = CGFloat(M_PI/2)
//            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewAzulClaro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewAmarelo.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVermelho.transform = CGAffineTransformMakeRotation(angle)
            self.viewLaranja.transform = CGAffineTransformMakeRotation(angle)
        })
        
        UIView.animateWithDuration(1.0, delay: 0.5, options: nil, animations: {
            var angle = CGFloat(M_PI)
//            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewAzulClaro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(angle)
//            self.viewAmarelo.transform = CGAffineTransformMakeRotation(angle)
//            self.viewVermelho.transform = CGAffineTransformMakeRotation(angle)
            self.viewLaranja.transform = CGAffineTransformMakeRotation(angle)
        }, completion: nil)
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
        
        let imageAzulEscuro = UIImage(named: "Layer7.png")
        self.viewAzulEscuro = UIImageView(image: imageAzulEscuro!)
        self.viewAzulEscuro.frame = CGRectMake(34, 117, 112, 37)
        self.view.addSubview(self.viewAzulEscuro)
    }

}

