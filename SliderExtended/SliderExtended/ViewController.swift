//
//  ViewController.swift
//  SliderExtended
//
//  Created by Leonid Lokhmatov on 5/4/19.
//  Copyright © 2018 Luxoft. All rights reserved
//

import UIKit
import simd

class ViewController: UIViewController {
    @IBOutlet var sliderIndicator2d:ZSliderIndicator2d!
    @IBOutlet var scrollSlider2d:ZScrollSlider2d!
    @IBOutlet var infoLabel:UILabel!
    // everything already configured in IB, see the storyboard file
}

extension ViewController: ZScrollSlider2dDelegate {
    func scrollSlider(_ slider:ZScrollSlider2d, positionDidChange pos2d:float2) {
        sliderIndicator2d.position2d = pos2d
        let info = String(format: "pos2d:[%2.2f+%2.2f]=%2.2f", pos2d[0], pos2d[1], pos2d[0]+pos2d[1])
        print(info)
        infoLabel.text = info
    }
}
