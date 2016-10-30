//
//  pantalla4.swift
//  Pizzamaker
//
//  Created by Ricardo Isai on 29/10/16.
//  Copyright © 2016 Ricardo Isai. All rights reserved.
//

import WatchKit
import Foundation


class pantalla4: WKInterfaceController {
    var p = resultadospizza()
    var ingredientes = ["JAMON" : true,"JITOMATE": false, "PEPERONI": false, "PIÑA": false, "MAS QUESO": false]
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let context = context as! resultadospizza
        p = context
    
        
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
    @IBAction func jamonElegido(_ value: Bool) {
        p.ingredienteElegido["JAMON"] = value
    }
    @IBAction func jitomateElegido(_ value: Bool) {
        p.ingredienteElegido["JITOMATE"] = value
    }
    @IBAction func peperoniElegido(_ value: Bool) {
        p.ingredienteElegido["PEPERONI"] = value
    }

    @IBAction func piñaElegida(_ value: Bool) {
        p.ingredienteElegido["PIÑA"] = value
    }
    @IBAction func masquesoElegido(_ value: Bool) {
        p.ingredienteElegido["MAS QUESO"] = value
    }
    @IBAction func next4() {
        let nexingre = p
        pushController(withName: "RESULTADOS", context: nexingre)
        
    }
}
