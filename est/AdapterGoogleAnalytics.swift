//
//  AdapterGoogleAnalytics.swift
//  est
//
//  Created by warinporn khantithamaporn on 9/27/2559 BE.
//  Copyright © 2559 com.rollingneko. All rights reserved.
//

import Foundation

enum GoogleAnalyticsCategory: String {
    case Page = "Page"
    case Button = "Button"
}

enum GoogleAnalyticsAction: String {
    case Opened = "opened"
    case Clicked = "clicked"
}

class AdapterGoogleAnalytics {
    
    static let sharedInstance = AdapterGoogleAnalytics()
    
    private init() {}
    
    func sendGoogleAnalyticsEventTracking(category: GoogleAnalyticsCategory, action: GoogleAnalyticsAction, label: String) {
        let builder = GAIDictionaryBuilder.createEventWithCategory(
            category.rawValue,
            action: action.rawValue,
            label: label,
            value: nil)
        
        let tracker: GAITracker = GAI.sharedInstance().trackerWithTrackingId("UA-66731261-12")
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    
}
