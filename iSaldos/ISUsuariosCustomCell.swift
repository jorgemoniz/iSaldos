//
//  ISUsuariosCustomCell.swift
//  iSaldos
//
//  Created by jorgemoniz on 2/5/17.
//  Copyright © 2017 Jorge Moñiz. All rights reserved.
//

import UIKit

class ISUsuariosCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var myImagenPerfil: UIImageView!
    @IBOutlet weak var myUsername: UILabel!
    @IBOutlet weak var myNombre: UILabel!
    @IBOutlet weak var myApellido: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
