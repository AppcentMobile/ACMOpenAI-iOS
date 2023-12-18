//
//  ChatCallback.swift
//

/// Callback for holding chat endpoint
public struct ChatCallback {}

public extension ChatCallback {
    /// Create chat typealias
    typealias Create = (([ACMOAIChatResponse.Create?]) -> Void)?
}
