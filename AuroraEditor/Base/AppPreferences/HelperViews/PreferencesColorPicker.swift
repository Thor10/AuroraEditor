//
//  PreferencesColorPicker.swift
//  Aurora Editor
//
//  Created by Lukas Pistrol on 31.03.22.
//  Copyright © 2023 Aurora Company. All rights reserved.
//

import SwiftUI

struct PreferencesColorPicker: View {

    @Binding
    var color: Color

    private let label: String?

    init(_ color: Binding<Color>, label: String? = nil) {
        self._color = color
        self.label = label
    }

    var body: some View {
        HStack {
            ColorPicker(selection: $color, supportsOpacity: false) { }
                .labelsHidden()
            if let label = label {
                Text(label)
            }
        }
    }
}
