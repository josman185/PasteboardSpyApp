//
//  UITextField+Ext.swift
//  Pasteboard
//
//  Created by Jose Vargas on 19/11/25.
//  Copyright © 2025 Nyisztor, Karoly. All rights reserved.
//

import UIKit

extension UITextField {
    override open func copy(_ sender: Any?) {
        AppDelegate.customPasteBoard?.string = self.text
    }
    
    override open func cut(_ sender: Any?) {
        AppDelegate.customPasteBoard?.string = self.text
    }
    
    override open func paste(_ sender: Any?) {
        if let text = AppDelegate.customPasteBoard?.string {
            self.text = text
        }
    }
}
