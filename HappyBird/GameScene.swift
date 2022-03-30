//
//  GameScene.swift
//  HappyBird
//
//  Created by macuser on 3/22/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var backgroundNode: SKNode!
    
    override func didMove(to view: SKView) {
        
        backgroundNode = self.childNode(withName: "background")!
        
        let moveBackground = SKAction.move(by: CGVector(dx:-500, dy:0 ), duration: 10)
        
        backgroundNode.run(moveBackground)
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        <#code#>
    }
    
    
    
}
