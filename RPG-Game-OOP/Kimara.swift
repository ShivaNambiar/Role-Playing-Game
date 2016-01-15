//
//  Kimara.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import Foundation

class Kimara: Enemy
{
    let IMMUNE_MAX = 15
    
    override   var loot:[String]
        {
        return ["Tough Hide", "Kimara Venom","Rare Trident"]
    }
    override var type:String
        {
        return "Kimara"
    }
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX
        {
            return super.attemptAttack(attackPwr)
        }
        return false
    }
    
}