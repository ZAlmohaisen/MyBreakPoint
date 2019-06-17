//
//  UIViewControllerExt.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 17/06/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transion = CATransition()
        transion.duration = 0.3
        transion.type = CATransitionType.push
        transion.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transion, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false , completion: nil)
    }
    
    func dismissDetail() {
        let transion = CATransition()
        transion.duration = 0.3
        transion.type = CATransitionType.push
        transion.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transion, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
