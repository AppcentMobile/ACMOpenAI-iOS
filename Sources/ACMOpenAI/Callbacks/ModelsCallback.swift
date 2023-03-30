//
//  ModelsCallback.swift
//

public struct ModelsCallback {}

public extension ModelsCallback {
    typealias List = ((String?) -> Void)?
    typealias Retrieve = ((String?) -> Void)?
}
