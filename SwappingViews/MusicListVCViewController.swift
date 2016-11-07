//
//  MusicListVCViewController.swift
//  SwappingViews
//
//  Created by Younoussa Ousmane Abdou on 11/7/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class MusicListVCViewController: UIViewController {

    @IBAction func backBTNPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func LoadThirdScreenVC(_ sender: AnyObject) {
        
        let songTitle = "Blank space"
        
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                
                destination.selectedSong = song
            }
        }
    }
    

}
