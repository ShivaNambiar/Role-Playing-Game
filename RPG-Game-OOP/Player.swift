//
//  Player.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import Foundation

class Player: Character
{
    private var _name = "Player"
    
    var name:String
        {
        get
        {
            return _name
        }
    }
    private var _inventory = [String]()
    
    var inventory:[String]
    {
        get
        {
            return _inventory
        }
    }
    
    convenience init(name:String, hp:Int,attackPwr:Int)
    {
        self.init(hp: hp,attackPwr: attackPwr)
        _name = name
    }
    
    
}