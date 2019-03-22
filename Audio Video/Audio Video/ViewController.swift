//
//  ViewController.swift
//  Audio Video
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController
{
    var player = AVAudioPlayer()
    
    @IBAction func playButton(_ sender: UIButton)
    {
        player.play()
    }
    @IBAction func stopButton(_ sender: UIButton)
    {
        player.stop()
    }
    @IBAction func volumeSlider(_ sender: UISlider)
    {
        player.volume = sender.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource:"Sustainability" , ofType: "mp3")
        let URLPath = URL(fileURLWithPath: path!)
        do
        {
            try player = AVAudioPlayer(contentsOf: URLPath)
        }
        catch let error
        {
            print("Error : ", error.localizedDescription)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destination = segue.destination as! AVPlayerViewController
        let path = Bundle.main.path(forResource: "Apple", ofType: "mp4")
        let VideoURL = URL(fileURLWithPath: path!)
        destination.player = AVPlayer(url: VideoURL)
    }

}

