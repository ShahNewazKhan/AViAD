//
//  ViewController.swift
//  AViAD
//
//  Created by Shah on 2/17/15.
//  Copyright (c) 2015 COMP4977. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import iAd

class ViewController: UIViewController 
{

    override func viewDidLoad() 
    {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) 
    {
            let destination = segue.destinationViewController as AVPlayerViewController
            let url = NSURL(string: 
                "http://107.170.234.15/iOS/henrik.mov")
        
            let player = AVPlayer(URL: url)
            let playerController = AVPlayerViewController()
            playerController.player = player
        
            self.presentViewController(playerController, animated: true, 
                completion: nil)
        
            playerController.playPrerollAdWithCompletionHandler( {error in player.play() } )
        
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool 
    {
        
        AVPlayerViewController.preparePrerollAds()
        return true
    }

}

