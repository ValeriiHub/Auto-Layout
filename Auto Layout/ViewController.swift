//
//  ViewController.swift
//  Auto Layout
//
//  Created by Valerii D on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        //this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.textAlignment = .center
        textView.font = .boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = true
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLoyout()
    }
    
    private func setupLoyout() {
        NSLayoutConstraint.activate([
            bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100 ),
            bearImageView.widthAnchor.constraint(equalToConstant: 200),
            bearImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 100 ),
            descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor),
            descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
