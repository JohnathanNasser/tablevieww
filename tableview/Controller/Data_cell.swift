//
//  Data_cell.swift
//  tableview
//
//  Created by Johnathan on 4/30/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class Data_cell: UITableViewCell
{

    @IBOutlet weak var laItemName: UILabel!
    @IBOutlet weak var txtDescription: UITextView!
    @IBOutlet weak var imgItem: UIImageView!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
