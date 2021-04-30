//
//  EmailAccount.swift
//  DependencyInjetion
//
//  Created by Alley Pereira on 30/04/21.
//

import Foundation

class Gmail: EmailAccount {

    var username: String {
        return "Jhon"
    }

    var domain: String {
        return "gmail.com"
    }

    var lastEmailreceived: Date {
        return Date()
    }


}
