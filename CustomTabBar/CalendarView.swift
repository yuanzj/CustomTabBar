//
//  CalendarView.swift
//  CustomTabBar
//
//  Created by 袁志健 on 2022/3/26.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("日历")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationTitle("日历")
        }
        .navigationViewStyle(.stack)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
