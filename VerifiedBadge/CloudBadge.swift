//
//  CloudBadge.swift
//  VerifiedBadge
//
//  Created by Jared Davidson on 4/29/24.
//

import Foundation

public struct CloudBadge<Content: View>: View {
    let capsuleCount: Range = 0..<7
    let rotationStep: Int = 45

    public init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content()
    }
    
    let content: Content
    
    public var body: some View {
        GeometryReader {
            reader in
            ZStack {
                ForEach(
                    capsuleCount,
                    id: \.self
                ) { i in
                    Capsule()
                        .frame(
                            width: reader.size.width,
                            height: reader.size.width / 3
                        )
                        .rotationEffect(
                            .degrees(
                                Double(i) * Double(rotationStep)
                            )
                        )
                }
                content
                    .frame(
                        width: reader.size.width / 2,
                        height: reader.size.height / 2
                    )
            }
            .frame(
                width: reader.size.width,
                height: reader.size.height,
                alignment: .center
            )
            .aspectRatio(1, contentMode: .fit) // Keep the badge circular
        }
    }
}
