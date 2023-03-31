//
//  EditsCallback.swift
//

public struct EditsCallback {}

public extension EditsCallback {
    typealias Create = ((ACMOAIEditsResponse.Create?) -> Void)?
}
