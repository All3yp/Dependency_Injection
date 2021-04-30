//
//  Outlook.swift
//  DependencyInjetion
//
//  Created by Alley Pereira on 30/04/21.
//

import Foundation

class Outlook: EmailAccount {

    var username: String {
        return "Jhon"
    }

    var domain: String {
        return "outlook.com"
    }

    var lastEmailreceived: Date {
        return Date()
    }
}
