//
//  PokemonDetailVC.swift
//  pokedex-by-voltan
//
//  Created by William Voltan on 5/30/16.
//  Copyright © 2016 William Voltan. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var detail1: UILabel!
    @IBOutlet weak var detail2: UILabel!
    @IBOutlet weak var detail3: UILabel!
    @IBOutlet weak var detail4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalizedString
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            //this will be called after download is done
            self.updateUI()
            
        }
    }
    
    func updateUI() {
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        weightLbl.text = pokemon.weight
        heightLbl.text = pokemon.height
        attackLbl.text = pokemon.attack
        pokedexIdLbl.text = "\(pokemon.pokedexId)"
        detail1.text = "Height:"
        detail2.text = "Weight:"
        detail3.text = "Base Attack:"
        detail4.text = "Defense:"
        
        if pokemon.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        }else{
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Evolution: \(pokemon.nextEvolutionTxt)"
            evoLbl.text = str
            if pokemon.nextEvolutionLvl != "" {
                str += "- LVL\(pokemon.nextEvolutionLvl)"
            evoLbl.text = str
            
        }
        
        }
        
    }
    
    @IBAction func segmentedPressed(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            updateUI();
        case 1:
           
            if pokemon.ability1 != "" {
                heightLbl.text = pokemon.ability1
                detail1.text = "Ability 1:"
            }else{
                detail1.text = ""
                heightLbl.text = ""
            }
            
            if pokemon.ability2 != "" {
                weightLbl.text = pokemon.ability2
                detail2.text = "Ability 2:"
            }else{
                detail2.text = ""
                weightLbl.text = ""
            }
            
            if pokemon.ability3 != "" {
                attackLbl.text = pokemon.ability3
                detail3.text = "Ability 3:"
            }else{
                detail3.text = ""
                attackLbl.text = ""
            }
            
            if pokemon.ability4 != "" {
                defenseLbl.text = pokemon.ability4
                detail4.text = "Ability 4:"
            }else{
                detail4.text = ""
                defenseLbl.text = ""
            }
           
            
        default:
            break;
        }
    }
    
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}
