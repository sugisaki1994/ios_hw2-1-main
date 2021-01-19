//
//  HomeView.swift
//  ios_hw2
//
//  Created by User02 on 2021/1/17.
//

import SwiftUI

struct weapImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct episodesList: View {
    let imageEpisode: String
    let nameEpisode: String
    let descriptionEpisode: String
    
    var body: some View {
        HStack {
            Image(imageEpisode)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 100)
                .clipped()
            LazyVStack (alignment: .leading, pinnedViews: [.sectionHeaders, .sectionFooters]){
                Text(nameEpisode)
                Text(descriptionEpisode)
            }
        }
        Spacer()
    }
}

struct HomeView: View {
    
    
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("武器列表")){
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 10.0) {
                            ForEach(weaps){ (weap) in
                                NavigationLink(destination: weapintroductionView(
                                                image: weap.image, name: weap.name, description: weap.description)){
                                    weapImage(name: weap.image)
                                }
                            }
                        }
                        .frame(height: 200)
                    }
                }
                Section(header: Text("高手列表")){
                    ForEach(episodes.indices){ (item) in
                        Link(destination: URL(string: episodes[item].url)!, label: {
                            episodesList(imageEpisode: episodes[item].imageEpisode, nameEpisode: episodes[item].nameEpisode, descriptionEpisode: episodes[item].descriptionEpisode)
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
         
            }
            .navigationBarTitle("MHRise")
        }
        .offset(y:50)
    }
    
}

struct weapintroductionView: View {
    var image: String
    var name: String
    var description: String
    @State var pics = false
    var body: some View {
        
        VStack{
            if pics{
                weapintroView(image: image, name: name, description: description)
                    .transition(.slide)
            }
        }
        .animation(.easeInOut(duration:1.3))
        .onAppear {pics = true}
        .onDisappear {pics = false}
    }
}


struct weapintroView: View {
    
    var image: String
    var name: String
    var description: String
    
    var body: some View {
        ScrollView(.vertical) {
            VStack (spacing: 30){
                
                    Image("\(image)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                        .shadow(radius: 10)
                
                
                HStack{
                    
                    Text(name)
                            .font(.custom("jf-openhuninn-1.1",size:22))
                            .fontWeight(.heavy)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    
                    
                    Text(image)
                        .font(.custom("jf-openhuninn-1.1",size:22))
                        .fontWeight(.heavy)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                
                Text(description)
                    .fontWeight(.heavy)
                    .frame(width: 300)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
