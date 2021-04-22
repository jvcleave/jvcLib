import Foundation
import CoreData

@objc public class CoreDataModel : NSObject
{
    
    var persistentContainer: NSPersistentContainer!
    
    public override init() {
        self.persistentContainer = NSPersistentContainer(name: "UnveilDatabase")
        self.persistentContainer.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate.
                // You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                print("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    @objc func saveValue(_ value:Int)
    {
        let managedContext = persistentContainer.newBackgroundContext()
        
        managedContext.performAndWait {
            
            do
            {
                let testEntity = TestEntity.init(context: managedContext);
                testEntity.intValue = Int64(value);
                try managedContext.save()
            }catch
            {
                print("testEntity ERROR: \(error)")
                
            }
        }
    }
    
    @objc func readValueCount() -> Int
    {
        
        var total = 0;
        var values = [TestEntity]();
        
        let managedContext = persistentContainer.newBackgroundContext()
        
        managedContext.performAndWait {
            
            do
            {
                let fetchRequest: NSFetchRequest<TestEntity> = TestEntity.fetchRequest()
                let results = try fetchRequest.execute()
                total = results.count;
            }catch
            {
                print("testEntity ERROR: \(error)")
                
            }
        }
        return total;
    }
    
}


@objc public class UnityPlugin : NSObject {
    
    @objc public static let shared = UnityPlugin()
    @objc var coreDataModel:CoreDataModel!
    
    @objc public func add(a:Int, b:Int ) -> Int {
        
        if(coreDataModel == nil)
        {
            
            coreDataModel = CoreDataModel();
        }
        let result = a+b;
        coreDataModel.saveValue(result);
        return result;
    }
    
    @objc public func retrieveRecordCount() -> Int {
        
        if(coreDataModel == nil)
        {
            coreDataModel = CoreDataModel();
        }
        let total = coreDataModel.readValueCount();
        return total;
    }
    
}

