//
//  DevilWizard.swift
//  RPG-Game-OOP
//
//  Created by Shi Nam on 2016-01-14.
//  Copyright © 2016 Shi Nam. All rights reserved.
//

import Foundation

class DevilWizard : Enemy
{
    override var loot:[String]
        {
            return ["Magic Wand" , "Dark Amulet" , "Salted Pork"]
        }
    override var type:String
        {
        return "Devil Wizard"
    }
}