//
//  SignUp.swift
//  Instagram LoginPage Clone
//
//  Created by SangHil on 28/10/25.
//

import SwiftUI

struct SignUp: View {
    @Binding var path: NavigationPath
    @State private var mobileNumber = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(red: 131/255, green: 58/255, blue: 180/255),
                    Color(red: 253/255, green: 29/255, blue: 29/255),
                    Color(red: 252/255, green: 176/255, blue: 69/255)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                
                Image("InstagramText")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width:220 , height:80)
                    .foregroundColor(Color.white)
                    .offset(y:20)
                
                
                VStack{
                    
                    VStack(alignment:.center, spacing:15){
                        VStack(alignment:.center){
                            Text("Sign up to see photos and videos")
                            Text("from your friends")
                        }
                        .offset(y:-15)
                        .font(.system(size:15 , weight:.regular))
                        
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
                        
                        TextField("Mobile number or email" , text: $mobileNumber)
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
                        
                        TextField("Full name" , text: $fullName)
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
                        
                        TextField("Username" , text: $userName)
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
                        
                        VStack{
                            Text("People who use our service may have uploaded your")
                                .font(.system(size:10 , weight:.regular))
                                .foregroundColor(Color.gray.opacity(0.95))
                            
                            HStack{
                                Text("contact information to Instagram.")
                                    .font(.system(size:10 , weight:.regular))
                                    .foregroundColor(Color.gray.opacity(0.95))
                                Text("Learn More")
                                    .font(.system(size:10, weight:.medium))
                                    .underline()
                                    .foregroundColor(Color.black.opacity(0.65))
                                    .padding(.leading , -7)
                            }
                            .offset(y:3)
                        }
                        
                        VStack{
                            
                            HStack{
                                Text("By signing up, you agree to our")
                                    .font(.system(size:10 , weight:.regular))
                                    .foregroundColor(Color.gray.opacity(0.95))
                                Text("Terms")
                                    .font(.system(size:10, weight:.medium))
                                    .underline()
                                    .foregroundColor(Color.black.opacity(0.65))
                                    .padding(.leading , -5)
                                Text(",")
                                    .font(.system(size:10 , weight:.regular))
                                    .foregroundColor(Color.gray.opacity(0.95))
                                    .padding(.leading , -7)
                                Text("Privacy Policy")
                                    .font(.system(size:10, weight:.medium))
                                    .underline()
                                    .foregroundColor(Color.black.opacity(0.65))
                                    .padding(.leading , -10)
                            }
                            
                            HStack{
                                Text("and")
                                    .font(.system(size:10 , weight:.regular))
                                    .foregroundColor(Color.gray.opacity(0.95))
                                Text("Cookies Policy")
                                    .font(.system(size:10, weight:.medium))
                                    .underline()
                                    .foregroundColor(Color.black.opacity(0.65))
                                    .padding(.leading , -5)
                            }
                            .offset(y:3)
                            
                        }
                        .padding(.bottom , 5)
                        
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
                    }
                    .padding(21)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    HStack(){
                        Text("Have an account?")
                            .font(.system(size:14 , weight:.regular))
                        Button("Log in"){
                            path.removeLast(path.count)
                        }
                        .font(.system(size:15 , weight:.bold))
                        .foregroundColor(.black)
                    }
                    .offset(y:20)
                }
                .padding(30)
                
            }
        }
        .navigationBarBackButtonHidden(true)
                
    }
}



#Preview {
    SignUp(path: .constant(NavigationPath()))
}
