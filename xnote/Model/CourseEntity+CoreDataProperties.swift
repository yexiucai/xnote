//
//  CourseEntity+CoreDataProperties.swift
//  xnote
//
//  Created by yexiucai on 2023/07/01.
//
//

import Foundation
import CoreData


extension CourseEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CourseEntity> {
        return NSFetchRequest<CourseEntity>(entityName: "CourseEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var grade: String?
    @NSManaged public var name: String?
    @NSManaged public var imagename: String?
    @NSManaged public var shortname: String?
    @NSManaged public var level: Int16
    @NSManaged public var others1: String?
    @NSManaged public var memo: String?
    @NSManaged public var cretaetime: Date?
    @NSManaged public var updatetime: Date?

}

extension CourseEntity : Identifiable {

}
