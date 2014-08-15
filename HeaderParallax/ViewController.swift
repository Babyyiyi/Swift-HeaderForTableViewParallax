//
//  ViewController.swift
//  HeaderParallax
//
//  Created by mingMac    on 14-8-15.
//  Copyright (c) 2014年 com.ming. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var headerParallax = HeaderParallax()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var image = UIImage(named: "3.png")
        var imageView = UIImageView(image: image)
        headerParallax.InitHeaderForTableView(self.tableView, imageView: imageView)
    }
    override func scrollViewDidScroll(scrollView: UIScrollView!) {
        headerParallax.scrollViewDidScroll(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

