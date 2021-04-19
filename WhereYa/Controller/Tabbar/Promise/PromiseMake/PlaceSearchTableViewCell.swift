//
//  PlaceSearchTableViewCell.swift
//  WhereYa
//
//  Created by 홍진석 on 2021/04/01.
//

import UIKit

class PlaceSearchTableViewCell: UITableViewCell {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    var longitudeX : String?
    var latitudeY : String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
