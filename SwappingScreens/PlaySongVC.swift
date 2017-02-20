//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Junior Samaroo on 2017-02-20.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
        
    }
    
    // Prepareforsegue called before view did load. Guarateed data will be there
    override func viewDidLoad() {
        super.viewDidLoad()

        // selected song will be set by the setter with data from MusicListVC
        songTitleLbl.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
