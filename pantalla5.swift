//
//  pantalla5.swift
//  Pizzamaker
//
//  Created by Ricardo Isai on 29/10/16.
//  Copyright © 2016 Ricardo Isai. All rights reserved.
//

import WatchKit
import Foundation


class pantalla5: WKInterfaceController {
    var p = resultadospizza()
    var ingredientesElegidos = [String]()
    
    @IBOutlet var labeltamaño: WKInterfaceLabel!
    
    @IBOutlet var labelmasa: WKInterfaceLabel!

    @IBOutlet var labelqueso: WKInterfaceLabel!
    @IBOutlet var labelingredientes: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let context = context as! resultadospizza
        p = context
        
        for (ingredien, seleccion) in p.ingredienteElegido {
            if seleccion == true{
            
            ingredientesElegidos.append(ingredien)
                
            }
        }
    labelingredientes.setText(ingredientesElegidos.joined(separator: " , "))
        
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

    @IBAction func editar() {
        let nexedit = p
        pushController(withName: "TAMAÑO", context: nexedit  )
    }
    @IBAction func confirmad() {
        let nexconfirm = p
        pushController(withName: "PAGO", context: nexconfirm)
    }
}

