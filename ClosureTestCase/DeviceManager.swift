//
//  DeviceManager.swift
//  ClosureTestCase
//
//  Created by Mirant Patel on 05/07/23.
//

import Foundation
import NetworkExtension

class DeviceManager {
    func getWifiList(completion: @escaping([String]) -> ()) {
        NEHotspotConfigurationManager.shared.getConfiguredSSIDs { ssids in
            completion(ssids)
        }
    }
}
