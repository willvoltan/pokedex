//
//  PokeCell.swift
//  pokedex-by-voltan
//
//  Created by William Voltan on 5/28/16.
//  Copyright © 2016 William Voltan. All rights reserved.
//


import UIKit

class PokeCell: UICollectionViewCell {

    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    func configureCell(pokemon: Pokemon){
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
}
