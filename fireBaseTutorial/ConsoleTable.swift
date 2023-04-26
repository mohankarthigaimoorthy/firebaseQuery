////
////  ConsoleTable.swift
////  fireBaseTutorial
////
////  Created by Mohan K on 15/04/23.
////
//
//import Foundation
//import Firebase
//import FirebaseFirestore
//import UIKit
//
//class ConsoleTableViewController: UITableViewController {
//    let uuid = UUID().uuidString
//
//    var consoleData = [String]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let ref = Firestore.firestore()
//        let qualityref = ref.collection("Migrate")
//        qualityref.whereField("likedby", arrayContains: "2")
//
//            .getDocuments() { (querySnapshot, error) in
//                if let error = error {
//                    print("Error getting documents: \(error)")
//                } else {
//                    for document in querySnapshot!.documents {
//                        print("\(document.documentID) => \(document.data())")
//                    }
//                }
//            }
//        // Set up the table view
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
//        tableView.dataSource = self
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        // Capture the console output and update the table view
//        captureConsoleOutput()
//        tableView.reloadData()
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // Return the number of rows in the table view
//        return consoleData.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // Get a reusable cell for the table view
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        
//        // Set the cell's text label to the console data at the current index
//        cell.textLabel?.text = consoleData[indexPath.row]
//        
//        // Return the configured cell
//        return cell
//    }
//    
//    func captureConsoleOutput() {
//        // Create a pipe to capture the console output
//        let pipe = Pipe()
//        freopen("/dev/null", "a", stderr)
//        dup2(pipe.fileHandleForWriting.fileDescriptor, STDERR_FILENO)
//        
//        // Read the console output from the pipe
//        let file = pipe.fileHandleForReading
//        let data = file.readDataToEndOfFile()
//        let output = String(data: data, encoding: .utf8) ?? ""
//        
//        // Split the output into an array of lines
//        let lines = output.split(separator: "\n").map { String($0) }
//        
//        // Add the lines to the consoleData array
//        consoleData.append(contentsOf: lines)
//    }
//}
