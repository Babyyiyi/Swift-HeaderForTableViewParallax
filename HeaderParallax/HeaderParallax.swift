//
//  HeaderParallax.swift
//  HeaderParallax
//
//  Created by mingMac    on 14-8-15.
//  Copyright (c) 2014年 com.ming. All rights reserved.
//

import Foundation
import UIKit

class HeaderParallax : NSObject{
    var imagev = UIImageView();
    var tablev = UITableView();
    
    var initialFrame:CGRect!;
    var initialHeight:CGFloat!;
    
    func InitHeaderForTableView(tableView:UITableView!,imageView:UIImageView!){
        imagev = imageView;
        tablev = tableView;
        
        initialFrame = imageView.frame;
        imageView.frame.size.width = tableView.frame.size.width
        initialHeight = initialFrame.size.height;
        
        var headerView:UIImageView = UIImageView(frame: initialFrame);
        tablev.tableHeaderView = headerView;
        
        tablev.addSubview(imagev)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!){
        
        if scrollView.contentOffset.y < 0 {
            var OffsetY:CGFloat = scrollView.contentOffset.y + scrollView.contentInset.top
            initialFrame.origin.y = OffsetY;
            initialFrame.size.height = initialHeight + (OffsetY * -1)
            initialFrame.size.width = tablev.frame.size.width
            
            imagev.frame = initialFrame
        }
    }
}
