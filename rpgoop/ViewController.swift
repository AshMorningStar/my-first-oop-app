//
//  ViewController.swift
//  rpgoop
//
//  Created by Mohamad Asyraaf on 21/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHPLbl: UILabel!
    
    @IBOutlet weak var enemy1HPLbl: UILabel!

    @IBOutlet weak var enemy1Img: UIImageView!
    
    @IBOutlet weak var chestImg: UIButton!
    var player: Player!
    var enemy: Enemy!
    var chestMsg: String!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chestImg.hidden = true
        player = Player(name:"Angeline",attackPower:10,startingHP:110)
        enemy = Enemy(startingHP:50,attackDamage: 10)
        enemy1HPLbl.text = "\(enemy.hp) HP"
        
        playerHPLbl.text = "\(player.hp) HP"
    }
    
    @IBAction func onPressedChest(sender: AnyObject) {
        chestImg.hidden = true
        printLbl.text = "\(player) picked up \(chestMsg)"
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "spawnRandomEnemy", userInfo: nil, repeats: false)
        
    }
    
    @IBAction func onAttackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackDamage) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackDamage)"
            enemy1HPLbl.text = "\(enemy.hp) HP"
        }else{
            printLbl.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot(){
            chestMsg = "\(loot)"
            chestImg.hidden = false
        }
        
        if !enemy.isAlive {
            enemy1Img.hidden = true
            enemy1HPLbl.text = ""
            printLbl.text = "\(player.name) killed \(enemy.type)"
            printLbl.text = "\(player.name) found \(chestMsg)"
        }
        
    }
    func spawnRandomEnemy(){
        let rand = arc4random_uniform(2)
        
        if rand == 0{
            enemy = Kimara(startingHP:50,attackDamage: 20)
        }else{
            enemy = DevilWizard(startingHP:60,attackDamage: 30)
        }
        
        enemy1Img.hidden = false
        
        enemy1HPLbl.text = "\(enemy.hp) HP"
    }
    

    
}

