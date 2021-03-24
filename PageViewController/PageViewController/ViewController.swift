//
//  ViewController.swift
//  PageViewController
//
//  Created by Sarika Thakur on 2021/03/20.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    @IBOutlet weak var pageViewControl : UIPageControl!
    
    var viewControllerArr = [UIViewController]()
    var pageviewControllerObj : UIPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllerArr.append(self.storyboard?.instantiateViewController(withIdentifier: "FIRST_VID") as! FirstViewController)
        viewControllerArr.append(self.storyboard?.instantiateViewController(withIdentifier: "SECOND_VID") as! SecondViewController)
        
        let viewControllerObj : UIViewController =  UIViewController()
        viewControllerObj.view.backgroundColor = UIColor.gray
        
        viewControllerArr.append(viewControllerObj)
        
         pageviewControllerObj = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageviewControllerObj.view.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.height - 100)
        
        pageviewControllerObj.delegate = self
        pageviewControllerObj.dataSource = self
        pageviewControllerObj.setViewControllers([viewControllerArr[0]], direction: .forward, animated: true, completion: nil)
        
        self.view.addSubview(pageviewControllerObj.view)
        pageViewControl.currentPage = 0
        pageViewControl.numberOfPages = viewControllerArr.count

//         pageViewControl.bringSubviewToFront(self.view)
//        pageviewControllerObj.view.bringSubviewToFront(pageViewControl)
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return viewControllerArr.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = viewControllerArr.firstIndex(of: viewController) ?? 0
        pageViewControl.currentPage = currentIndex

        if currentIndex == 0 {
            return nil
        }
        return viewControllerArr[currentIndex - 1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = viewControllerArr.firstIndex(of: viewController) ?? 0
        pageViewControl.currentPage = currentIndex
        if currentIndex == viewControllerArr.count - 1 {
            return nil
        }
        return viewControllerArr[currentIndex + 1]
    }
    
    
    
    
    
}

