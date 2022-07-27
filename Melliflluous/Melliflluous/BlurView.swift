//
//  BlurView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 27/07/22.
//

import Foundation
import UIKit
import SwiftUI

struct blurView: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark))
        
        return view
    }
}
