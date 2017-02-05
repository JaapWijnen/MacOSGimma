//
//  Cube.swift
//  MacOSGimma
//
//  Created by Jaap Wijnen on 05/02/2017.
//  Copyright © 2017 Workmoose. All rights reserved.
//

import MetalKit

class Cube: Primitive {
    
    override func buildVertices() {
        vertices = [
            Vertex(position: float3(-1, 1, 1),   // 0 Front
                color:    float4(1, 0, 0, 1),
                texture:  float2(0, 0)),
            Vertex(position: float3(-1, -1, 1),  // 1
                color:    float4(0, 1, 0, 1),
                texture:  float2(0, 1)),
            Vertex(position: float3(1, -1, 1),   // 2
                color:    float4(0, 0, 1, 1),
                texture:  float2(1, 1)),
            Vertex(position: float3(1, 1, 1),    // 3
                color:    float4(1, 0, 1, 1),
                texture:  float2(1, 0)),
            
            Vertex(position: float3(-1, 1, -1),  // 4 Back
                color:    float4(0, 0, 1, 1),
                texture:  float2(1, 1)),
            Vertex(position: float3(-1, -1, -1), // 5
                color:    float4(0, 1, 0, 1),
                texture:  float2(0, 1)),
            Vertex(position: float3(1, -1, -1),  // 6
                color:    float4(1, 0, 0, 1),
                texture:  float2(0, 0)),
            Vertex(position: float3(1, 1, -1),   // 7
                color:    float4(1, 0, 1, 1),
                texture:  float2(1, 0)),
        ]
        
        indices = [
            0, 1, 2,     0, 2, 3,  // Front
            4, 6, 5,     4, 7, 6,  // Back
            
            4, 5, 1,     4, 1, 0,  // Left
            3, 6, 7,     3, 2, 6,  // Right
            
            4, 0, 3,     4, 3, 7,  // Top
            1, 5, 6,     1, 6, 2   // Bottom
        ]
    }
}
