//
//  StripeTerminalParser.swift
//  stripe_terminal
//
//  Created by Aawaz Gyawali on 08/08/2022.
//

import Foundation
import StripeTerminal

class StripeTerminalParser {
    
    static func getDiscoveryConfiguration(discoveryMethod: String, isSimulated: Bool, locationId: String) -> DiscoveryConfiguration? {
        switch(discoveryMethod){
        case "bluetooth":
            return try BluetoothScanDiscoveryConfigurationBuilder().setSimulated(isSimulated).build()
        case "internet":
            return try InternetDiscoveryConfigurationBuilder().setLocationId(locationId).build()
        case "localMobile":
            return try LocalMobileDiscoveryConfigurationBuilder().build()
        default:
            return nil;
        }
    }
}
