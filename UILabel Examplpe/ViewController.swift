//
//  ViewController.swift
//  UILabel Examplpe
//
//  Created by Mindscape on 7/19/16.
//  Copyright © 2016 Webterminal Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        ///the below three statements are the mandatory to add label to it's superview
        ///1) assuming the width of label to be displayed
        ///2) allocating an object for label and setting up it's frame
        ///3) adding label to it's superview
        let width = CGRectGetWidth(self.view.frame)-40
        let label = UILabel(frame: CGRectMake(20,100,width,50))
        self.view.addSubview(label)
        
        
        /// text:: setting up the default text to be displayed on the label, but by default the text property of UILabel will be set to nil
        label.text = "Implements a read-only text view. A label can contain an arbitrary amount of text, but UILabel may shrink, wrap, or truncate the text, depending on the size of the bounding rectangle and properties you set. You can control the font, text color, alignment, highlighting, and shadowing of the text in the label."
        
        
        /// font:: setting up the font style to the text, you may set your custom fonts also.
        /// In order to set font style you have to use UIFont class reference and also you can see default supported fonts by iOS as well
        label.font = UIFont.systemFontOfSize(12)
        
        
        /// textColor:: by default the text color will be black color if you want to change the text color you can use textColor property to set your custom color
        /// the color will be set using UIColor referenced object
        label.textColor = UIColor.purpleColor()
        
        
        /// textAlignment:: will be the enum value, the text alignment can be managed my these value
        /**public enum NSTextAlignment : Int {
        case Left // Visually left aligned
        case Center // Visually centered
        case Right // Visually right aligned
        /* !TARGET_OS_IPHONE */
        // Visually right aligned
        // Visually centered
        case Justified // Fully-justified. The last line in a paragraph is natural-aligned.
        case Natural // Indicates the default alignment for script
        }*/
        label.textAlignment = .Center
        
        
        
        /// lineBreakMode:: is an enum valut to be suppliet to style your paragraph text, by default it's value will be ByTruncatingTail
        /**
         public enum NSLineBreakMode : Int {
         case ByWordWrapping // Wrap at word boundaries, default
         case ByCharWrapping // Wrap at character boundaries
         case ByClipping // Simply clip
         case ByTruncatingHead // Truncate at head of line: "...wxyz"
         case ByTruncatingTail // Truncate at tail of line: "abcd..."
         case ByTruncatingMiddle // Truncate middle of line:  "ab...yz"
         }
         */
        label.lineBreakMode = .ByTruncatingTail
        
        
        /// A Boolean value indicating whether the font size should be reduced in order to fit the title string into the label’s bounding rectangle. The default value will be false
        /// If you change it to true, you should also set an appropriate minimumScaleFactor property.
        label.adjustsFontSizeToFitWidth = true
        
        
        ///Use this property to specify the smallest multiplier for the current font size that yields an acceptable font size to use when displaying the label’s text. If you specify a value of 0 for this property, the current font size is used as the smallest font size.
        label.minimumScaleFactor = 0.3
        
        
        ///This property controls the maximum number of lines to use in order to fit the label’s text into its bounding rectangle. The default value for this property is 1. 
        ///To remove any maximum limit, and use as many lines as needed, set the value of this property to 0.
        label.numberOfLines = 0
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UILabel{
    func requiredHeight() -> CGFloat{
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, self.frame.width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = self.font
        label.text = self.text
        label.sizeToFit()
        return label.frame.height
    }
}


