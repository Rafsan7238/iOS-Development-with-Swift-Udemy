//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS
import CoreML
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    let sentimentClassifier = TwitterSentimentClassifier()
    
    let swifter = Swifter(consumerKey: "", consumerSecret: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple", lang: "en", count: 100, tweetMode: .extended) { results, metadata in
            
            var tweets = [TwitterSentimentClassifierInput]()
            
            for i in 0..<100 {
                if let tweet = results[i]["full_text"].string {
                    let tweetForClassification = TwitterSentimentClassifierInput(text: tweet)
                    tweets.append(tweetForClassification)
                }
            }
            
            do {
                let predictions = try self.sentimentClassifier.predictions(inputs: tweets)
                
                var sentimentScore = 0
                
                for pred in predictions {
                    let sentiment = pred.label
                    
                    if sentiment == "Pos" {
                        sentimentScore += 1
                    }
                    
                    else if sentiment == "Neg" {
                        sentimentScore -= 1
                    }
                }
            }
            
            catch {
                print(error)
            }
            
        } failure: { error in
            print(error)
        }

        
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    
    }
    
}

