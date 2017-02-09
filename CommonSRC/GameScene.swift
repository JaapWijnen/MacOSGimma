//
//  GameScene.swift
//  MacOSGimma
//
//  Created by Jaap Wijnen on 05/02/2017.
//  Copyright © 2017 Workmoose. All rights reserved.
//

import MetalKit

class GameScene: Scene {
    
    var quad: Plane
    var cube: Cube
    
    override init(device: MTLDevice, size: CGSize) {
        cube = Cube(device: device)
        quad = Plane(device: device,
                     imageName: "picture.png")
        
        super.init(device: device, size: size)
        add(childNode: cube)
        add(childNode: quad)
        
        quad.position.z = -3
        quad.scale = float3(3)
        
        camera.position.y = -1
        camera.position.x = 1
        camera.position.z = -6
        camera.rotation.x = radians(fromDegrees: -45)
        camera.rotation.y = radians(fromDegrees: -45)
    }
    
    override func update(deltaTime: Float) {
        cube.rotation.y += deltaTime
    }
}
