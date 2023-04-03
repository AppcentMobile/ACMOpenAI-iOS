//
//  ImagesCallback.swift
//

/// Callback for holding images endpoint
public struct ImagesCallback {}

public extension ImagesCallback {
    /// Create images typealias
    typealias Create = ((ACMOAIImagesResponse.Create?) -> Void)?
    /// Create edit images typealias
    typealias CreateEdit = ((ACMOAIImagesResponse.CreateEdit?) -> Void)?
    /// Create variation images typealias
    typealias CreateVariation = ((ACMOAIImagesResponse.CreateVariation?) -> Void)?
}
