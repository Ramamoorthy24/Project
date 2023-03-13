//
//  UserDetailView.swift
//  SurveyHeartDemo
//
//  Created by Ramamoorthy on 11/03/23.
//

import SwiftUI

struct UserDetailView: View {
    
    var detail: UsersDetail
    @StateObject var imageVM = ImageProvider()
    
    var body: some View {
        
        VStack {
            Image(uiImage: imageVM.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: ConstantSizes.width,height: ConstantSizes.height)
                .clipped()
                .cornerRadius(ConstantSizes.height)
                .shadow(radius: 3)
                .onAppear {
                    guard let url = URL(string: detail.picture?.large ?? "") else {
                        return
                    }
                    imageVM.loadImage(url: url)
                }
            Text("\(detail.name?.first ?? "") \(detail.name?.last ?? "")")
                .font(Theme.largeTitleSemi)
            Form {
                Section {
                    HStack {
                        Text(Constants.SectionTitle.phone)
                        Spacer()
                        Text(detail.phone ?? "")
                            .foregroundColor(Theme.labelColor)
                            .font(Theme.Title4)
                            .frame(alignment: .leading)
                    }
                    HStack {
                        Text(Constants.SectionTitle.email)
                        Spacer()
                        Text(detail.email)
                            .foregroundColor(Theme.labelColor)
                            .font(Theme.Title4)
                            .frame(alignment: .leading)
                    }
                    HStack {
                        Text(Constants.SectionTitle.gender)
                        Spacer()
                        Text(detail.gender.capitalized)
                            .foregroundColor(Theme.labelColor)
                            .font(Theme.Title4)
                            .frame(alignment: .leading)
                    }
                    HStack {
                        Text(Constants.SectionTitle.address)
                        Spacer()
                        Text("\(detail.location?.city ?? ""), \(detail.location?.country ?? "")")
                            .foregroundColor(Theme.labelColor)
                            .font(Theme.Title4)
                            .frame(alignment: .leading)
                    }
                    
                    HStack {
                        Text(Constants.SectionTitle.age)
                        Spacer()
                        Text("\(detail.dob?.age ?? 0)")
                            .foregroundColor(Theme.labelColor)
                            .font(Theme.Title4)
                            .frame(alignment: .leading)
                    }
                }
            }.background(Color.purple)
        }
        .environment(\.colorScheme, .light)
        
    }
}

struct ConstantSizes {
    static let width:CGFloat = 150
    static let height:CGFloat = 150
}
