//
//  CityCell.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 27/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(usingViewModel viewModel: CityViewPresentable) {
        self.cityLabel.text = viewModel.city
        self.locationLabel.text = viewModel.location
    }
}
