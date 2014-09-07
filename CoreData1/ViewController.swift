//
//  ViewController.swift
//  CoreData1
//
//  Created by Guido Grassel on 07/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
                            
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onSaveSelected(sender: AnyObject) {
        
        println("save pressed, password=\(passwordField.text)");
        var appDel : AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        
        println("Got app delegate")

        var context : NSManagedObjectContext = appDel.managedObjectContext!
        
        println("Got object context")

        var newUser : NSManagedObject = NSEntityDescription.insertNewObjectForEntityForName("Users2", inManagedObjectContext: context) as NSManagedObject;
        
        println("created newUser ")

        newUser.setValue ("Test Username", forKey: "username");
        newUser.setValue ("Test Password", forKey: "password");
        
        println("set values of newUser done")

        appDel.saveContext();
        
        println("saving done ")

     //   println(newUser);
        println("User saved ok!")
    }
    
    @IBAction func onLoadSelected(sender: AnyObject) {
        println("load pressed, username=\(usernameField.text)");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

