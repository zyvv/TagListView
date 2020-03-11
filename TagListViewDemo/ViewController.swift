//
//  ViewController.swift
//  TagListViewDemo
//
//  Created by Dongyuan Liu on 2015-05-09.
//  Copyright (c) 2015 Ela. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TagListViewDelegate {

    @IBOutlet weak var tagListView: TagListView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tagListView.delegate = self
        tagListView.addTag("TagListView", icon: UIImage(named: "link")!)
        tagListView.addTag("TagLidddstView", icon: UIImage(named: "link")!)
        tagListView.addTag("TagLidsdfsstView", icon: UIImage(named: "link")!)
        tagListView.addTag("TagfasfaListView", icon: UIImage(named: "link")!)
        tagListView.addTag("TagLidfgstView", icon: UIImage(named: "link")!)
        tagListView.addTag("TagLifddddstView", icon: UIImage(named: "link")!)

        
        let tagView = tagListView.addTag("gray", icon: UIImage(named: "link")!)
        tagView.tagBackgroundColor = UIColor.gray
        tagView.onTap = { tagView in
            print("Don’t tap me!")
        }
                
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: TagListViewDelegate
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Tag pressed: \(title), \(sender)")
        tagView.isSelected = !tagView.isSelected
    }
    
}

