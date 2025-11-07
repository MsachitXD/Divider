//
//  ContentView.swift
//  Divider View
//
//  Created by Sachit Mittal on 07/11/25.
//

import SwiftUI

// MARK: - 1. SimpleLine
struct SimpleLine: View {
    var color: Color = .gray.opacity(0.3)
    var height: CGFloat = 1

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .padding(.horizontal)
    }
}

// MARK: - 2. DashedSeparator
struct DashedSeparator: View {
    var color: Color = .gray
    var body: some View {
        Rectangle()
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            .foregroundColor(color.opacity(0.5))
            .frame(height: 1)
            .padding(.horizontal)
    }
}

// MARK: - 3. GradientBar
struct GradientBar: View {
    var colors: [Color] = [.clear, .gray.opacity(0.5), .clear]

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colors),
            startPoint: .leading,
            endPoint: .trailing
        )
        .frame(height: 1)
        .padding(.horizontal)
    }
}

// MARK: - 4. TextDivider
struct TextDivider: View {
    var text: String = "OR"
    var color: Color = .gray.opacity(0.5)

    var body: some View {
        HStack {
            Rectangle().frame(height: 1)
            Text(text)
                .font(.caption)
                .foregroundColor(color)
            Rectangle().frame(height: 1)
        }
        .foregroundColor(color)
        .padding(.horizontal)
    }
}

// MARK: - 5. BlurLine
struct BlurLine: View {
    var body: some View {
        Rectangle()
            .fill(.ultraThinMaterial)
            .frame(height: 1)
            .cornerRadius(1)
            .padding(.horizontal)
    }
}


#Preview {
    VStack(spacing: 20) {
        Text("SimpleLine").bold()
        SimpleLine()

        Text("DashedSeparator").bold()
        DashedSeparator()

        Text("GradientBar").bold()
        GradientBar()

        Text("TextDivider").bold()
        TextDivider(text: "OR")

        Text("BlurLine").bold()
        BlurLine()
    }
    .padding()
    .previewLayout(.sizeThatFits)
}
