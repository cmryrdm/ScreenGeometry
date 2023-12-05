//
//  ScreenGeometry.swift
//
//
//  Created by CEMRE YARDIM on 16.11.2023.
//

import UIKit

struct ScreenGeometry {
  
  let height :CGFloat
  let width :CGFloat
  let safeTop :CGFloat
  let safeBottom :CGFloat
  
  static let shared = ScreenGeometry()
  
  private init() {
    guard let scene = UIApplication.shared.connectedScenes.first,
          let sd = scene.delegate as? SceneDelegate,
          let window = sd.window else {
      height = 0
      width = 0
      safeTop = 0
      safeBottom = 0
      return
    }
    
    height = window.bounds.height
    width = window.bounds.width
    safeTop = window.safeAreaInsets.top
    safeBottom = window.safeAreaInsets.bottom
  }
  
}
