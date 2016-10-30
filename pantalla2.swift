//
//  pantalla2.swift
//  Pizzamaker
//
//  Created by Ricardo Isai on 29/10/16.
//  Copyright © 2016 Ricardo Isai. All rights reserved.
//

import WatchKit
import Foundation


class pantalla2: WKInterfaceController {
    
    
    @IBOutlet var masa: WKInterfacePicker!
    
    var p = resultadospizza()
    var tiposMasa = ["Delgada","Italiana","Gruesa","Integral"]
   

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let context = context as! resultadospizza
        p = context
        
        var tipoMasa = [WKPickerItem]()
        
        for it in tiposMasa {
        let item = WKPickerItem()
            item.title = it
            
            tipoMasa.append(item)
        
        }
     masa.setItems(tipoMasa)
        masa.setSelectedItemIndex(tipoMasa.count - 2)
        
    
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func masacambio(_ value: Int) {
        switch value {
        case 0: p.masaElegida = "Delgada"
        case 1: p.masaElegida = "Italiana"
        case 2: p.masaElegida = "Gruesa"
        case 3: p.masaElegida = "Integral"

        default:
            return
        }
    }

    @IBAction func next2() {
        
       let nexmas = p
        pushController(withName: "QUESO", context: nexmas)
    }
}
