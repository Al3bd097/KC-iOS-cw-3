//
//  ContentView.swift
//  cw3
//
//  Created by Max will on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    @State var username:String = ""
    @State var fullname:String = ""
    var body: some View {
    
        ZStack {
            Image("blue")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("Welcome back! \(username)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .serif))
                
                Text("\(fullname)")

                Spacer()
                
                Image("profile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                
              
                TextField("Enter your name", text: $username)
                    .padding(5)
                    .background(.white)
                    .cornerRadius(10)
                
                
                TextField("Enter your Email", text: $fullname)
                    .padding(5)
                    .background(.white)
                    .cornerRadius(10)
                    Divider()

                Text("Sign in")
                    .font(.system(size: 25, weight: .medium, design: .serif))
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.white.opacity(0.34))
                    .cornerRadius(10)

                
                
                
                HStack{
                    Text("Sign up")
                        .font(.system(size: 15, weight: .medium))
                        .padding(40)
                        .foregroundColor(.white)
                        
                }
                Spacer()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
