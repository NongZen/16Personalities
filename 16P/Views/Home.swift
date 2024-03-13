//
//  Home.swift
//  16P
//
//  Created by admin on 12/3/2567 BE.
//

/*
 ใส่ header โค้ดเปลี่ยนหน้าจะใช้กับ bool หน้า อื่นๆ อย่าลืมทำให้คล้าย home
 
  ฝากให้แค่ค่า pages ว่า ถ้า homePage = true จะเอาหน้า home มา
 */

import SwiftUI

struct Home: View {
    @State var index = 0
    @State var showSideMenu = false
    @State var homePage: Bool = true
    @State var aboutPage: Bool = false
    @State var testPage: Bool = false
    @State var infoPage: Bool = false
    @State var testingPage: Bool = false
    
    @State var searchText: String = ""
    
    
    @State var questionAllign = [0, 1,2,3,4,5,6,7,8,9,10,11]
    @State var questionNum = 1
    @State var answerNum = 0
    @AppStorage("resultOfUser") var result: String = ""
    @State var resultIndex: Int = 0
    @AppStorage("firstTimeJoin") var firstTimeJoin: Bool = true
    
    @State var searchItems: [Int] = []
    
    
    
    func searchItemChange(){
        searchItems = []
        var Items: [Int] = []
        for i in 0..<pData.PTypes.count {
            if( pData.PTypes[i].title.contains(searchText.uppercased())){
                Items.append(i)
                print(pData.PTypes[i].title)
                print(Items)
            }
        }
        searchItems = Items
        print(searchItems)
    }
    
    func changeQuestion(){
        if(questionNum < 12){
            withAnimation{
                if(questionAllign.count > 1){
                    questionAllign.remove(at: 0)
                    questionAllign.shuffled()
                }
                questionNum += 1
            }
        } else {
            result = ""
            result += (answerNum > 1000) ? "E" : "I"
            answerNum %= 1000
            result += (answerNum > 100) ? "N" : "S"
            answerNum %= 100
            result += (answerNum > 10) ? "T" : "F"
            answerNum %= 10
            result += (answerNum > 1) ? "J" : "P"
            indexOfResult()
            withAnimation{
                testingPage = false
                testPage = false
                infoPage = true
                homePage = false
            }
        }
    }
    
    func indexOfResult(){
        switch result {
        case "INTJ":
            resultIndex = 0
            break;
          case "INTP":
            resultIndex = 1
            break;
          case "ENTJ":
            resultIndex = 2
            break;
          case "ENTP":
            resultIndex = 3
            break;
          case "INFJ":
            resultIndex = 4
            break;
          case "INFP":
            resultIndex = 5
            break;
          case "ENFJ":
            resultIndex = 6
            break;
          case "ENFP":
            resultIndex = 7
            break;
          case "ISTJ":
            resultIndex = 8
            break;
          case "ISFJ":
            resultIndex = 9
            break;
          case "ESTJ":
            resultIndex = 10
            break;
          case "ESFJ":
            resultIndex = 11
            break;
          case "ISTP":
            resultIndex = 12
            break;
          case "ISFP":
            resultIndex = 13
            break;
          case "ESTP":
            resultIndex = 14
            break;
          case "ESFP":
            resultIndex = 15
            break;
        default:
            resultIndex = 16
        }
    }
    
    var body: some View {
        if(!firstTimeJoin){
            if(homePage){
                ZStack {
                    HStack{
                        VStack(alignment: .leading, spacing: 12) {
                            SideMenu()
                        }
                        .padding(.top,25)
                        .padding(.horizontal,20)
                        Spacer(minLength: 0)
                    }
                    ZStack{
                        VStack{
                            Header()
                            Pages()
                        }
                        .background(.white)
                        .cornerRadius(self.showSideMenu ? 30 : 0)
                        .scaleEffect(self.showSideMenu ? 0.9 : 1)
                        .offset(x: self.showSideMenu ? UIScreen.main.bounds.width / 2 : 0, y: self.showSideMenu ? 15 : 0)
                        .rotationEffect(.init(degrees: self.showSideMenu ? -5 : 0))
                        .shadow(radius: 10)
                        VStack{
                            Spacer()
                            Footer()
                        }
                        .cornerRadius(self.showSideMenu ? 30 : 0)
                        .scaleEffect(self.showSideMenu ? 0.9 : 1)
                        .offset(x: self.showSideMenu ? UIScreen.main.bounds.width / 2 : 0, y: self.showSideMenu ? 15 : 0)
                        .rotationEffect(.init(degrees: self.showSideMenu ? -5 : 0))
                    }
                }
                .ignoresSafeArea(edges: .bottom)
                .background(self.showSideMenu ? Color.yellow.opacity(0.6) : .white)
            } else if (testPage){
                if(testingPage){
                    personalitiesTest()
                }else{
                    ZStack{
                        VStack{
                            personalitiesTestMenu()
                        }
                        VStack{
                            Spacer()
                            Footer()
                                .padding(.bottom, 30)
                                .ignoresSafeArea(edges: .bottom)
                        }
                    }
                }
            } else if (infoPage){
                if ( result == ""){
                    ZStack{
                        noResultMenu()
                        VStack{
                            Spacer()
                            Footer()
                                .padding(.bottom, 60)
                        }
                    }
                    .ignoresSafeArea(edges: .bottom)
                    
                } else {
                    ZStack {
                        HStack{
                            VStack(alignment: .leading, spacing: 12) {
                                SideMenu()
                            }
                            .padding(.top,25)
                            .padding(.horizontal,20)
                            Spacer(minLength: 0)
                        }
                        ZStack{
                            VStack{
                                Header()
                                Spacer()
                                Pages()
                                Spacer()
                            }
                            .background(.white)
                            .cornerRadius(self.showSideMenu ? 30 : 0)
                            .scaleEffect(self.showSideMenu ? 0.9 : 1)
                            .offset(x: self.showSideMenu ? UIScreen.main.bounds.width / 2 : 0, y: self.showSideMenu ? 15 : 0)
                            .rotationEffect(.init(degrees: self.showSideMenu ? -5 : 0))
                            .shadow(radius: 10)
                            VStack{
                                Spacer()
                                Footer()
                            }
                            .cornerRadius(self.showSideMenu ? 30 : 0)
                            .scaleEffect(self.showSideMenu ? 0.9 : 1)
                            .offset(x: self.showSideMenu ? UIScreen.main.bounds.width / 2 : 0, y: self.showSideMenu ? 15 : 0)
                            .rotationEffect(.init(degrees: self.showSideMenu ? -5 : 0))
                        }
                    }
                    .ignoresSafeArea(edges: .bottom)
                    .background(self.showSideMenu ? Color.yellow : .white)
                }
            }
        } else {
            
            introducingPage()
            
        }
    }
    
    @ViewBuilder
    private func SideMenu() -> some View {
        SideMenuHeader()
        SideMenuListButton(buttonText: (homePage) ? "Home" : (infoPage) ? "Your Result" : "", icon: "house.fill", index: 0)
        SideMenuListButton(buttonText: "About Us", icon: "person.3.fill", index: 1)
        Spacer()
    }
    
    @ViewBuilder
    private func SideMenuListButton(buttonText: String, icon: String, index: Int) -> some View {
        Button(action: {
            self.index = index
            withAnimation{
                self.showSideMenu.toggle()
            }
        }) {
            HStack(spacing: 15){
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .colorMultiply(self.index == index ? .yellow : Color.black)
                
                Text(buttonText)
                    .bold(self.index == index)
                    .foregroundColor(self.index == index ? .yellow : Color.black)
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(self.index == index ? .black : Color.clear)
            .cornerRadius(10)
        }
    }
    
    @ViewBuilder
    private func SideMenuHeader() -> some View {
        Image("Icon")
            .resizable()
            .frame(width: 150, height: 150)
    }
    
    @ViewBuilder
    private func Pages() -> some View {
        GeometryReader{_ in
            VStack{
                switch self.index {
                case 0:
                    if(homePage){
                        HomePage()
                    } else if (infoPage){
                        ResultP()
                            .padding(.leading, 30)
                    }
                case 1:
                    AboutUs()
                        .padding(.leading, 20)
                        .padding(.bottom, 125)
                default:
                    HomePage()
                }
            }
        }
    }
    
    @ViewBuilder
    private func Header() -> some View {
        HStack(spacing: 15){
            Button(action: {
                withAnimation{
                    self.showSideMenu.toggle()
                }
            }) {
                Image(systemName: self.showSideMenu ? "xmark" : "line.horizontal.3")
                    .resizable()
                    .frame(width: self.showSideMenu ? 18 : 22, height: 18)
                    .foregroundColor(.black)
            }
            
            Text( (index == 1) ? "About Us" : (homePage) ? "Home" : (infoPage) ? "Your Result" : "")
                .font(Font.custom("Advent Pro", size: 25))
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
            
            Button(action: {
                firstTimeJoin = true
                result = ""
            }, label: {
                Circle()
                    .frame(width: 25)
                    .foregroundStyle(.white)
            })
        }
        .padding()
    }
    
    @ViewBuilder
    private func Footer() -> some View {
        
        ZStack{
            VStack{
                Rectangle()
                    .foregroundStyle(Color(red: 0.11, green: 0.12, blue: 0.13))
                    .frame(width: 393, height: 46)
                    .cornerRadius(14)
                    .offset(y:22)
                Rectangle()
                    .foregroundStyle(Color(red: 0.16, green: 0.17, blue: 0.19))
                    .frame(width: 393, height: 85)
            }
            HStack{
                Spacer()
                Button(action: {
                    withAnimation{
                        index = 0
                        testPage = true
                        homePage = false
                        infoPage = false
                        showSideMenu = false
                    }
                }, label: {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(Color(red: 0.45, green: 0.47, blue: 0.51))
                      .frame(width: 29, height: 25)
                })
                Spacer()
                Button(action: {
                    withAnimation{
                        index = 0
                        testPage = false
                        homePage = true
                        infoPage = false
                    }
                }, label: {
                    Circle()
                        .foregroundStyle(.white)
                        .frame(width: 50, height: 50)
                        .overlay(content: {
                            Image(systemName: "house")
                                .imageScale(.large)
                                .foregroundStyle(.black)
                        })
                })
                Spacer()
                Button(action: {
                    withAnimation{
                        testPage = false
                        homePage = false
                        infoPage = true
                        indexOfResult()
                    }
                }, label: {
                    Image(systemName: "book.fill")
                        .resizable()
                        .foregroundStyle(Color(red: 0.45, green: 0.47, blue: 0.51))
                      .frame(width: 29, height: 25)
                })
                Spacer()
            }
            .padding(.top, 33)
        }
    }
    
    
    @ViewBuilder
    private func personalitiesTestMenu() -> some View {
        ZStack{
            // MARK: 16P pic
            
            VStack{ // MARK: UI
                Spacer()
                
                Image("PTestMenu")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top, 200)
                
                Spacer()
                
                
                
                Text("16 PERSONALITIES TEST")
                  .font(Font.custom("Advent Pro", size: 24))
                  .kerning(0.5)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .padding(.bottom, 11)
                  .padding(.top, 45)
                
                Text("What is 16 personalities?\n\n A personality test analyzing the personal traits\n of the test-taker")
                  .font(Font.custom("Advent Pro", size: 16))
                  .kerning(0.5)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 404, height: 77, alignment: .top)
                  .opacity(0.8)
                  .padding(.bottom, 32)
                
                
                Button(action: {
                    withAnimation{
                            questionAllign = [0, 1,2,3,4,5,6,7,8,9,10,11]
                        questionNum = 1
                        answerNum = 0
                        questionAllign.shuffle()
                        testingPage = true
                    }
                }, label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 172, height: 68)
                        .background(Color(red: 0.13, green: 0.62, blue: 0.82))
                        .cornerRadius(25)
                        .overlay(content: {
                            Text("DO TEST")
                                .font(.title)
                                .fontWeight(.medium)
                                .kerning(0.5)
                              .foregroundColor(.white)
                        })
                }).padding(.bottom, 33)
                
              
              Text("* In this test we contain only few questions *")
                .font(Font.custom("Advent Pro", size: 16))
                .kerning(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 391, height: 24, alignment: .top)
                .opacity(0.8)
                .padding(.bottom, 129)
                
            }
            
        }
    }
    
    @ViewBuilder
    private func personalitiesTest() -> some View{
        ZStack{
            VStack{
                Spacer()
                Text("\(questionNum)/12")
                    .font(
                        Font.custom("Advent Pro", size: 24)
                            .weight(.regular)
                    )
                    .foregroundStyle(.black)
                    .kerning(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Rectangle()
                    .foregroundStyle(.black.opacity(0.09))
                    .frame(width: 358, height: 54)
                    .cornerRadius(15)
                    .overlay(content: {
                        Text("\(qData.PTest[questionAllign[0]].question)")
                            .font(
                                Font.custom("Advent Pro", size: 25)
                                    .weight(.medium)
                            )
                            .kerning(0.5)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }).transition(.opacity)
                Spacer()
                if(questionNum.isMultiple(of: 2)){
                    
                    Button(action: {
                        answerNum += qData.PTest[questionAllign[0]].addition
                        changeQuestion()
                    }, label: {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 355, height: 74)
                            .cornerRadius(15)
                            .opacity(0.05)
                            .overlay{
                                Text("\(qData.PTest[questionAllign[0]].choice1)")
                                    .font(Font.custom("Advent Pro", size: 20))
                                    .kerning(0.5)
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.black)
                            }
                    })
                    Spacer()
                    Rectangle()
                        .frame(width: 256, height: 4)
                        .cornerRadius(4)
                        .opacity(0.3)
                    Spacer()
                    Button(action: {
                        changeQuestion()
                    }, label: {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 355, height: 74)
                            .cornerRadius(15)
                            .opacity(0.05)
                            .overlay{
                                Text("\(qData.PTest[questionAllign[0]].choice2)")
                                    .font(Font.custom("Advent Pro", size: 20))
                                    .kerning(0.5)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                    })
                }else{
                    Button(action: {
                        changeQuestion()
                    }, label: {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 355, height: 74)
                            .cornerRadius(15)
                            .opacity(0.02)
                            .overlay{
                                Text("\(qData.PTest[questionAllign[0]].choice2)")
                                    .font(Font.custom("Advent Pro", size: 20))
                                    .kerning(0.5)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                    }).transition(.push(from: Edge.top))
                    
                    
                    Spacer()
                    Rectangle()
                        .frame(width: 256, height: 4)
                        .cornerRadius(4)
                        .opacity(0.3)
                    Spacer()
                    Button(action: {
                        answerNum += qData.PTest[questionAllign[0]].addition
                        changeQuestion()
                    }, label: {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 355, height: 74)
                            .cornerRadius(15)
                            .opacity(0.02)
                            .overlay{
                                Text("\(qData.PTest[questionAllign[0]].choice1)")
                                    .font(Font.custom("Advent Pro", size: 20))
                                    .kerning(0.5)
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.black)
                            }
                    })
                }
                Spacer()
                Spacer()
                Spacer()
                
            }
        }
        
    }
    
    @ViewBuilder
    private func noResultMenu() -> some View{
        ZStack{
            // MARK: 16P pic
            
            VStack{ // MARK: UI
                Spacer()
                
                Image("PTestMenu")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top, 200)
                
                Spacer()
                
                Text("You haven't done the test yet")
                    .font(Font.custom("Advent Pro", size: 32).weight(.bold))
                    .kerning(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.bottom, 11)
                
                Text("16 PERSONALITIES TEST")
                  .font(Font.custom("Advent Pro", size: 24))
                  .kerning(0.5)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .padding(.bottom, 11)
                  .padding(.top, 45)
                
                Text("What is 16 personalities?\n\n A personality test analyzing the personal traits\n of the test-taker")
                  .font(Font.custom("Advent Pro", size: 16))
                  .kerning(0.5)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 404, height: 77, alignment: .top)
                  .opacity(0.8)
                  .padding(.bottom, 32)
                
                
                Button(action: {
                    withAnimation{
                            questionAllign = [0, 1,2,3,4,5,6,7,8,9,10,11]
                        questionNum = 1
                        answerNum = 0
                        questionAllign.shuffle()
                        testingPage = true
                    }
                }, label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 172, height: 68)
                        .background(Color(red: 0.13, green: 0.62, blue: 0.82))
                        .cornerRadius(25)
                        .overlay(content: {
                            Text("DO TEST")
                                .font(.title)
                                .fontWeight(.medium)
                                .kerning(0.5)
                              .foregroundColor(.white)
                        })
                }).padding(.bottom, 33)
                
              
              Text("* In this test we contain only few questions *")
                .font(Font.custom("Advent Pro", size: 16))
                .kerning(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 391, height: 24, alignment: .top)
                .opacity(0.8)
                .padding(.bottom, 129)
                
            }
            
        }
    }
    
    @ViewBuilder
    private func introducingPage() -> some View{
        ZStack{
            Color(hex: "#A0CF7E").ignoresSafeArea(.all)
            
            ZStack{
                // MARK: 16P pic
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1028, height: 378)
                    .background(
                        Image("PTest")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 1028, height: 378)
                            .clipped()
                    )
                    .padding(.bottom, 474)
                    .ignoresSafeArea(.all)
                
                ZStack{ // MARK: UI
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 500)
                        .background(.white)
                        .cornerRadius(25)
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 122, height: 7)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(25)
                        .opacity(0.6)
                        .padding(.bottom, 475)
                    
                    Text("16 PERSONALITIES")
                        .font(Font.custom("Advent Pro", size: 24).weight(.bold))
                        .kerning(0.5)
                        .foregroundColor(.black)
                        .padding(.top, 72)
                        .padding(.bottom, 403)
                    
                    .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                    
                    Text("What is 16 personalities?\n\n A personality test analyzing the personal traits\n of the test-taker")
                        .font(Font.custom("Advent Pro", size: 18).weight(.medium))                        .kerning(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 404, height: 77, alignment: .top)
                        .opacity(0.8)
                        .padding(.top, 119)
                        .padding(.bottom, 303)
                    
                    Text("* In this test we contain only few questions *")
                    
                    .font(Font.custom("Advent Pro", size: 18).weight(.medium))
                        .kerning(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 404, height: 77, alignment: .top)
                        .opacity(0.8)
                        .padding(.top, 275)
                        .padding(.bottom, 200)
                    
                    Button(action: {
                        questionAllign = [0, 1,2,3,4,5,6,7,8,9,10,11]
                    questionNum = 1
                    answerNum = 0
                        questionAllign.shuffle()
                        withAnimation {
                            firstTimeJoin = false
                            testPage = true
                            testingPage = true
                            homePage = false
                            infoPage = false
                        }
                        
                    }, label: {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 172, height: 68)
                            .background(Color(red: 0.13, green: 0.62, blue: 0.82))
                            .cornerRadius(25)
                            .overlay(content: {
                                Text("DO TEST")
                                    .font(Font.custom("Actor", size: 24))
                                    .kerning(0.5)
                                    .foregroundColor(.white)
                            })
                    })
                    .padding(.top, 352)
                    .padding(.bottom, 79)
                    
                    Button(action: {
                        withAnimation{
                            firstTimeJoin = false
                        }
                    }, label: {
                        Text("Skip")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.black.opacity(0.1))
                    })
                    .padding(.top, 380)
                    
                }.padding(.top, 353)
                
                
            }
            
            
        }
    }
    
    @ViewBuilder
    private func ResultP() -> some View {
        ZStack{
            Image("\(pData.PTypes[resultIndex].title)-M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 273, height: 263)
                    .clipped()
                    .padding(.bottom, 350)
            
            
            Text("\(pData.PTypes[resultIndex].title)")
                .font(
                    Font.custom("Advent Pro", size: 32)
                        .weight(.medium)
                )
                .kerning(0.5)
                .foregroundColor(.black)
                .frame(maxWidth: 345 ,alignment: .leading)
                .padding(.bottom, 30)
            
            Text("   \(pData.PTypes[resultIndex].detail[0])")
                .frame(maxWidth: 345 ,alignment: .leading)
                .font(Font.custom("Advent Pro", size: 18))
                .kerning(0.5)
                .foregroundColor(.black)
                .padding(.top, 250)
            
            
        }
    }
    
    @ViewBuilder
    private func AboutUs() -> some View {
        ZStack{
            Group{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 277, height: 125)
                    .background(Color(red: 0.76, green: 0.71, blue: 0.79))
                    .cornerRadius(14)
                    .padding(.bottom, 420)
                    .padding(.trailing, 50)
                    .shadow(radius: 2)
                
                Text("Coder")
                    .font(
                        Font.custom("Advent Pro", size: 22)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.bottom, 500)
                    .padding(.trailing, 250)
                
                
                Rectangle()
                    .stroke(Color(red: 0.36, green: 0.3, blue: 0.45), lineWidth: 1)
                    .frame(width: 65, height: 1)
                    .padding(.bottom, 475)
                    .padding(.trailing, 235)
                
                Text("Theerabhop")
                    .font(
                        Font.custom("Advent Pro", size: 11)
                            .weight(.medium)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.bottom, 450)
                    .padding(.trailing, 245)
                
                Text("I don't want to present")
                    .frame(width: 200, alignment: .leading)
                    .font(Font.custom("Advent Pro", size: 15))
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.bottom, 330)
                    .padding(.trailing, 100)
                
                Text("INTJ")
                    .font(
                        Font.custom("Advent Pro", size: 14)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.bottom, 330)
                    .padding(.leading, 180)
                
                Image("INTJ-M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 133)
                    .scaleEffect(1.3)
                    .padding(.bottom, 500)
                    .padding(.leading, 180)
                    .shadow(radius: 2)
                
                Image("INTP-M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 133)
                    .scaleEffect(1.3)
                    .padding(.bottom, 500)
                    .padding(.leading, 180)
                    .opacity(0.1)
            }
            
            Group{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 277, height: 125)
                    .background(Color(red: 0.76, green: 0.71, blue: 0.79))
                    .cornerRadius(14)
                    .padding(.leading, 50)
                    .shadow(radius: 2)
                
                Text("Graphic Designer")
                    .frame(width: 200)
                    .font(
                        Font.custom("Advent Pro", size: 22)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.leading, 150)
                    .padding(.bottom, 80)
                
                
                Rectangle()
                    .stroke(Color(red: 0.36, green: 0.3, blue: 0.45), lineWidth: 1)
                    .frame(width: 65, height: 1)
                    .padding(.bottom, 50)
                    .padding(.leading, 235)
                
                Text("Dhammasorn")
                    .font(
                        Font.custom("Advent Pro", size: 11)
                            .weight(.medium)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.bottom, 20)
                    .padding(.leading, 240)
                
                Text("If it works... don't touch it")
                    .frame(width: 200, alignment: .trailing)
                    .font(Font.custom("Advent Pro", size: 15))
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.top,90)
                    .padding(.leading, 65)
                
                Text("INTP")
                    .font(
                        Font.custom("Advent Pro", size: 14)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(red: 0.36, green: 0.3, blue: 0.45))
                    .padding(.top, 90)
                    .padding(.trailing, 180)
                
                Image("INTP-M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 133)
                    .padding(.bottom, 65)
                    .padding(.leading, 180)
                    .opacity(1)
                    .scaleEffect(x: /*@START_MENU_TOKEN@*/-1.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 2)
                
            }
            
            Group{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 277, height: 125)
                    .background(Color(red: 0.85, green: 0.92, blue: 0.94))
                    .cornerRadius(14)
                    .padding(.top, 420)
                    .padding(.trailing, 50)
                    .shadow(radius: 2)
                
                Text("UI Designer")
                    .font(
                        Font.custom("Advent Pro", size: 22)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.3, green: 0.36, blue: 0.45))


                    .padding(.top, 350)
                    .padding(.trailing, 195)
                
                
                Rectangle()
                    .stroke(Color(red: 0.3, green: 0.36, blue: 0.45))
                    .frame(width: 65, height: 1)
                    .padding(.top, 375)
                    .padding(.trailing, 235)
                
                Text("Phollaphat")
                    .font(
                        Font.custom("Advent Pro", size: 11)
                            .weight(.medium)
                    )
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.3, green: 0.36, blue: 0.45))


                    .padding(.top, 400)
                    .padding(.trailing, 250)
                
                Text("Work harder... not smarter")
                    .frame(width: 200, alignment: .leading)
                    .font(Font.custom("Advent Pro", size: 15))
                    .kerning(0.5)
                    .foregroundColor(Color(red: 0.3, green: 0.36, blue: 0.45))


                    .padding(.top, 500)
                    .padding(.trailing, 100)
                
                Text("ISTJ")
                    .font(
                        Font.custom("Advent Pro", size: 14)
                            .weight(.bold)
                    )
                    .kerning(0.5)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(red: 0.3, green: 0.36, blue: 0.45))


                    .padding(.top, 500)
                    .padding(.leading, 180)
                
                Image("ISTJ-M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 133)
                    .padding(.top, 350)
                    .padding(.leading, 180)
            }
            
        }
    }
    
    @ViewBuilder
    private func HomePage() -> some View {
        ScrollView{
            HStack(spacing: 2) {
                Spacer()
                Image(systemName: "magnifyingglass")
                
                TextField("Search for personality traits", text: $searchText)
                    .onChange(of: searchText, {
                        searchItemChange()
                    })
                Spacer()
            }
            .foregroundColor(.secondary)
            .padding(.horizontal, 10)
            .padding(.vertical, 7)
            .frame(height: 36, alignment: .leading)
            
            
            VStack(spacing: 45){
                if( searchText == ""){
                    ForEach(0..<8){ i in
                        HStack(alignment: .center){
                            HomeData(data: pData.PTypes[i*2])
                                .padding(.leading, 30)
                            Spacer()
                            HomeData(data: pData.PTypes[i*2+1])
                                .padding(.trailing, 30)
                        }
                        
                    }
                } else {
                    if(searchItems.count == 8){
                        ForEach(0..<(searchItems.count/2)){ i in
                            HStack(alignment: .center){
                                HomeData(data: pData.PTypes[searchItems[i*2]])
                                    .padding(.leading, 30)
                                Spacer()
                                HomeData(data: pData.PTypes[searchItems[i*2+1]])
                                    .padding(.trailing, 30)
                            }
                        }
                    }else if(searchItems.count == 4){
                        ForEach(0..<(searchItems.count/2)){ i in
                            HStack(alignment: .center){
                                HomeData(data: pData.PTypes[searchItems[i*2]])
                                    .padding(.leading, 30)
                                Spacer()
                                HomeData(data: pData.PTypes[searchItems[i*2+1]])
                                    .padding(.trailing, 30)
                            }
                        }
                    }else if(searchItems.count == 2){
                        ForEach(0..<(searchItems.count/2)){ i in
                            HStack(alignment: .center){
                                HomeData(data: pData.PTypes[searchItems[i*2]])
                                    .padding(.leading, 30)
                                Spacer()
                                HomeData(data: pData.PTypes[searchItems[i*2+1]])
                                    .padding(.trailing, 30)
                            }
                        }
                    }else if(searchItems.count == 1){
                        HStack(alignment: .center){
                            Spacer()
                            HomeData(data: pData.PTypes[searchItems[0]])
                            Spacer()
                        }
                    }
                }
            }.padding(.bottom, 150)
        }
    }
    
}

#Preview{
    Home()
}


