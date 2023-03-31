//
//  ChatCallback.swift
//

public struct ChatCallback {}

public extension ChatCallback {
    typealias Create = ((ACMOAIChatResponse.Create?) -> Void)?
}
