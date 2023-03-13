//
//  ContentView.swift
//  SurveyHeartDemo
//
//  Created by Ramamoorthy on 11/03/23.
//

import SwiftUI

struct UserListView: View {
    
    @StateObject var viewModel = UsersViewModel()
    @ObservedObject private var progressVM = ProgressViewModel.shared
        
    var body: some View {
        NavigationView {
            List(viewModel.handleUserList(), id: \.id?.value) { user in
                    NavigationLink(destination: UserDetailView(detail: user)) {
                        UserCardView(user: user)
                    }.listRowInsets(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -40))
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
            }.onLoad() {
                viewModel.getUserlist(limit: Constants.fetchUserLimit)
            }
            .redacted(reason: progressVM.isShowing || viewModel.showAlert ? .placeholder : [])
            .navigationTitle(Constants.HeaderTitle.users)
            .toolbar {
                Menu {
                    ForEach(Gender.allCases, id: \.id) { item in
                        Button {
                            self.viewModel.genders = item
                        } label: {
                            let checkImage = self.viewModel.genders == item ? Constants.Icons.check : ""
                            Label(item.rawValue, systemImage: checkImage)
                        }
                    }
                } label: {
                    Label("", systemImage: Constants.Icons.filter)
                        .foregroundColor(.black)
                }
            }
        }
        .searchable(text: $viewModel.searchText, prompt: Constants.HeaderTitle.searchUser)
        .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text(viewModel.validationMessage ?? Constants.Errors.Labels.unknown))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
struct UserCardView: View {
    
    var user: UsersDetail
    @StateObject var imageVM = ImageProvider()
    
    var body: some View {
        VStack {
            CardView
        }
    }
    
    private var CardView: some View {
        
        VStack {
            HStack {
                Image(uiImage: imageVM.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill).clipped()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                    .padding(.leading,10)
                    .shadow(color: Theme.shadowBorderColor, radius: 6, x: 0, y: 0)
                    .onAppear {
                        guard let url = URL(string: user.picture?.thumbnail ?? "") else {
                            return
                        }
                        imageVM.loadImage(url: url)
                    }
                VStack {
                    Text("\(user.name?.first ?? "") \(user.name?.last ?? "")")
                        .foregroundColor(Theme.primaryColor)
                        .font(Theme.BoldHeadline)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.top,10)
            .padding(.bottom,10)
            
        }
        
        .frame(maxWidth: .infinity)
        .background(Theme.whiteColor)
        .cornerRadius(10)
        .padding(EdgeInsets(top: 05, leading: 20, bottom: 05, trailing: 20))
        
    }
    
    
}
