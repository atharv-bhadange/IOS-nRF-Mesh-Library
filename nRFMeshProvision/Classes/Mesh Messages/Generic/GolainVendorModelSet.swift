import Foundation

public struct GolainVendorModelSet: VendorMessage, TransactionMessage {

    public var tid: UInt8!

    public var opCode: UInt32 = 0x0002

    public var parameters: Data? {
        return message 
    }
    public let message: Data

    public init?(parameters: Data) {
        message = parameters
    }
    public init(opCode: UInt32, message: Data) {
        self.opCode = (UInt32(0xC0 | opCode) << 16)
        self.message = message
    }


}
