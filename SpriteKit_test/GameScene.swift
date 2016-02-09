//
//  GameScene.swift
//  SpriteKit_test
//
//  Created by 荒川陸 on 2015/10/23.
//  Copyright © 2015年 荒川陸. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var OharaMisa: SKSpriteNode!
    var background: SKSpriteNode!
    override func didMoveToView(view: SKView) {
        
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: -1.0)
        //背景の表示
        background = SKSpriteNode(imageNamed: "yamasho.png")
        background.position = CGPoint(x: size.width*0.5, y: size.height*0.5) //画面の中央に配置
        background.size = CGSize(width: size.width, height: size.height) //画面サイズに
        
        //シーンに追加
        addChild(background)
        
        OharaMisa = SKSpriteNode(imageNamed: "Futagami.png")
        OharaMisa.size = CGSize(width: size.width/5, height: size.height/8)
        OharaMisa.position = CGPoint(x: size.width*0.5, y: size.height - OharaMisa.size.height * 0.5)
        
        OharaMisa.physicsBody = SKPhysicsBody()
        
        addChild(OharaMisa)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for _: AnyObject in touches {
            OharaMisa.physicsBody?.velocity = CGVector.zero
            OharaMisa.physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: 50.0))
        }
    }
    
    internal func changeBackground(num: Int) {
        if num == 0 {
            background.removeFromParent()
            background = SKSpriteNode(imageNamed: "やましょう.png")
                        background.position = CGPoint(x: size.width*0.5, y: size.height*0.5) //画面の中央に配置
                        background.size = CGSize(width: size.width, height: size.height)
//                        background.zPosition = 0.0
                        OharaMisa.zPosition = 1.0
            addChild(background)
            //            OharaMisa.physicsBody = SKPhysicsBody()
            
        } else {
            background.removeFromParent()
            background = SKSpriteNode(imageNamed: "yamasho.png")
                        background.position = CGPoint(x: size.width*0.5, y: size.height*0.5) //画面の中央に配置
                        background.size = CGSize(width: size.width, height: size.height)
            //            background.zPosition = 0.0
                        OharaMisa.zPosition = 1.0
            addChild(background)
            //            OharaMisa.physicsBody = SKPhysicsBody()
        }
        
        
    }
    
}
