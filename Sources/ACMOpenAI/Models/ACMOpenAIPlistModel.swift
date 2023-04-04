//
//  ACMOpenAIPlistModel.swift
//

import ACMNetworking

class ACMOpenAIPlistModel: ACMPlistModel {
    var apiKey: String
    var organization: String?

    enum CodingKeys: CodingKey {
        case apiKey
        case organization
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        apiKey = try container.decode(String.self, forKey: .apiKey)
        organization = try container.decodeIfPresent(String.self, forKey: .organization)
        try super.init(from: decoder)
    }
}
