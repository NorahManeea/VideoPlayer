//
//  ViewController.swift
//  video_player
//
//  Created by Norah Almaneea on 20/01/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "F0101", ofType: "m4v")else{
            debugPrint("TestVideo is not found")
            return
        }
        let player = AVPlayer(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }
}

