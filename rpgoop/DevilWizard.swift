//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var type: String{
        return "DevilWizard"
    }
    
    override var loot:[String]{
        return ["Shadow Amulet","Magic Wand"]
    }
}