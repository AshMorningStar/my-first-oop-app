//
//  Enemy.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation

class Enemy: Character{
    
    var loot: [String]{
        return ["Rusty Blade","Cracked Buckler","Force Staff"]
    }
    
    var type: String{
        
        return "Grunt"
    }
    
    
    func dropLoot()-> String?{
        
        if !isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
    
    
    
    
    
    
    
}