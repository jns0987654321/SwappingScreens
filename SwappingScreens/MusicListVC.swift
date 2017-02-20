//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Junior Samaroo on 2017-02-19.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    // only once called when view loaded in memory
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    // first segue performed via code
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Just Another Day"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // second prepare segue called before view did load of destination VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // make sure we are moving to correct VC
        if let destination = segue.destination as? PlaySongVC {
            
            // set data on new VC
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
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
