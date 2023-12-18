//
//  ACMChatMessageModel.swift
//
//
//  Created by burak on 18.12.2023.
//

import UIKit

public final class ACMChatMessageModel: Codable {
    public let role: String?
    public let content: String?

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        role = try container.decodeIfPresent(String.self, forKey: .role)
        content = try container.decodeIfPresent(String.self, forKey: .content)
    }

    public init(role: String?, content: String?) {
        self.role = role
        self.content = content
    }
}
