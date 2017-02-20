//
//  ViewController.swift
//  ios-coredata-nspersistentstorecoordinator-demo
//
//  Created by k_motoyama on 2017/02/18.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context : NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    var persistentStoreCoordinator: NSPersistentStoreCoordinator = NSPersistentStoreCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        let url = Bundle.main.url(forResource: "ios_coredata_nspersistentstorecoordinator_demo", withExtension: "momd")
        
        let demoModel = NSManagedObjectModel(contentsOf: url!)!
        do{
            persistentStoreCoordinator = NSPersistentStoreCoordinator.init(managedObjectModel: demoModel)
            try persistentStoreCoordinator.addPersistentStore(ofType: NSInMemoryStoreType, configurationName: nil, at: nil, options: nil)
        }catch let error as NSError {
            fatalError("\(error)")
        }
 
    }




}

