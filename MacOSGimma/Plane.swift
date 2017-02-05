//
//  Plane.swift
//  MacOSGimma
//
//  Created by Jaap Wijnen on 05/02/2017.
//  Copyright © 2017 Workmoose. All rights reserved.
//

import MetalKit

class Plane: Primitive {
    
    override func buildVertices() {
        vertices = [
            Vertex(position: float3( -1, 1, 0),// V0
                color: float4(1, 0, 0, 1),
                texture: float2(0, 1)),
            Vertex(position: float3( -1, -1, 0),// V1
                color: float4(0, 1, 0, 1),
                texture: float2(0, 0)),
            Vertex(position: float3( 1, -1, 0), // V2
                color: float4(0, 0, 1, 1),
                texture: float2(1, 0)),
            Vertex(position: float3( 1, 1, 0), // V3
                color: float4(1, 0, 1, 1),
                texture: float2(1, 1))
        ]
        
        indices = [
            0, 1, 2,
            2, 3, 0
        ]
    }
}
