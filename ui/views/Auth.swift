//
//  Auth.swift
//  Loopy
//
//  Created by Alper Canımoğlu on 25.08.2024.
//

import UIKit

class Auth: UIViewController {
    
    @IBOutlet weak var infinityLogo: UIImageView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var signInButtonOutlet: UIButton!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameTF.layer.cornerRadius = 10
        passwordTF.layer.cornerRadius = 10
        signInButtonOutlet.layer.cornerRadius = 10
        signUpButtonOutlet.layer.cornerRadius = 10
        
        startInfiniteRotation()
    }
    
    func startInfiniteRotation() {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0
        rotation.toValue = CGFloat.pi * 2
        rotation.duration = 2 // Rotasyonun süresi
        rotation.repeatCount = .infinity // Sonsuz döngü
        infinityLogo.layer.add(rotation, forKey: "infiniteRotation")
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        performSegue(withIdentifier: "toLoop", sender: nil)
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        performSegue(withIdentifier: "toLoop", sender: nil)
    }
}
