//
//  MapViewViewController.swift
//  1_uielements
//
//  Created by David Granado Jordan on 5/27/22.
//

import UIKit
import WebKit

class MapViewViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: WKWebView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURLRequest(url: NSURL(string: "https://www.facebook.com")! as URL )
        mapView.load(url as URLRequest)
        // Do any additional setup after loading the view.
    }
    

}
