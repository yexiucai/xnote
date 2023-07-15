//
//  CourseController.swift
//  xnote
//
//  Created by yexiucai on 2023/07/01.
//

import Foundation
import CoreData



struct CourseController {
    static let shared = CourseController()

    let persistentContainer: NSPersistentContainer
    
    var shouldInsertTestData: Bool = false

    private init() {
        persistentContainer = NSPersistentContainer(name: "CourseModel")

        persistentContainer.loadPersistentStores { (_, error) in
            if let error = error as NSError? {
                fatalError("Failed to load persistent stores: \(error), \(error.userInfo)")
            }
        }
    }

    // 插入实体
    func insertEntity(entityName: String, attributes: [String: Any]) {
        let context = persistentContainer.viewContext
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: entityName, into: context)

        for (key, value) in attributes {
            newEntity.setValue(value, forKey: key)
        }

        do {
            try context.save()
        } catch {
            print("Failed to insert entity: \(error)")
        }
    }

    // 查询实体
    func fetchEntities(entityName: String) -> [NSManagedObject] {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)

        do {
            let entities = try context.fetch(fetchRequest)
            return entities
        } catch {
            print("Failed to fetch entities: \(error)")
            return []
        }
    }

    // 更新实体
    func updateEntity(entityName: String, predicate: NSPredicate?, attributes: [String: Any]) {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        fetchRequest.predicate = predicate

        do {
            let entities = try context.fetch(fetchRequest) as? [NSManagedObject]

            for entity in entities ?? [] {
                for (key, value) in attributes {
                    entity.setValue(value, forKey: key)
                }
            }

            try context.save()
        } catch {
            print("Failed to update entity: \(error)")
        }
    }

    // 删除实体
    func deleteEntity(entityName: String, predicate: NSPredicate?) {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        fetchRequest.predicate = predicate

        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print("Failed to delete entity: \(error)")
        }
    }
    
    
    // 添加测试数据
    func addTestData() {
        
        guard shouldInsertTestData else {
            return
        }
        
        insertEntity(entityName: "ClassEntity", attributes: ["grade": "1", "name": "一年生"])
        insertEntity(entityName: "ClassEntity", attributes: ["grade": "2", "name": "二年生"])
        insertEntity(entityName: "CourseEntity", attributes: ["grade": "3", "name": "三年生"])
        insertEntity(entityName: "CourseEntity", attributes: ["grade": "4", "name": "四年生"])
    }
    
    
}

