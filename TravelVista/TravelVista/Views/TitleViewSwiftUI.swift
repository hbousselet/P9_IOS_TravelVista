//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Hugues BOUSSELET on 03/04/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    let country: Country
    
    var body: some View {
        HStack(alignment: .center) {
            NamesViewSwiftUI(countryName: country.name, capitalName: country.capital)
            Spacer()
            RateViewSwiftUI(rate: country.rate)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
    }
}

struct NamesViewSwiftUI: View {
    let countryName: String
    let capitalName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(countryName)
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.customBlue)
            Text(capitalName)
                .font(.system(size: 17))
                .foregroundStyle(Color(UIColor.systemGray))
        }
    }
}

struct RateViewSwiftUI: View {
    let rate: Int
    
    var body: some View {
        ForEach(0..<(rate)) { _ in
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        }
    }
    
}

#Preview {
    TitleViewSwiftUI(country: Country(name: "France", capital: "Paris", description: "COucouc", rate: 4, pictureName: "Bla", coordinates: Coordinates(latitude: 123, longitude: 13)))
}
