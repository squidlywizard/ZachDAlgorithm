//
//  ViewController.swift
//  ZachDAlgorithm
//
//  Created by Denna, Zachary on 10/23/18.
//  Copyright © 2018 Denna, Zachary. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{

   public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
        //calling the format algorithm
    }

     public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "Xcode"
        let one : String = "1Beggin by opening your xcode program, hitting create a new Xcode project, next"
        
        let two : String = "2Next give your application a name and click the blue buttons till your at a main page of sorts"
        let three : String = "3Next arrange your files in the top left by command clicking and making a selection out of by left clicking, they should look like bellow <n>"
        let four : String = "4Next click the blue file at the top left, click choose info.plist File click the thing that says info.plist and choose"
        let five : String = "5Lastly click main.storyboard and your ready to code"
        let algorithm = [one, two, three, four, five]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "👺"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()//Ns Mutable String is used to defunk strings
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        return outlineStyle
    }
}

