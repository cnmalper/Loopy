//
//  ViewController.swift
//  Loopy
//
//  Created by Alper Canımoğlu on 24.08.2024.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension Home: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "loopCell", for: indexPath) as! LoopCell
        cell.usernameLabel.text = "@cnmalper"
        cell.loopPostLabel.text = "Hızlı bir isim fikri olarak SnapConnect öneriyorum. Hem hızlı etkileşimleri hem de kolay bağlantıyı çağrıştırıyor. Uygulamanın konseptiyle uyumlu olabileceğini düşünüyorum. Ne dersin?"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
    }
}

