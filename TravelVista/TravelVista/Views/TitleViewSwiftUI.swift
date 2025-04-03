//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Hugues BOUSSELET on 03/04/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    var viewModel: Country?
    var body: some View {
        HStack(alignment: .center) {
            NamesViewSwiftUI(countryName: viewModel?.name, capitalName: viewModel?.capital)
            Spacer()
            RateViewSwiftUI(rate: viewModel?.rate)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
    }
}

struct NamesViewSwiftUI: View {
    let countryName: String?
    let capitalName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(countryName ?? "")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.customBlue)
            Text(capitalName ?? "")
                .font(.system(size: 17))
                .foregroundStyle(Color(UIColor.systemGray))
        }
    }
}

struct RateViewSwiftUI: View {
    let rate: Int?
    var body: some View {
        ForEach(0..<(rate ?? 0)) { _ in
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        }
    }
    
}

#Preview {
    TitleViewSwiftUI(viewModel: Country(name: "France", capital: "Paris", description: "COucouc", rate: 4, pictureName: "Bla", coordinates: Coordinates(latitude: 123, longitude: 13)))
}
