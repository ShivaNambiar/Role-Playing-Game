//
//  Enemy.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import Foundation

class Enemy : Character
{
    var loot:[String]
    {
        return ["Rusty Dagger" , "Broken Buckler"]
    }
    
    var type:String
    {
            return "Grunt"
    }
    func dropLoot() ->String?
    {
        if !isAlive
        {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}