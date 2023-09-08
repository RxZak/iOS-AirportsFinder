//
//  ViewController.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 8/9/2023.
//

import UIKit
import RxSwift
import RxDataSources

class SearchViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var roudedView: UIView!
    
    // MARK: Properties
    
    var viewModel: SearchViewPresentable!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

