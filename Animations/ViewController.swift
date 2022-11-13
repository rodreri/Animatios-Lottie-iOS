//
//  ViewController.swift
//  Animations
//
//  Created by Erick Rodrigo Minero Pineda on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var fish : LoaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fish = LoaderView()
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @IBAction func changeSegment(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            print("entre a car")
            fish.loadCar()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
        case 1:
            print("entre a inf")
            fish.loadInfinite()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
        case 2:
            print("Entre a found")
            fish.loadNotFound()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
            
        default:
            break
        }
    }
    
    
    
    
}
