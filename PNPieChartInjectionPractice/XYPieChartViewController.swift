//
//  XYPieChartViewController.swift
//  PNPieChartInjectionPractice
//
//  Created by Terry Bu on 11/18/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit
import XYPieChart

class XYPieChartViewController: UIViewController, XYPieChartDataSource, XYPieChartDelegate {
    
    @IBOutlet var pieChart: XYPieChart!
    var slices = [Int]()
    var sliceColors = [UIColor]()
    
    @IBAction func buttonPress() {
        slices[0] = Int(arc4random_uniform(99)+1)
        pieChart.reloadData()
    }
    
    override func viewDidLoad() {
        
        slices = [10, 20, 3]
        sliceColors = [UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor()]
        
        pieChart.dataSource = self
        pieChart.delegate = self
        pieChart.animationSpeed = 1.5
        pieChart.labelFont = UIFont(name: "Arial", size: 20)
        pieChart.labelColor = UIColor.blackColor()
//        pieChart.labelShadowColor = UIColor.blueColor()
        pieChart.labelRadius = 100
        pieChart.backgroundColor = UIColor(white: 0.95, alpha: 1)
        pieChart.showPercentage = true
        pieChart.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSlicesInPieChart(pieChart: XYPieChart!) -> UInt {
        return UInt(self.slices.count)
    }
    
    func pieChart(pieChart: XYPieChart!, valueForSliceAtIndex index: UInt) -> CGFloat {
        return CGFloat(self.slices[Int(index)])
    }
    
    func pieChart(pieChart: XYPieChart!, colorForSliceAtIndex index: UInt) -> UIColor! {
        return sliceColors[Int(index)]
    }
    
}
