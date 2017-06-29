//
//  CocoaAnimator.swift
//  CocoaAnimator
//
//  Created by Meniny on 2017-06-29.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import Cocoa

public class CocoaAnimator: NSObject {
    
    public typealias VoidClosure = (() -> Swift.Void)
    
    public class func animate(duration: TimeInterval,
                              animation: CocoaAnimator.VoidClosure,
                              completion: CocoaAnimator.VoidClosure? = nil
        ) -> Swift.Void {
        
        NSAnimationContext.beginGrouping()
        NSAnimationContext.current().duration = duration
        animation()
        NSAnimationContext.endGrouping()
        
        if let completion = completion {
            perform(#selector(CocoaAnimator.execute(closure:)), with: completion, afterDelay: duration)
        }
    }
    
    internal class func execute(closure: CocoaAnimator.VoidClosure) -> Swift.Void {
        closure()
    }
}
