//
//  LabeledStringValue.swift
//  XCSClient
//
//  Created by Alex da Franca on 14.06.20.
//  Copyright © 2020 Farbflash. All rights reserved.
//

import SwiftUI

struct LabeledStringValue: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack(alignment: .top) {
            InfoLabel(content: label)
            Text(value)
        }
    }
}

struct LabeledStringValue_Previews: PreviewProvider {
    static var previews: some View {
        LabeledStringValue(label: "Label", value: "Value")
    }
}