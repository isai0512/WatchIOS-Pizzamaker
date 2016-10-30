//
//  pantalla3.swift
//  Pizzamaker
//
//  Created by Ricardo Isai on 29/10/16.
//  Copyright © 2016 Ricardo Isai. All rights reserved.
//

import WatchKit
import Foundation



class pantalla3: WKInterfaceController {
    
    @IBOutlet var queso: WKInterfacePicker!
    var p = resultadospizza()
    var quesos = ["Mozzarella","Manchego","Cheddar"]
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let context = context as! resultadospizza
        p = context
        
        var tipoQueso = [WKPickerItem]()
        
        for it in quesos {
        let item = WKPickerItem()
            item.title = it
           
            tipoQueso.append(item)
        }
        
        queso.setItems(tipoQueso)
        queso.setSelectedItemIndex(tipoQueso.count - 2)
        
        
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
    @IBAction func quesocambio(_ value: Int) {
        switch value {
        case 0: p.quesoElegido = "Mozzarella"
        case 1 : p.quesoElegido = "Manchego"
        case 2 : p.quesoElegido = "Cheddar"
            
        default:
            return
        }
    }
    @IBAction func next3() {
        let nexque = p
        pushController(withName: "INGREDIENTES", context: nexque)
    }

}
