//
//  CameraViewController.swift
//  CameraFramework
//
//  Created by Adam Israfil on 3/1/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit
import AVFoundation

public enum CameraPosition {
    case front
    case back
}

public final class CameraViewController: UIViewController {
    fileprivate var camera: Camera?
    var previewLayer: AVCaptureVideoPreviewLayer?
    
    open var position: CameraPosition = .back {
        didSet {
            guard let camera = self.camera else { return }
            camera.position = position
        }
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        self.camera = Camera(with: self)
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let camera = self.camera else { return }
        createUI()
        camera.update()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: User Interface Extension

fileprivate extension CameraViewController {
    func createUI() {
        guard let camera = self.camera else { return }
        guard let previewLayer = camera.getPreviewLayer() else { return }
        self.previewLayer = previewLayer
        self.view.layer.addSublayer(previewLayer)
    }
}
