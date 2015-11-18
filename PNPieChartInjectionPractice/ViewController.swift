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
    
    var pieChart:PNPieChart?
    @IBOutlet var changeButton:UIButton! 
    @IBAction func buttonpressed() {
        
        //With PNChart, pie charts don't seem to have much of a granular control
        //This library seems good for one-off solutions where you need a quick line, bar, pie, circle, scatter chart but other "pie-chart" specific libraries do exist like MagiePie that lets you customize pie chart data animation in real-time.
        //Might opt for those instead. Keep this in your toolshed. 
        
        let item1 = PNPieChartDataItem(value: 10, color: UIColor.blueColor(), description: "Diff1")
        let item2 = PNPieChartDataItem(value: 20, color: UIColor.greenColor(), description: "Diff2")
        let item3 = PNPieChartDataItem(value: 70, color: UIColor.brownColor(), description: "Diff3")
        pieChart!.updateChartData([item1,item2,item3])
        pieChart!.strokeChart()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let item1 = PNPieChartDataItem(value: 20, color: UIColor.blueColor(), description: "Stat1")
        let item2 = PNPieChartDataItem(value: 50, color: UIColor.greenColor(), description: "Stat2")
        let item3 = PNPieChartDataItem(value: 30, color: UIColor.brownColor(), description: "Stat3")
        let items = [item1, item2, item3]
        pieChart = PNPieChart(frame: CGRect(x: 100, y: 100, width: 300, height: 300), items: items)
        pieChart!.strokeChart()
        view.addSubview(pieChart!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

