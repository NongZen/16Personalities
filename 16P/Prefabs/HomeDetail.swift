//
//  HomeDetail.swift
//  16P
//
//  Created by admin on 12/3/2567 BE.
//

import SwiftUI

struct HomeDetail: View {
    @Environment(\.dismiss) var dismiss
    var data: pData
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Group{
                    (data.color == "purple") ? Color.purpleHouse : (data.color == "green") ? Color.greenHouse : (data.color == "blue") ? Color.blueHouse : (data.color == "yellow") ? Color.yellowHouse : Color.clear
                }.ignoresSafeArea(edges: .bottom)
                    .opacity(0.8)
                
                ScrollView{
                    Group{
                        ZStack{
                            VStack(){
                                Image("\(data.title)-D")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.top, 30)
                                
                                Text("  \(data.detail[0])")
                                    .padding(.top, 20)
                                    .frame(maxWidth: 345, alignment: .leading)
                                    .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                                    .kerning(2)
                                
                                Text("\(data.detail[1])")
                                    .frame(maxWidth: 345, alignment: .leading)
                                    .foregroundStyle(Color.gray.opacity(0.9))
                                    .padding(.top, 10)
                                    .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                                
                                Text(" -- \(data.detail[2])")
                                    .frame(maxWidth: 345, alignment: .leading)
                                    .foregroundStyle(Color.gray.opacity(0.9))
                                    .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                                
                                ForEach(3..<(data.detail.count)){ i in
                                    Text("  \(data.detail[i])")
                                        .padding(.top, 10)
                                        .frame(maxWidth: 345, alignment: .leading)
                                        .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                                }
                            }
                        }
                    }
                }
                .toolbar{
                    ToolbarItemGroup(placement: .topBarTrailing){
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                .imageScale(.large)
                                .foregroundStyle(Color.gray)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    HomeDetail(data: pData.PTypes[10])
}
