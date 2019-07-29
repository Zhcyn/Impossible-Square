//
//  SquareGameOverViewController.swift
//  Impossible Square
//
//  Created by summer on 2019/7/29.
//  Copyright © 2019 summer. All rights reserved.
//

import UIKit
import FirebaseAnalytics
import SCSDKCreativeKit
import StoreKit

class SquareGameOverViewController: UIViewController {
    
    @IBOutlet weak var current: UILabel!
    @IBOutlet weak var highscore: UILabel!
    
    var snapAPI: SCSDKSnapAPI?
    
    let defaults = UserDefaults.standard
    
    var currentS = 0
    var highscoreS = 0
    
    var countPlay = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentS = defaults.integer(forKey: "score")
        highscoreS = defaults.integer(forKey: "highscore")
        
        current.text = "\(currentS)"
        highscore.text = "\(highscoreS)"
        
        snapAPI = SCSDKSnapAPI()
        
        countPlay = UserDefaults.standard.integer(forKey: "played")
        countPlay += 1
        
        if countPlay >= 7 {
            if #available( iOS 10.3,*){
                SKStoreReviewController.requestReview()
            }
        }
        
    }
    
    
    @IBAction func sharePressed(_ sender: Any) {
        Analytics.logEvent("share_snap", parameters: nil)
        
        shareScore { (success, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            }
            
        }
    }
    
    
    func shareScore(completionHandler: (Bool, Error?) ->()) {
        
        // swift
        let renderer = UIGraphicsImageRenderer(size: view.bounds.size)
        let image = renderer.image { ctx in
            view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        }
        /* Stickers to be used in Snap */
        
        let photo = resizeImage(image: image, newWidth: 300)
        
        let sticker = SCSDKSnapSticker(stickerImage: photo!)
        
        let snap = SCSDKNoSnapContent()
        snap.sticker = sticker
        
        snap.caption = "Can you beat \(highscoreS) at Impossible Square ?" /* Optional */
        snap.attachmentUrl = "https://itunes.apple.com/app/id1465661233" /* Optional */
        
        
        
        view.isUserInteractionEnabled = false
        snapAPI?.startSending(snap) { [weak self] (error: Error?) in
            print(error?.localizedDescription ?? "error")
            DispatchQueue.main.async {
                self?.view.isUserInteractionEnabled = true
            }
            
            // Handle response
        }
    }
    
    @IBAction func returnPressed(_ sender: Any) {
        Analytics.logEvent("restart", parameters: nil)
    }
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage? {
        
        let scale = newWidth / image.size.width
        let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
}
