//
//  TestView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct TestView: View {
    @State private var showModal = false
    var body: some View {
        ZStack {
            VStack {
                Button("Click here") {
                    showModal.toggle()
                }
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
//            ModalView(isShowing: $showModal)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
