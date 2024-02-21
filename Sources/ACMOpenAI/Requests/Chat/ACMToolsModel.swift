//
//  ACMToolsModel.swift
//
//
//  Created by burak on 20.02.2024.
//

import Foundation

public struct ACMToolsModel: Codable {
    public let type: String
    public let function: ACMToolsFunctionModel

    public init(type: String, function: ACMToolsFunctionModel) {
        self.type = type
        self.function = function
    }
}

public struct ACMToolsFunctionModel: Codable {
    public let description: String?
    public let name: String
    public let parameters: String?

    public init(description: String? = nil, name: String, params: [String: Any]? = nil) {
        self.description = description
        self.name = name
        if let params, let data = try? JSONSerialization.data(withJSONObject: params, options: []) {
            parameters = String(data: data, encoding: .utf8)
        } else {
            parameters = nil
        }
    }
}

public struct ACMToolChoiceModel: Codable {
    public var strChoice: String?
    public var objChoice: ACMToolChoiceObjectModel?

    public init(strChoice: String? = nil) {
        self.strChoice = strChoice
    }

    public init(objChoice: ACMToolChoiceObjectModel? = nil) {
        self.objChoice = objChoice
    }
}

public struct ACMToolChoiceObjectModel: Codable {
    public var type: String
    public var function: ACMToolChoiceObjectFunctionModel

    public init(type: String, function: ACMToolChoiceObjectFunctionModel) {
        self.type = type
        self.function = function
    }
}

public struct ACMToolChoiceObjectFunctionModel: Codable {
    public var name: String

    public init(name: String) {
        self.name = name
    }
}
