//
//  DetailView.swift
//  TravelVista
//
//  Created by Hugues BOUSSELET on 03/04/2025.
//

import Foundation
import SwiftUI
import UIKit

struct DetailView: UIViewControllerRepresentable {
    var country: Country?

    func makeUIViewController(context: Context)  ->  DetailViewController {
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main)
            .instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError("Could not instantiate DetailViewController")
        }
        detailVC.country = country
        return detailVC
    }
    
    func updateUIViewController(_ viewController: DetailViewController, context: Context) {
        
    }
    
}
