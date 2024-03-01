//
//  SwiftUIView.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import SwiftUI

struct SwiftUIView: View {
    @ObservedObject var apiManager: APIManger = APIManger.shared
    var viewModel = ViewModel.shared

    var body: some View {
        Text("all the countries")
        ScrollView{
            ForEach(apiManager.countries , id:\.self){country in
                HStack{
                    Text("\(country.flag): \(country.name.countryName)")
                    Spacer()
                    Button{
                        viewModel.saveToFav(country: country)
                    }label: {
                        Image(systemName: "bookmark.fill")
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
