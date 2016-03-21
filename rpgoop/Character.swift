//
//  Character.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation


class Character {
    
    private var _hp = 100
    private var _attackDamage = 10
    
    var isAlive: Bool{
        if hp <= 0 {
            return false
        }else{
            return true
        }
    }
    
    var hp: Int{
        get {
            return _hp
        }
    }
    
    
    var attackDamage: Int {
        get {
            return _attackDamage
        }
    }
    
    init(startingHP: Int,attackDamage:Int){
        self._hp = startingHP
        self._attackDamage = attackDamage

    }
    
    func attemptAttack(attackDamage: Int)->Bool {
        self._hp -= attackDamage
        
        return true
    }
    
    
    
    
    
}