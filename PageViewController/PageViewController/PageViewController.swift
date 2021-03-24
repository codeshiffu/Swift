//
//  PageViewController.swift
//  PageViewController
//
//  Created by Sarika Thakur on 2021/03/20.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
 
    
    var viewControllerArr = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllerArr.append(self.storyboard?.instantiateViewController(withIdentifier: "FIRST_VID") as! FirstViewController)
        viewControllerArr.append(self.storyboard?.instantiateViewController(withIdentifier: "SECOND_VID") as! SecondViewController)
        
        let viewControllerObj : UIViewController =  UIViewController()
        viewControllerObj.view.backgroundColor = UIColor.gray
        
        viewControllerArr.append(viewControllerObj)
        
        delegate = self
        dataSource = self
        self.setViewControllers([viewControllerArr[0]], direction: .forward, animated: true, completion: nil)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return viewControllerArr.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = viewControllerArr.firstIndex(of: viewController) ?? 0
        if currentIndex == 0 {
            return nil
        }
        return viewControllerArr[currentIndex - 1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = viewControllerArr.firstIndex(of: viewController) ?? 0
        if currentIndex == viewControllerArr.count - 1 {
            return nil
        }
        return viewControllerArr[currentIndex + 1]
    }
    
    
    
    

}
