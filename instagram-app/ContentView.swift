//
//  ContentView.swift
//  instagram-app
//
//  Created by Ranula Ranatunga on 2021-12-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            ScrollView(.vertical,showsIndicators: false){
                
                Stories()
                Divider()
                
                Post()
                Post(image: "tusker", description: "Tusker HDR shot")
            }
            
            TabBar()

//            Spacer()
        }
  
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack{
            Image("logo")
            Spacer()
            
            HStack(spacing:20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            
        }
        .padding(.horizontal,15)
        .padding(.vertical,3)
    }
}

struct Strory: View {
    
    // MARK: Set the image
    var image: String  = "ranula"
    
    // MARK: Set the static name
    var name: String = "Ranula"
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors:
                 [.red, .purple, .red, .orange, .yellow,.orange] ,
                startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width:68, height: 68)
            )
            .frame(width:70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false)
        {
            HStack(spacing: 15.0) {
                Strory()
                Strory(image: "chamali", name:  "Chamali")
                Strory(image: "mohamed", name:  "Mohamed")
                Strory(image: "subhankan", name:  "Subhankan")
                Strory(image: "profile5", name:  "Santha")
                Strory(image: "profile6", name:  "Kosta")
                Strory(image: "profile7", name:  "Nakoti")
                Strory(image: "profile8", name:  "Raspectza")
            }
            .padding(.horizontal,8)
        }
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
            Image("ranula")
                    .resizable()
                    .frame(width:30, height: 30)
                    .cornerRadius(50)
                
            Text("Ranula Ranatunga")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical,10)
        .padding(.horizontal)
    }
}

struct PostContent: View {
    var image: String = "ranula"
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width:.infinity)
                .aspectRatio(contentMode:.fit)
            
            HStack{
                HStack(spacing: 10.0){
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
        }
    }
}

struct Post: View {
    
    var image: String = "algo"
    var description : String = "Linear regresssion algorithm"
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0.0) {
            PostHeader()
            PostContent(image: image)
            
            Text("Liked by Chamali and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal,12)
            
            Text(description)
                .font(.footnote)
                .frame(width:.infinity)
                .padding(.horizontal,12)
            
            HStack{
                HStack(spacing: 7.0){
                    Image("ranula")
                        .resizable()
                        .frame(width:24,height: 24)
                        .cornerRadius(50)
                    
                    Text("Add Comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                
                Spacer()
                HStack {
                    Text("😍")
                    Text("😂")
                    Image (systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0){
            Divider()
            HStack{
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("ranula")
                    .resizable()
                    .frame(width:21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal,25)
            .padding(.top,10)
        }
    }
}
