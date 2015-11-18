//
//  ViewController.swift
//  PNPieChartInjectionPractice
//
//  Created by Terry Bu on 11/18/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit
import PNChart

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let item1 = PNPieChartDataItem(value: 20, color: UIColor.blueColor(), description: "Stat1")
        let item2 = PNPieChartDataItem(value: 50, color: UIColor.greenColor(), description: "Stat2")
        let item3 = PNPieChartDataItem(value: 30, color: UIColor.brownColor(), description: "Stat3")
        let items = [item1, item2, item3]
        let pieChart = PNPieChart(frame: CGRect(x: 10, y: 10, width: 300, height: 300), items: items)
        pieChart.strokeChart()
        view.addSubview(pieChart)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

