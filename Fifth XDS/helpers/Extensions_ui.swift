//
//  Extensions.swift
//  Chattos
//
//  Created by hosam on 12/17/20.
//

import SwiftUI

extension String {
    
    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
    
    
    var isValidEmail: Bool {
        return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }

    var isValidPhoneNumber: Bool {
        let phoneNumberRegex = "^[1-1]\\d{10}$"
//        let phoneNumberRegex = "^[0-0]\\d{10}$"

        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
        let isValidPhone = phoneTest.evaluate(with: self)
        return self == "" ? true : isValidPhone
    }
    
    func toSecrueHttps() -> String {
        return self.contains("https") ? self : self.replacingOccurrences(of: "http", with: "https")
    }
}

extension View {

    //for keyboard height
//    func KeyboardAwarePadding() -> some View {
//            ModifiedContent(content: self, modifier: KeyboardAwareModifier())
//        }
    
    func getSafeArea() -> UIEdgeInsets? {
        return UIApplication.shared.windows.first?.safeAreaInsets
    }
    
    func getFrameSize() -> CGRect {
        return UIScreen.main.bounds
    }
    
    func frameWidth() -> CGFloat {
        getFrameSize().width
    }
    
    func frameHeight() -> CGFloat {
        getFrameSize().height
    }
    
    func imageHeight() -> CGFloat {
        getFrameSize().height < 750 ? 300 : 350
    }
    
    func isSmallDevice() -> Bool {
        UIScreen.main.bounds.height < 750
    }
   
    func isFaoundBottomSafe() -> CGFloat? {
        return   UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : UIApplication.shared.windows.first?.safeAreaInsets.bottom
    }
}


extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
}

