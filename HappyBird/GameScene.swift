//
//  GameScene.swift
//  HappyBird
//
//  Created by macuser on 3/22/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var backgroundNode: SKNode!
    var birdNode: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        backgroundNode = self.childNode(withName: "background")!
        birdNode = self.childNode(withName: "bird") as! SKSpriteNode
        
        self.physicsWorld.contactDelegate = self
        
        
        let moveBackground = SKAction.move(by: CGVector(dx:-500, dy:0 ), duration: 10)
        
        backgroundNode.run(moveBackground)
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        birdNode.physicsBody!.applyImpulse(CGVector(dx: 0, dy: 3))
        
        
    }
    
    func stopGame() {
        backgroundNode.removeAllActions()
        birdNode.physicsBody!.pinned = true
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        stopGame()
    }
    
}
