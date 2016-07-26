//
//  ViewController.swift
//  UIImageView Demo
//
//  Created by Mindscape on 7/26/16.
//  Copyright © 2016 Webterminal Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(colorLiteralRed: 0.1, green: 0.3, blue: 0.3, alpha: 1)
        
        // allocating&initializing imageview object and specifying the content area by frame
        let imageView = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.frame)/2)-50, 100, 100, 100))
        
        // setting up image to be displayed
        imageView.image = UIImage(named: "profile")
        
        // setting up highlighted image to be displayed when you change highlighted property to true
        imageView.highlightedImage = UIImage(named: "3D_apple_logo")
        
        // setting up view content mode, where the image actually shown based on the contentMode proprty
        /*
         public enum UIViewContentMode : Int {
         
         case ScaleToFill
         case ScaleAspectFit // contents scaled to fit with fixed aspect. remainder is transparent
         case ScaleAspectFill // contents scaled to fill with fixed aspect. some portion of content may be clipped.
         case Redraw // redraw on bounds change (calls -setNeedsDisplay)
         case Center // contents remain same size. positioned adjusted.
         case Top
         case Bottom
         case Left
         case Right
         case TopLeft
         case TopRight
         case BottomLeft
         case BottomRight
         }
         */
        imageView.contentMode = .ScaleAspectFit
        
        
        // make sure this property to true when you use contentMode as .Center
        imageView.clipsToBounds = true
        
        //adding imageview to it's superview
        self.view.addSubview(imageView)
        
        
        //adding tap action to the imageview object
        //if you want to add action to imageview object you need to enable the userInteractionEnabled property - true
        imageView.userInteractionEnabled = true
        
        //tap gesture
        let tapAction = UITapGestureRecognizer(target: self, action: #selector(ViewController.changeImage(_:)))
        imageView.addGestureRecognizer(tapAction)
        
        
        
        //making rounded image
        imageView.layer.cornerRadius = CGRectGetWidth(imageView.frame)/2
        
        
        let imageView1 = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.frame)/2)-50, 400, 100, 100))
        imageView1.image = UIImage(named: "profile")
        self.view.addSubview(imageView1)
        imageView1.layer.cornerRadius = 10

        
        //displaying animated images
        let loaderImageView = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.frame)/2)-20, 300, 40, 40))
        let imageNames = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"];
        var sequenceOfImages = [UIImage]()
        for name in imageNames{
            sequenceOfImages.append(UIImage(named: name)!)
        }
        loaderImageView.animationImages = sequenceOfImages
        self.view.addSubview(loaderImageView)
        
        loaderImageView.startAnimating()
    }
    
    func changeImage(gesture : UITapGestureRecognizer) -> Void {
        let imageView = gesture.view as! UIImageView
        if imageView.highlighted {
            imageView.highlighted = false
        }else{
            imageView.highlighted = true
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

