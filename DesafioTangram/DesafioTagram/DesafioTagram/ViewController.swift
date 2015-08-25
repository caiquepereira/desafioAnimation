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
        // Do any additional setup after loading the view, typically from a nib.
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let tripleTap = UITapGestureRecognizer(target: self, action: Selector("tripleTap"))
        tripleTap.numberOfTapsRequired = 3
        self.view.addGestureRecognizer(tripleTap)
        
        let doubleTap = UITapGestureRecognizer(target: self, action: Selector("doubleTap"))
        doubleTap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(doubleTap)
        doubleTap.requireGestureRecognizerToFail(tripleTap)

        let tap = UITapGestureRecognizer(target: self, action: Selector("oneTap"))
        tap.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tap)
        tap.requireGestureRecognizerToFail(doubleTap)
        
        
        let twoFingers = UITapGestureRecognizer(target: self, action: Selector("twoFingers"))
        twoFingers.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(twoFingers)
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        self.view.addGestureRecognizer(longPressRecognizer)
        
        self.initViews()
        
        
        
//        let imageName = "Layer5.png"
//        let image = UIImage(named: imageName)
//        let imageView = UIImageView(image: image!)
//        imageView.center.x = eixoX
//        imageView.center.y = eixoY
//        view.addSubview(imageView)
        
    
        
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
    
    func oneTap() {
        println("one tap")
        self.drawCat()
    }
    
    func doubleTap() {
        
        //peixe
        
    }
    
    func tripleTap() {
        
        println("triple tap")
        
        
    }
    
    func twoFingers() {
        
        println("2 fingers")
        
        
    }
    
    func longPressed(sender: UILongPressGestureRecognizer)
    {
        println("longpressed")
    }
    
    
    
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Up:
                println("Swiped up")
            case UISwipeGestureRecognizerDirection.Down:
                self.drawDog()
                println("Swiped down")
            case UISwipeGestureRecognizerDirection.Left://cavalo
                self.drawHorse()
            case UISwipeGestureRecognizerDirection.Right:
                self.drawSwan()
            
            default:
                break
            }
        }
    }


    func drawHorse(){

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





    
    func drawCat() {
        
        UIView.animateWithDuration(0.5, animations: {
            self.normalizeAngles()
            var angle45 = CGFloat(M_PI/4)
            
            var angle = CGFloat(M_PI * 2 - M_PI/4)
            
            self.viewLaranja.transform = CGAffineTransformMakeRotation(angle)
            
            self.viewLaranja.center = CGPoint(x: 202, y: 356)
            
            
            
            self.viewVerdeClaro.center = CGPoint(x: 191, y: 356 - self.viewLaranja.frame.height/2)
            
            self.viewAmarelo.center = CGPoint(x: self.viewVerdeClaro.center.x  - self.viewVerdeClaro.frame.width/2, y: self.viewVerdeClaro.center.y - self.viewVerdeClaro.frame.height/7)
            
            self.viewAmarelo.transform = CGAffineTransformMakeRotation(angle45*3)
            
            
            
            self.viewVermelho.center = CGPoint(x: self.viewAmarelo.center.x - 20, y: self.viewAmarelo.center.y - self.viewAmarelo.frame.height/1.5)
            
            self.viewAzulClaro.center = CGPoint(x: self.viewVermelho.center.x + self.viewVermelho.frame.width/4, y: self.viewVermelho.center.y - self.viewVermelho.frame.height/2)
            
            
            
            self.viewAzulEscuro.transform = CGAffineTransformMakeScale(-1, -1)
            
            self.viewVerdeEscuro.center = CGPoint(x: self.viewVermelho.center.x - self.viewVermelho.frame.width/4, y: self.viewVermelho.center.y - self.viewVermelho.frame.height/2)
            
            self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(angle45*2)
            
            
            
            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle45*3.5)
            
            self.viewAzulEscuro.center = CGPoint(x: self.viewLaranja.center.x + self.viewLaranja.frame.width/2.23, y: self.viewLaranja.center.y - 12)
            
        })
    }
    
    func drawSwan() {
        UIView.animateWithDuration(0.5, animations: {
            self.normalizeAngles()
            var angle45 = CGFloat(M_PI/4)
            
            var angle = CGFloat(M_PI * 2 - M_PI/4)
            
            self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(angle45*3)
            
            self.viewVerdeClaro.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
            
            self.viewLaranja.center = CGPoint(x: self.viewVerdeClaro.center.x + self.viewVerdeClaro.frame.width/3.3, y: self.viewVerdeClaro.center.y - self.viewVerdeClaro.frame.height/3.75)
            
            self.viewAmarelo.center = CGPoint(x: self.viewVerdeClaro.center.x - self.viewAmarelo.frame.width/2.77, y: self.viewVerdeClaro.center.y - self.viewVerdeClaro.frame.height/6)
            
            self.viewAmarelo.transform = CGAffineTransformMakeRotation(angle45*3)
            
            self.viewAzulClaro.center = CGPoint(x: self.viewAmarelo.center.x - self.viewAzulClaro.frame.width/1.07, y: self.viewAmarelo.center.y - self.viewAzulClaro.frame.height/2.03)
            
            self.viewAzulClaro.transform = CGAffineTransformMakeRotation(angle45*4)
            
            self.viewVermelho.center = CGPoint(x: self.viewAzulClaro.center.x + self.viewAzulClaro.frame.width/2, y: self.viewAzulClaro.center.y - self.viewAzulClaro.frame.height/2)
            
            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle45*2)
            
            self.viewAzulEscuro.center = CGPoint(x: self.viewVermelho.center.x + self.viewVermelho.frame.width/4, y: self.viewVermelho.center.y - self.viewAzulEscuro.frame.height/2)
            
            self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(angle45*3)
            
            self.viewVerdeEscuro.center = CGPoint(x: self.viewAzulEscuro.center.x - self.viewAzulEscuro.frame.width/1.17, y: self.viewAzulEscuro.center.y - self.viewVerdeEscuro.frame.height/4.75)
            
        })
    }

func drawDog() {
        UIView.animateWithDuration(0.5, animations: {
            self.normalizeAngles()
            var angle45 = CGFloat(M_PI/4)
            var angle90 = CGFloat(M_PI/2)

         
            self.viewLaranja.center = CGPoint(x: 180, y: 200)

            
            self.viewVerdeClaro.center = CGPoint(x: self.viewLaranja.center.x - (self.viewVerdeClaro.frame.width + 5), y: self.viewLaranja.center.y + 12)

            self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(angle90 + angle45)


            self.viewAzulClaro.center = CGPoint(x: self.viewVerdeClaro.center.x - self.viewVerdeClaro.frame.width/3.5, y: self.viewVerdeClaro.center.y + (self.viewAzulClaro.frame.height - 35))
            

            self.viewAmarelo.center = CGPoint(x: self.viewLaranja.center.x + (self.viewAmarelo.frame.width/2)+1, y: self.viewLaranja.center.y + 1)


            self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(angle45)

            self.viewAzulEscuro.center = CGPoint(x: self.viewLaranja.center.x + (self.viewLaranja.frame.width/2)+1, y: self.viewLaranja.center.y + self.viewLaranja.frame.height - 9)


            self.viewVermelho.center = CGPoint(x: self.viewAmarelo.center.x + self.viewVermelho.frame.width, y: self.viewAmarelo.center.y - self.viewVermelho.frame.height/2)


            self.viewVerdeEscuro.center = CGPoint(x: self.viewVermelho.center.x - self.viewVerdeEscuro.frame.width/2, y: self.viewVermelho.center.y - self.viewVermelho.frame.height + 20)

        })
    }

    
    func normalizeAngles() {
        self.viewAzulEscuro.transform = CGAffineTransformMakeRotation(0)
        self.viewVerdeEscuro.transform = CGAffineTransformMakeRotation(0)
        self.viewAmarelo.transform = CGAffineTransformMakeRotation(0)
        self.viewVermelho.transform = CGAffineTransformMakeRotation(0)
        self.viewLaranja.transform = CGAffineTransformMakeRotation(0)
        self.viewVerdeClaro.transform = CGAffineTransformMakeRotation(0)
        self.viewAzulClaro.transform = CGAffineTransformMakeRotation(0)
    }
    
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

