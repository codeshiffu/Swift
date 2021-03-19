//
//  ViewController.swift
//  CollectionView
//
//  Created by SarikaThakur on 2021/03/19.
//  Copyright © 2021 SarikaThakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.backgroundColor = UIColor.white
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        //        collectionView = UICollectionView(frame: collectionView.frame, collectionViewLayout: layout)
        
        
        //        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
        //            layout.scrollDirection = .horizontal
        //        }
        
        
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "COLLECTION_CID", for: indexPath) as? CustomCollectionViewCell
        cell?.numberLbl.text = "\(indexPath.item)"
        cell!.backgroundColor = UIColor.brown
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.section)
        print(indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "COLLECTION_HEADER_CID", for: indexPath) as? CustomHeaderCollectionReusableView
        
        headerView?.sectionNumberLbl.text = "This is  section : \(indexPath.section)"
        
        headerView?.backgroundColor = UIColor.yellow
        return headerView!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section % 2 == 0 {
            return CGSize(width: 50, height: 50)
        }
        else {
            return CGSize(width: 100, height: 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 100, height: self.view.frame.height)
    }
}

