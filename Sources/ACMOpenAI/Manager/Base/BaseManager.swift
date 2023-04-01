//
//  BaseManager.swift
//

import ACMNetworking
import Foundation

public class BaseManager {
    var network: ACMNetworking!

    public required init() {
        network = ACMNetworking()
    }
}

public class BaseAPIManager: BaseManager {
    var endpoint: ACMEndpoint!

    public required init() {
        super.init()

        guard let config = ACMPlistUtils.shared
            .config(type: ACMOpenAIPlistModel.self) else { return }

        endpoint = ACMEndpoint()
            .add(authHeader: ACMAuthModel(type: .bearer, value: config.apiKey))
    }
}
