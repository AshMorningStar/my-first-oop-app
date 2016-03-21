//
//  Kimara.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation


class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
   
    override var type: String {
        return "Kimara"
    }
    override var loot: [String]{
        return ["Tough Hide","Kimara Venom","Rare Trident"]

    }


    
    
    override func attemptAttack(attackDamage: Int) -> Bool {
        if attackDamage >= IMMUNE_MAX{
            return super.attemptAttack(attackDamage)
            
        }else{
            return false
        }
    }
    
    
}