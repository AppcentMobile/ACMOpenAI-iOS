//
//  EnginesCallback.swift
//

public struct EnginesCallback {}

public extension EnginesCallback {
    typealias List = ((ACMOAIEnginesResponse.List?) -> Void)?
    typealias Retrieve = ((ACMOAIEnginesResponse.Retrieve?) -> Void)?
}
