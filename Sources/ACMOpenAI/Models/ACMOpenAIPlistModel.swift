//
//  ACMOpenAIPlistModel.swift
//

import ACMNetworking

class ACMOpenAIPlistModel: ACMPlistModel {
    var apiKey: String

    enum CodingKeys: CodingKey {
        case apiKey
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        apiKey = try container.decode(String.self, forKey: .apiKey)
        try super.init(from: decoder)
    }
}
