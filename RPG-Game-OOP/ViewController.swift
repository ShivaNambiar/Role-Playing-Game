//
//  ViewController.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage:String?
    
    @IBAction func onChestTapped(sender: AnyObject) {
        
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
        
        
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr)
        {
            printLbl.text = (" Attacked \(enemy.type) for \(player.attackPwr) HP")
            enemyHpLbl.text = "\(enemy.hp) HP"
        }
        else
        {
            printLbl.text = (" Attack was Unsuccessful !")
        }
        if let loot = enemy.dropLoot()
        {
            player.addItemtoInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        if !enemy.isAlive
        {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type). Click Treasure Chest"
            enemyImg.hidden = true
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        playerHpLbl.text = "\(player.hp) HP"
        
        generateRandomEnemy()
        
        
        
    }
    
    func generateRandomEnemy()
    {
        let rand = Int(arc4random_uniform(2))
        if rand == 0
        {
            enemy = Kimara(hp: 50, attackPwr: 12)
        }
        else
        {
            enemy = DevilWizard(hp: 60 , attackPwr: 15)
        }
        enemyImg.hidden = false
    }
    
}

