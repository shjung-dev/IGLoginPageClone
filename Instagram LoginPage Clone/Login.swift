//
//  Login.swift
//  Instagram LoginPage Clone
//
//  Created by SangHil on 28/10/25.
//

import SwiftUI

struct Login: View {
    @Binding var path: NavigationPath
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 131/255, green: 58/255, blue: 180/255),
                    Color(red: 253/255, green: 29/255, blue: 29/255),
                    Color(red: 252/255, green: 176/255, blue: 69/255)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
           
            VStack{
                
                VStack(spacing: -15){
                    Image("InstagramLogo")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:110 , height:110)
                        .foregroundColor(.white)
                    Image("InstagramText")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:220 , height: 80)
                        .foregroundColor(.white)
                }
                .offset(y:53)
            
                VStack{
                    
                    VStack(spacing:15){
                        TextField("Phone number, username or email" , text: $username)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color(white:0.96))
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                            .overlay(
                                   RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 0.3)
                               )
                            .font(.system(size:13 , weight:.medium))
                        
                        SecureField("Password" , text:$password)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color(white:0.96))
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 0.3)
                            )
                            .font(.system(size:13 , weight:.medium))
                        
                        Button(action:{
                            //Login Action:
                        }){
                            Text("LOG IN")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(18)
                                .background(Color.black)
                                .cornerRadius(8)
                                .font(.system(size:14 , weight:.bold))
                        }
                        
                        HStack(alignment: .center){
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(height:1)
                                .frame(maxWidth:.infinity)
                            Text("OR")
                                .font(.system(size:15))
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(height:1)
                                .frame(maxWidth:.infinity)
                        }
                        
                        Button(action:{
                            //Login via FaceBook Action
                        }){
                            HStack(alignment:.center){
                                Image("FaceBookLogo")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width:28 , height:28)
                                    .foregroundColor(Color.white)
                                Text("LOGIN WITH FACEBOOK")
                                    .foregroundColor(.white)
                                    .font(.system(size:13 , weight:.bold))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(12)
                            .background(Color.blue)
                            .cornerRadius(8)
                        }
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height:1)
                            .frame(maxWidth:.infinity)
                        
                        Text("Forget password?")
                            .font(.system(size:14 , weight:.regular))
                    }
                    .padding(21)
                    .background(Color.white)
                    .cornerRadius(10)
                    .offset(y:120)
                    
                    Spacer()
                    
                    HStack(){
                        Text("Don't have an account?")
                            .font(.system(size:14 , weight:.regular))
                        Button("Sign Up"){
                            path.append("SignUp")
                        }
                        .font(.system(size:15 , weight:.bold))
                        .foregroundColor(.black)
                    }
                    .offset(y:30)
                }
                .padding(35)
            }
        }
        
    }
}

#Preview {
    Login(path: .constant(NavigationPath()))
}
