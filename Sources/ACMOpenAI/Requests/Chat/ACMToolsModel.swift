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
    public let params: String?

    public init(description: String? = nil, name: String, params: [String: Any]? = nil) {
        self.description = description
        self.name = name
        self.params = String(describing: params)
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
}

public struct ACMToolChoiceObjectFunctionModel: Codable {
    public var name: String
}
