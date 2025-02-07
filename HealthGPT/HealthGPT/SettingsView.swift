//
// This source file is part of the Stanford HealthGPT project
//
// SPDX-FileCopyrightText: 2023 Stanford University & Project Contributors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var messageManager: MessageManager

    let disclaimer = """
    AntHealth is powered by the OpenAI API. Data submitted here is not used for training OpenAI's models according to their terms and conditions.

    Currently, AntHealth is accessing your step count, sleep analysis, exercise minutes, \
    active calories burned, body weight, and heart rate, all from data stored in the Health app.

    Remember to log your data and wear your Apple Watch throughout the day for the most accurate results.
    """

    var body: some View {
        Button("Clear Current Thread") {
            messageManager.clearMessages()
            dismiss()
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .foregroundColor(.blue)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue, lineWidth: 1)
        )

        Text(disclaimer)
        .foregroundColor(.gray)
        .padding(20)
        .font(.system(size: 15))
    }
}
