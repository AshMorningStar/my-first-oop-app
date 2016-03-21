//
//  Player.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation

class Player: Character{
    
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    var Inventory: [String]{
        return ["Sword"]
    }
    
    convenience init(name: String, attackPower: Int,startingHP: Int){
        self.init(startingHP: startingHP,attackDamage: attackPower)
        
        _name = name
        
        
    }
    
    
    
    
}