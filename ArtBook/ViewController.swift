//
//  ViewController.swift
//  ArtBook
//
//  Created by Gazi Erdoğan on 28.04.2024.
//

import UIKit

class ViewController: UIViewController 
{

    @IBOutlet weak var listArtist: UITableView!
    override func viewDidLoad() 
    {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
    }

    @objc func addButtonClicked()
    {
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }

}

