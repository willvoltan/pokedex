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
    private var _type: String!
    private var _attack: String!
    private var _defense: String!
    private var _description: String!
    private var _nextEvolutionTxt: String!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    var height: String{
        return _height
    }
    
    var weight: String{
        return _weight
    }
    
    var type: String{
        return _type
    }
    
    var attack: String{
        return _attack
    }
    
    var defense: String{
        return _defense
    }
    
    var description: String{
        return _description
    }
    
    var nextEvolutionTxt: String{
        return _nextEvolutionTxt
    }
    
    init (name: String, pokedexId:Int){
        self._name = name
        self._pokedexId = pokedexId
    }
    
    
}