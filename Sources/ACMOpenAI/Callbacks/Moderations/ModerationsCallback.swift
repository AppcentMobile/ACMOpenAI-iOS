//
//  ModerationsCallback.swift
//

public struct ModerationsCallback {}

public extension ModerationsCallback {
    typealias Create = ((ACMOAIModerationsResponse.Create?) -> Void)?
}
