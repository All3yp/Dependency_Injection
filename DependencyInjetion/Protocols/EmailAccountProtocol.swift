//
//  EmailAccountProtocol.swift
//  DependencyInjetion
//
//  Created by Alley Pereira on 30/04/21.
//

import Foundation

protocol EmailAccount {
    var username: String { get }
    var domain: String { get }
    var lastEmailreceived: Date { get }
}
