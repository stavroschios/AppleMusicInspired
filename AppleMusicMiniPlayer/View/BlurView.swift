//
//  BlurView.swift
//  AppleMusicMiniPlayer
//
//  Created by Stavros Pachoundakis on 2021-11-23.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //
    }
}
