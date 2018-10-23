//
//  ViewController.swift
//  ZachDAlgorithm
//
//  Created by Denna, Zachary on 10/23/18.
//  Copyright © 2018 Denna, Zachary. All rights reserved.
//

import UIKit

public class ViewController: UIViewController
{

   public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
        //calling the format algorithm
    }

    override func didReceiveMemoryWarning() {
     public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func formatAlgorithm() -> Void
    {
        let one = "1Beggin by opening your xcode program, hitting create a new Xcode project, next"
        
        let two = "2Next give your application a name and click the blue buttons till your at a main page of sorts"
        let three = "3Next arrange your files in the top left by command clicking and making a selection out of by left clicking, they should look like bellow <n>"
        let four = "4Next click the blue file at the top left, click choose info.plist File click the thing that says info.plist and choose"
        let five = "5Lastly click main.storyboard and your ready to code"
        let algorithm = [one, two, three, four, five]
        
        let bullet : String = "👺"
    }
    
    privatefunc createOutlineStyle() -> NSParagraphStyle
    {
    let outlineStyle : NSMutableParagraphStyle = NSMutablePalagraphStyle()
    
    outlineStyle.alignment = .left
    outlineStyle.defaultTabInterval = 15
    outlineStyle.firstLineHeadIndent = 20
    outlineStyle.headIndent = 35
    }

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var Text: UILabel!
    
   
}

