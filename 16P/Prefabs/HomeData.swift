//
//  HomeData.swift
//  16P
//
//  Created by admin on 12/3/2567 BE.
//

import SwiftUI
struct HomeData: View {
    var data: pData
    @State public var showDetail: Bool = false
    
    var body: some View {
        Button(action: {
            showDetail.toggle()
        }, label: {
            Group{
                ZStack{
                    Rectangle()
                        .foregroundStyle((data.color == "purple") ? Color.purpleHouse : (data.color == "green") ? Color.greenHouse : (data.color == "blue") ? Color.blueHouse : (data.color == "yellow") ? Color.yellowHouse : Color.clear)
                        .frame(width: 150, height: 180)
                        .overlay(
                            VStack(){
                                Image("\(data.title)-M")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 140)
                                    .clipped()
                                    .shadow(radius: 2)
                            }
                        )
                        .cornerRadius(25)
                        .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 4)
                    
                    Group{
                        Rectangle()
                            .frame(width: 150, height: 20)
                            .padding(.top, 135.5)
                            .shadow(color: .black.opacity(0.17), radius: 1, x: 0, y: -3)
                        
                        Rectangle()
                            .frame(width: 150, height: 20)
                            .cornerRadius(100)
                            .padding(.top, 160)
                    }
                    .overlay(Text("\(data.title)")
                        .font(Font.custom("Advent Pro", size: 25).weight(.bold))
                        .kerning(2)
                        .padding(.top, 147)
                        .foregroundStyle((data.color == "purple") ? Color.purpleHouseText : (data.color == "green") ? Color.greenHouseText : (data.color == "blue") ? Color.blueHouseText : (data.color == "yellow") ? Color.yellowHouseText : Color.clear)
                    )
                    .foregroundStyle((data.color == "purple") ? Color.purpleHouseHolder : (data.color == "green") ? Color.greenHouseHolder : (data.color == "blue") ? Color.blueHouseHolder : (data.color == "yellow") ? Color.yellowHouseHolder : Color.clear)
                }
            }
        }).sheet(isPresented: $showDetail) {
            HomeDetail(data: data)
          }
        
    }
    
}

#Preview {
    HomeData(data: pData.PTypes[10])
}
/*
 
 (forecast: Forecast.cities[0])
 .preferredColorScheme(.dark)
 */
