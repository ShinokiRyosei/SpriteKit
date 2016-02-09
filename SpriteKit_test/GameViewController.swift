//
//  ViewController.swift
//  SpriteKit_test
//
//  Created by 荒川陸 on 2015/10/23.
//  Copyright © 2015年 荒川陸. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var timer: NSTimer = NSTimer()
    let scene = GameScene()

    override func viewDidLoad() {
        super.viewDidLoad()
        
            //SKSceneクラス
        let view = self.view as! SKView
        scene.size = view.frame.size
        view.presentScene(scene)    //SKViewにSKSceneを表示
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("up"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//         Release any cached data, images, etc that aren't in use.
    }
    
    func up() {
        if scene.OharaMisa.frame.origin.y <= 300 {
            scene.changeBackground(0)
        }else {
            scene.changeBackground(1)
        }
    }


}

