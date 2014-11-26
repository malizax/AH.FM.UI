//
//  ViewController.swift
//  Desmond's Part
//
//  Created by Kemel on 11/25/14.
//  Copyright (c) 2014 Kemel. All rights reserved.
//

import UIKit

class MainView: UIViewController {
    
    @IBOutlet weak var NowPlaying: UIView!
      @IBOutlet weak var SongTitle: UILabel!
      @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var NavigationBar: UINavigationBar!
      @IBOutlet weak var NavBarMenu: UIBarButtonItem!
      @IBOutlet weak var NavBarSearch: UIBarButtonItem!
    @IBOutlet weak var RadioShows: UIView!
      @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var MenuPopover: UIView!
      @IBOutlet weak var MenuRadioShows: UIButton!
      @IBOutlet weak var MenuCalendar: UIButton!
      @IBOutlet weak var MenuDJProfile: UIButton!
      @IBOutlet weak var MenuReturnPlayer: UIButton!
      @IBOutlet weak var MenuSearch: UISearchBar!
      @IBOutlet weak var MenuMenu: UIButton!
    @IBOutlet weak var AlbumCover: UIView!
      @IBOutlet weak var PlayButton: UIButton!
      @IBOutlet weak var AlbumImage: UIImageView!
    @IBOutlet weak var DJProfiles: UIView!
      @IBOutlet weak var ListDJs: UITableView!
    @IBOutlet weak var PlaylistDiscussion: UIView!
      @IBOutlet weak var Playlist: UIButton!
      @IBOutlet weak var Discussion: UIButton!
    @IBOutlet weak var SearchResults: UIView!
      @IBOutlet weak var SearchDJProf: UIView!
          @IBOutlet weak var SearchDJList: UITableView!
        @IBOutlet weak var RadioShowList: UITableView!
      @IBOutlet weak var SearchOptionTitles: UIView!
        @IBOutlet weak var RadioShowTitle: UILabel!
        @IBOutlet weak var DJProfileTitle: UILabel!
      @IBOutlet weak var DJProfText: UILabel!
      @IBOutlet weak var DJBackgroundImage: UIImageView!
    
    @IBOutlet weak var DJProfile: UIView!
    @IBOutlet weak var Month: UIView!
    
    
    
    @IBAction func MenuButtonDidPress(sender: AnyObject) {
        if (self.MenuPopover.hidden == true) {
            showMenuPopover()
        }
        else {
            hideMenuPopover()
        }
    }
    
    @IBAction func SearchButtonDidPress(sender: AnyObject) {
        if (self.SearchResults.hidden == true) {
            showSearchResults()
        }
        else {
            hideSearchResults()
        }
    }
    
    @IBAction func RadioShowsButtonDidPress(sender: AnyObject) {
        hideMenuPopover()
        showRadioShows()
    }
    
    @IBAction func CalendarButtonDidPress(sender: AnyObject) {
        hideMenuPopover()
        showMonthlyView()
    }
    
    @IBAction func DJProfilesDidPress(sender: AnyObject) {
        hideMenuPopover()
        showDJProfiles()
    }
    
    @IBAction func ReturnPlayerDidPress(sender: AnyObject) {
        hideMenuPopover()
    }
    
    //not sure what to do here for the search bar
    
    //also not sure why menu button inside of menupopover, probs won't do anything
    
    @IBAction func PlayButtonDidPress(sender: AnyObject) {
        //if accessing music data from network, stop
        //otherwise access music data from network
    }
    
    //need a way to back out of DJ Profiles
    
    
    @IBAction func PlaylistButtonDidPress(sender: AnyObject) {
        // access the list of songs that are apart of the radio station
        
    }
    
    @IBAction func DiscussionButtonDidPress(sender: AnyObject) {
        /*
        if (self.chatView.hidden == false) {
          showChatDisplay()
        }
        */
    }
    
    // double check exactly how we are going to access the search list results
    
    
    
    
    
//    func popoverTopRight(view: UIView) {
//        view.hidden = false
//        var translate = CGAffineTransformMakeTranslation(200, -200)
//        var scale = CGAffineTransformMakeScale(0.3, 0.3)
//        view.alpha = 0
//        view.transform = CGAffineTransformConcat(translate, scale)
//        
//        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options: nil, animations: {
//            
//            var translate = CGAffineTransformMakeTranslation(0, 0)
//            var scale = CGAffineTransformMakeScale(1, 1)
//            view.transform = CGAffineTransformConcat(translate, scale)
//            view.alpha = 1
//            
//            }, completion: nil)
//    }
//    
    
    func hideMenuPopover() {
        spring(0.5) {
            self.MenuPopover.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
            self.MenuPopover.hidden = true
        }
    }
    
    func showMenuPopover() {
        self.MenuPopover.hidden = false
        self.MenuPopover.alpha = 0
        spring(0.5) {
            self.MenuPopover.alpha = 1
        }
    }
    
    func hideRadioShows() {
        spring(0.5) {
            self.RadioShows.transform = CGAffineTransformMakeTranslation(0, 0)
            self.RadioShows.hidden = true
        }
    }
    
    func showRadioShows() {
        self.RadioShows.hidden = false
        self.RadioShows.alpha = 0
        spring(0.5) {
            self.RadioShows.alpha = 1
        }
    }
    
    func hideDJProfiles() {
        spring(0.5) {
            self.DJProfiles.transform = CGAffineTransformMakeTranslation(0, 0)
            self.DJProfiles.hidden = true
        }
    }
    
    func showDJProfiles() {
        self.DJProfiles.hidden = false
        self.DJProfiles.alpha = 0
        spring(0.5) {
            self.DJProfiles.alpha = 1
        }
    }
    
    func hideSearchResults() {
        spring(0.5) {
            self.SearchResults.transform = CGAffineTransformMakeTranslation(0, 0)
            self.SearchResults.hidden = true
        }
    }
    
    func showSearchResults() {
        self.SearchResults.hidden = false
        self.SearchResults.alpha = 0
        spring(0.5) {
            self.SearchResults.alpha = 1
        }
    }
    
    func hideDJProfile() {
        spring(0.5) {
            self.DJProfile.transform = CGAffineTransformMakeTranslation(0, 0)
            self.DJProfile.hidden = true
        }
    }
    
    func showDJProfile() {
        self.DJProfile.hidden = false
        self.DJProfile.alpha = 0
        spring(0.5) {
            self.DJProfile.alpha = 1
        }
    }
    
    func hideMonthlyView() {
        spring(0.5) {
            self.Month.transform = CGAffineTransformMakeTranslation(0, 0)
            self.Month.hidden = true
        }
    }
    
    func showMonthlyView() {
        self.Month.hidden = false
        self.Month.alpha = 0
        spring(0.5) {
            self.Month.alpha = 1
        }
    }
    
    func updateStatus() {
        if(self.RadioShows.hidden == false) {
            NavigationBar.topItem?.title = "Radio Shows"
        }
        if(self.DJProfile.hidden == false) {
            self.NavigationBar.topItem?.title = "DJ Profile"
        }
        if(self.AlbumCover.hidden == false) {
            self.NavigationBar.topItem?.title = "Now Playing"
        }
        if(self.Month.hidden == false) {
            self.NavigationBar.topItem?.title = "Calendar"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

