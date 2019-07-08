//
//  Profile.swift
//  Service
//
//  Created by Hannes Van den Berghe on 27/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public struct Profile: Codable {
    
    public var firstName: String?
    public var lastName: String?
    public var jobTitle: String?
    public var photoUrl: String?
    public var birthDate: String?
    public var hireDate: String?
    
    // TODO: Expand
    
//    "id": "40702",
//    "displayName": "Tinne Hoet",
//    "firstName": "Tinne",
//    "lastName": "Hoet",
//    "preferredName": null,
//    "gender": null,
//    "jobTitle": "Office Receptionist",
//    "workPhone": null,
//    "mobilePhone": null,
//    "workEmail": "tinne.hoet@icapps.com",
//    "department": "Administration",
//    "facebook": null,
//    "linkedIn": null,
//    "twitterFeed": null,
//    "workPhoneExtension": null,
//    "photoUploaded": false,
//    "photoUrl": "https://icapps.bamboohr.co.uk/images/photo_placeholder.gif",
//    "canUploadPhoto": 0,
//    "birthDate": "0000-00-00",
//    "hireDate": "2019-02-25"
    
    public init(firstname: String?) {
        self.firstName = firstname
    }

}
