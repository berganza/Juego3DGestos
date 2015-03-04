//
//  GameViewController.swift
//  Gestos
//
//  Created by Berganza on 4/3/15.
//  Copyright (c) 2015 Berganza. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {

    var scene = SCNScene(named: "art.scnassets/quieto.dae")!

    override func viewDidLoad() {
        super.viewDidLoad()

        // retrieve the SCNView
        var scnView = self.view as SCNView
        
        // set the scene to the view
        scnView.scene = scene
        
        
        let lucha: Selector = "start:"
        let tap1 = UITapGestureRecognizer(target: self, action: "atacar")
        tap1.numberOfTapsRequired = 1
        view.addGestureRecognizer(tap1)
        
        let descanso: Selector = "stop:"
        let tap2 = UITapGestureRecognizer(target: self, action: "parar")
        tap2.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap2)

    }
    
    func atacar() {
        var escenaAtaque = SCNScene(named: "art.scnassets/ataque.dae")!
        var vista = self.view as SCNView
        vista.scene = escenaAtaque
    }
    
    func parar() {
        var escenaQuieto = SCNScene(named: "art.scnassets/quieto.dae")!
        var vista = self.view as SCNView
        vista.scene = escenaQuieto
    }
}