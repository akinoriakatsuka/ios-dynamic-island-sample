//
//  OrderStatusBundle.swift
//  OrderStatus
//
//  Created by 赤塚啓紀 on 2022/12/13.
//

import WidgetKit
import SwiftUI

@main
struct OrderStatusBundle: WidgetBundle {
    var body: some Widget {
        OrderStatus()
        OrderStatusLiveActivity()
    }
}
