//
//  ContentView.swift
//  SwiftUI-PetInformationApp
//
//  Created by 김두운 on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("dogProfile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.teal, lineWidth: 3)
                    )
                    .padding()
                VStack(alignment: .leading, spacing: 8) {
                    Text("이름: 키도")
                    Text("시바견")
                    Text("2017년 5월생")
                }
                .padding()
                .font(.system(size: 20))
            }
            .padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 10) {
                Text("좋아하는 것")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Divider()
                Text("- 각종 고기")
                Text("- 장본게 담겨 있는 종량제 봉투")
                Text("- 집에 새로 온 사람")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.mint)
                    .opacity(0.2)
                    .shadow(radius: 5)
            )
            VStack(alignment: .leading, spacing: 10) {
                Text("스킬")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Divider()
                HStack(alignment: .top, spacing: 30) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("- 앉아")
                        Text("- 엎드려(앉아와 자주 혼동함)")
                        Text("- 하우스(집으로 들어가기)")
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("- 손")
                        Text("- 코")
                    }
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.pink)
                    .opacity(0.2)
                    .shadow(radius: 5)
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
