//
//  Post.swift
//  Loopy
//
//  Created by Alper Canımoğlu on 21.09.2024.
//

import UIKit

class Post: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func postButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
