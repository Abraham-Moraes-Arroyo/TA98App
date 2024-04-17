//
//  View1.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/16/24.
//

import SwiftUI
import RealityKit
import SceneKit


struct View1: View {
    
    var scene = SCNScene(named: "SceneKit Scene.scn")
    
    var cameraNode: SCNNode? { // this is how you get the scene kit be integreated to the swiftUI code
        scene?.rootNode.childNode(withName: "camera", recursively: false)
    }

    var body: some View {
        
        
        ZStack {
            Text("This is where the model of the office is going to be taking place in.")
            
            SceneView (
            scene: scene,
            pointOfView: cameraNode,
            options: []
            )
            .scaledToFit()
        }
    }
}
