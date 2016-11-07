//
//  PlaySongVC.swift
//  SwappingViews
//
//  Created by Younoussa Ousmane Abdou on 11/7/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        
        get {
            
            return _selectedSong
        }
        
        set {
            
            _selectedSong = newValue
        }
    }

    @IBOutlet weak var songTitleLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLBL.text = _selectedSong
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
