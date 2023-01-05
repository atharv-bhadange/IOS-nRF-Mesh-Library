import Foundation

public struct GolainVendorModelGet: VendorMessage {
    public let opCode: UInt32 = 0x8201
    public static let responseType: StaticMeshMessage.Type = GolainVendorModelStatus.self as! any StaticMeshMessage.Type

    public var parameters: Data? {
        return nil
    }

    public init() {
        // Empty
    }

    public init?(parameters: Data) {
        guard parameters.isEmpty else {
            return nil
        }
    }

}
