//
//  pantalla1.swift
//  Pizzamaker
//
//  Created by Ricardo Isai on 29/10/16.
//  Copyright © 2016 Ricardo Isai. All rights reserved.
//

import WatchKit
import Foundation


class pantalla1: WKInterfaceController {

    @IBOutlet var tamaño: WKInterfacePicker!
    
    var p = resultadospizza ()
    let tamañospizzas = ["Chica","Mediana","Grande"]
    var tamañoElegido = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var tamañoPizza = [WKPickerItem]()
        
        for it in tamañospizzas {
        let item = WKPickerItem()
        item.title = it
            
            tamañoPizza.append(item)
        }
        
        tamaño.setItems(tamañoPizza)
        
switch tamañoElegido {
case "Chica":tamaño.setSelectedItemIndex(0)
case "Mediana" :tamaño.setSelectedItemIndex(1)
case "Grande" : tamaño.setSelectedItemIndex(2)
        default:
         tamaño.setSelectedItemIndex(tamañoPizza.count - 2)
    
        }
        
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
    
   
    @IBAction func tamañocambio(_ value: Int) {
        switch value {
        case 0: p.tamañoElegido = "Chica"
        case 1: p.tamañoElegido = "Mediana"
        case 2: p.tamañoElegido = "Grande"
        default:
            return
        }
    }
    @IBAction func next1() {
        let nextTam = p
        pushController(withName: "MASA" , context: nextTam)
    }

}
