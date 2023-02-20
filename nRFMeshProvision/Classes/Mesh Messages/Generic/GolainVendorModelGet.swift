//
//  GolainVendorModelGetArguments.swift
//  nordic_nrf_mesh
//
//  Created by Atharv Bhadange on 16/02/23.
//

import Foundation

public struct GolainVendorModelGet: VendorMessage {
    public var opCode: UInt32 = 0x1111

    public var companyIdentifier: UInt16

    public var parameters: Data?

    public var isSegmented: Bool = false
    public var security: MeshMessageSecurity = .low

    public init(opCode: UInt8, companyIdentifier: UInt16, parameters: Data?) {
        self.opCode = (UInt32(0xC0 | opCode) << 16) | UInt32(companyIdentifier.bigEndian)
        self.parameters = parameters
        self.companyIdentifier = companyIdentifier
    }

    public init?(parameters: Data) {
        // This init will never be used, as it's used for incoming messages.
        return nil
    }

}
