//
//  FilesCallback.swift
//

/// Callback for holding files endpoint
public struct FilesCallback {}

public extension FilesCallback {
    /// List files typealias
    typealias List = ((ACMOAIFilesResponse.List?) -> Void)?
    /// Upload files typealias
    typealias Upload = ((ACMOAIFilesResponse.Upload?) -> Void)?
    /// Delete files typealias
    typealias Delete = ((ACMOAIFilesResponse.Delete?) -> Void)?
    /// Retrieve files typealias
    typealias Retrieve = ((ACMOAIFilesResponse.Retrieve?) -> Void)?
    /// Retrieve content files typealias
    typealias RetrieveContent = ((String?) -> Void)?
}
