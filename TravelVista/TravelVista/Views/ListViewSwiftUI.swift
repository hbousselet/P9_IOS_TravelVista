//
//  ListViewSwiftUI.swift
//  TravelVista
//
//  Created by Hugues BOUSSELET on 03/04/2025.
//

import SwiftUI

struct ListViewSwiftUI: View {
    let regions: [Region]
//    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationStack {
            List() {
                ForEach(regions) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries) { country in
                            NavigationLink(value: country, label: {
                                listContent(for: country)
                            })
                        }
                    }
                }
            }
            .navigationDestination(for: Country.self) { country in
                DetailView(country: country)
            }
        }
    }
    
    private func listContent(for country: Country) -> some View {
        HStack {
            Image(country.pictureName)
                .resizable()
                .frame(width: 52, height: 52)
                .scaledToFit()
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.system(size: 20))
                    .foregroundStyle(.customBlue)
                Text(country.capital)
                    .font(.system(size: 15))
            }
            Spacer()
            HStack {
                Text(String(country.rate))
                Image(systemName: "star.fill")
                    .foregroundColor(.customSand)
            }
        }
    }
}

#Preview {
    ListViewSwiftUI(regions: [Region(name: "Europe", countries: [Country(name: "France", capital: "Paris", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "canada", coordinates: Coordinates(latitude: 12, longitude: 134)), Country(name: "Italia", capital: "Roma", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "roma", coordinates: Coordinates(latitude: 12, longitude: 134))]), Region(name: "Asia", countries: [Country(name: "China", capital: "Beijing", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "Beijing", coordinates: Coordinates(latitude: 12, longitude: 134)), Country(name: "South Korea", capital: "Seoul", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "Seoul", coordinates: Coordinates(latitude: 12, longitude: 134))]), Region(name: "America", countries: [Country(name: "USA", capital: "Washington", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "Washington", coordinates: Coordinates(latitude: 12, longitude: 134)), Country(name: "Canada", capital: "Ottawa", description: "Blabdhjhsbjqhsxbjsqbxjsbsxh", rate: 4, pictureName: "canada", coordinates: Coordinates(latitude: 12, longitude: 134))]),])
}
