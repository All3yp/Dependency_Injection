//
//  Yahoo.swift
//  DependencyInjetion
//
//  Created by Alley Pereira on 30/04/21.
//

import Foundation

class Yahoo: EmailAccount {

    var username: String {
        return "Jhon"
    }

    var domain: String {
        return "yahoo.com"
    }

    var lastEmailreceived: Date {
        return Date()
    }
}
