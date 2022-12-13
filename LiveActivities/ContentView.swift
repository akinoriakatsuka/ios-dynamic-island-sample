//
//  ContentView.swift
//  LiveActivities
//
//  Created by 赤塚啓紀 on 2022/12/13.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Add Live Activity"){
                addLiveActivity()
            }
        }
        .padding()
    }
    
    
    func addLiveActivity(){
        let orderAttributes = OrderStatusAttributes(name: "test")
        let initialContentState = OrderStatusAttributes.ContentState(value: 1)
        
        do{
            let activity = try Activity<OrderStatusAttributes>.request(attributes: orderAttributes, contentState: initialContentState)
            print("Activity Added Successfully. id: \(activity.id)")
        }catch{
            print(error.localizedDescription)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
