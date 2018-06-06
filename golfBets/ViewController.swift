//
//  ViewController.swift
//  golfBets
//
//  Created by WilliamCastellano on 1/26/18.
//  Copyright © 2018 WCTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

  @IBOutlet var collectionView: UICollectionView!
  @IBOutlet var flowLayout: UICollectionViewFlowLayout!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    flowLayout.minimumLineSpacing = 1.0
    flowLayout.minimumInteritemSpacing = 0.0
    flowLayout.itemSize = CGSize(width: 50.0, height: 25.0)
    
    
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 147
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
    cell.textLabel.text = "\(indexPath.row + 1)"
    
    if indexPath.row % 2 == 0 {
      cell.backgroundColor = UIColor.green
    } else {
      cell.backgroundColor = UIColor.yellow
    }
    
    return cell
  }
}
