//
//  ClassEntity+CoreDataProperties.swift
//  xnote
//
//  Created by yexiucai on 2023/07/01.
//
//

import Foundation
import CoreData


extension ClassEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ClassEntity> {
        return NSFetchRequest<ClassEntity>(entityName: "ClassEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var grade: String?
    @NSManaged public var memo: String?
    @NSManaged public var createtime: Date?
    @NSManaged public var updatetime: Date?
    @NSManaged public var other1: String?

}

extension ClassEntity : Identifiable {

}
