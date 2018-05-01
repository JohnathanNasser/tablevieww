//
//  Showdatabigger.swift
//  tableview
//
//  Created by Johnathan on 4/30/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class Showdatabigger: UIViewController
{
    
    @IBOutlet weak var labelll: UILabel!
    @IBOutlet weak var imageee: UIImageView!
    @IBOutlet weak var texttt: UITextView!
    
    var name:String = ""
    var desc = ""
    var image = ""
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelll.text = name
        texttt.text = desc
        imageee.image = UIImage(named: image)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
