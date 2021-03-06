//
//  CheckWinnerBackgroundTableViewCell.swift
//  est
//
//  Created by warinporn khantithamaporn on 9/26/2559 BE.
//  Copyright © 2559 com.rollingneko. All rights reserved.
//

import UIKit

class CheckWinnerBackgroundTableViewCell: UITableViewCell {
    
    var announceImageView = UIImageView()
    
    var estColaImageView = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell() {
        self.backgroundView = UIImageView(frame: CGRectMake(0.0, 0.0, Est.calculatedWidthFromRatio(1242.0), Est.calculatedHeightFromRatio(3568.0)))
        (self.backgroundView as! UIImageView).image = UIImage(named: "check_winner_bg")
        (self.backgroundView as! UIImageView).contentMode = .ScaleToFill
    }
    
    func initCell(announce: Int) {
        if (self.backgroundView == nil) {
            self.backgroundView = UIImageView(frame: CGRectMake(0.0, 0.0, Est.calculatedWidthFromRatio(1242.0), Est.calculatedHeightFromRatio(3568.0)))
            (self.backgroundView as! UIImageView).image = UIImage(named: "check_winner_bg")
            (self.backgroundView as! UIImageView).contentMode = .ScaleToFill
        }
        
        // x: 0, y: 1558
        self.announceImageView.removeFromSuperview()
        self.announceImageView.image = nil
        
        self.announceImageView = UIImageView(frame: CGRectMake(0.0, Est.calculatedHeightFromRatio(1558.0), Est.calculatedWidthFromRatio(1242.0), Est.calculatedHeightFromRatio(1741.0)))
        self.announceImageView.image = UIImage(named: "announce_\(announce)")
        self.announceImageView.contentMode = .ScaleToFill
        
        self.contentView.addSubview(self.announceImageView)
        
        self.estColaImageView.frame = CGRectMake(0.0, Est.calculatedHeightFromRatio(3100.0), Est.calculatedWidthFromRatio(1242.0), Est.calculatedHeightFromRatio(394.0))
        self.estColaImageView.image = UIImage(named: "est_cola")
        self.estColaImageView.layer.zPosition = 1000
        self.contentView.addSubview(self.estColaImageView)
    }
    
}
