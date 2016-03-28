//
//  ViewController.swift
//  SQTopChartMusicPlayer
//
//  Created by Ian on 3/24/16.
//  Copyright © 2016 Yongjun Yoo. All rights reserved.
//

import UIKit
import youtube_ios_player_helper
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet private weak var youtubePlayer: YTPlayerView!
    @IBOutlet private weak var spinner: UIActivityIndicatorView!
    
	override func viewDidLoad() {
		super.viewDidLoad()
        youtubePlayer.loadWithVideoId("FFMw_Y_iCZs")
        youtubePlayer.delegate = self
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
            print("error occured")
        }
	}

}

extension ViewController: YTPlayerViewDelegate {
    
    func playerViewDidBecomeReady(playerView: YTPlayerView!) {
        self.spinner.stopAnimating()
    }
}

