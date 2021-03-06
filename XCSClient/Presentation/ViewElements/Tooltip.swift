//
//  Tooltip.swift
//  XCSClient
//
//  Created by Alex da Franca on 14.06.20.
//  Copyright © 2020 Farbflash. All rights reserved.
//

import SwiftUI

public extension View {
    /// Overlays this view with a view that provides a Help Tag.
    func toolTip(_ toolTip: String) -> some View {
        self.overlay(TooltipView(toolTip))
    }
}

private struct TooltipView: NSViewRepresentable {
    let toolTip: String
    
    init(_ toolTip: String?) {
        if let toolTip = toolTip {
            self.toolTip = toolTip
        }
        else
        {
            self.toolTip = ""
        }
    }
    
    func makeNSView(context: NSViewRepresentableContext<TooltipView>) -> NSView {
        NSView()
    }
    
    func updateNSView(_ nsView: NSView, context: NSViewRepresentableContext<TooltipView>) {
        nsView.toolTip = self.toolTip
    }
}
