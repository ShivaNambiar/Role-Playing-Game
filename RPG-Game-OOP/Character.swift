//
//  Character.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import Foundation

class Character
{
    private var _hp = 100
    private var _attackPwr = 10
    
    var hp:Int
    {
        get
        {
            return _hp
        }
    }
    var attackPwr:Int
        {
        get
        {
            return _attackPwr
        }
    }
    
    var isAlive:Bool{
            get
            {
                if _hp >= 0
                {
                    return true
                }
                else
                {
                    return false
                }

            }
    }
    
    init(hp:Int, attackPwr:Int)
    {
        self._hp = hp
        self._attackPwr = attackPwr
    }
    func attemptAttack(attackPwr:Int) -> Bool{
        
        _hp -= attackPwr
        return true
    }
    
}