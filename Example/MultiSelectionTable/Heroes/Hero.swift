//
//  Hero.swift
//  MultiSelectionTable
//
//  Created by Nuno Gonçalves on 09/12/16.
//  Copyright © 2016 Nuno Gonçalves. All rights reserved.
//

import Foundation

struct Hero : Equatable {
    let id: Int
    let name: String
    let imageURL: URL
 
    static func all(finished: @escaping ([Hero]) -> ()) {
        Heroes.Fetcher.fetch(got: finished)
    }
    
    static func ==(leftHero: Hero, rightHero: Hero) -> Bool {
        return leftHero.id == rightHero.id && leftHero.name == rightHero.name
    }
}
