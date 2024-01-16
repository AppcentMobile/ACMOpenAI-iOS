//
//  BaseManager.swift
//

import ACMNetworking
import Foundation

/// Base manager for calling endpoints of Open AI
public class BaseManager {
    var network: ACMNetworking!

    /// Init method for creating base networking model
    public required init() {
        network = ACMNetworking()
    }
}

/// Base api manager for calling endpoints of Open AI
public class BaseAPIManager: BaseManager {
    var endpoint: ACMEndpoint!

    /// Init method for creating base endpoint model
    public required init() {
        super.init()

        guard let config = network.plistUtils?
            .config(type: ACMOpenAIPlistModel.self) else { return }

        endpoint = ACMEndpoint()
            .add(authHeader: ACMAuthModel(type: .bearer, value: config.apiKey))

        if let organization = config.organization {
            endpoint = endpoint
                .add(header: ACMHeaderModel(field: ACMOAIConstants.organizationHeader, value: organization))
        }

        endpoint = endpoint.add(header: ACMHeaderModel(field: ACMOAIConstants.contentTypeKey, value: ACMOAIConstants.contentTypeValue))
    }
}
