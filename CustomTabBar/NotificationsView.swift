//
//  NotificationsView.swift
//  CustomTabBar
//
//  Created by 袁志健 on 2022/3/26.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("通知")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationTitle("通知")
        }
        .navigationViewStyle(.stack)
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
