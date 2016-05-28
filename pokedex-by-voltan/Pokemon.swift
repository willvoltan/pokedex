//
//  Pokemon.swift
//  pokedex-by-voltan
//
//  Created by William Voltan on 5/28/16.
//  Copyright © 2016 William Voltan. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _height: String!
    private var _weight: String!
    private var _nextEvl: String!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init (name: String, pokedexId:Int){
        self._name = name
        self._pokedexId = pokedexId
    }
    
    
}