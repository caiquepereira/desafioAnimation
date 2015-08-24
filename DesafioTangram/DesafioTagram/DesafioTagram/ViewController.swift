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
        
        let tap = UITapGestureRecognizer(target: self, action: Selector("oneTap"))
        tap.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tap)
        
        let doubleTap = UITapGestureRecognizer(target: self, action: Selector("doubleTap"))
        doubleTap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(doubleTap)
        
        let tripleTap = UITapGestureRecognizer(target: self, action: Selector("tripleTap"))
        tripleTap.numberOfTapsRequired = 3
        self.view.addGestureRecognizer(tripleTap)
        
        let twoFingers = UITapGestureRecognizer(target: self, action: Selector("twoFingers"))
        twoFingers.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(twoFingers)
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        self.view.addGestureRecognizer(longPressRecognizer)
        
        
        
        let imageName = "Layer5.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.center.x = eixoX
        imageView.center.y = eixoY
        view.addSubview(imageView)
        
    
        
    }

    
    func oneTap() {
        
        println("one tap")
        
        
    }
    
    func doubleTap() {
        
        println("double tap")
        
        
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
                println("Swiped down")
            case UISwipeGestureRecognizerDirection.Left:
                println("Swiped left")
            case UISwipeGestureRecognizerDirection.Right:
                println("Swiped right")
            
            default:
                break
            }
        }
    }
    
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

