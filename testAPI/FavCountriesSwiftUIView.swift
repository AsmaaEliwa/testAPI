//
//  FavCountriesSwiftUIView.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import SwiftUI

struct FavCountriesSwiftUIView: View {
    @ObservedObject var viewModel = ViewModel.shared
    var body: some View {
        VStack{
            ForEach(viewModel.favCountries , id:\.self){fav in
                Text("\(fav?.flag ?? ""): \(fav?.countryName ?? "")")
            }
        }
    }
}

#Preview {
    FavCountriesSwiftUIView()
}
