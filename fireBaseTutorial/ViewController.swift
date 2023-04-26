//
//  ViewController.swift
//  fireBaseTutorial
//
//  Created by Mohan K on 07/04/23.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController,UIContextMenuInteractionDelegate {
 
    let uuid = UUID().uuidString
    let ref = Firestore.firestore()

    //Mark: -  Do any additional setup after loading the view.

    @IBOutlet weak var readDatabase: UITextView!
    @IBOutlet weak var dociD: UITextView!
    @IBOutlet weak var Iconbar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let interaction = UIContextMenuInteraction(delegate:  self)
        Iconbar.addInteraction(interaction)
        Iconbar.isUserInteractionEnabled = true
        Iconbar.layer.cornerRadius = 10
        
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        let date = dateFormatter.date(from: "time")
       
        let data:[String: Any] = ["notCurrentDate":date]

        let db = Firestore.firestore()
        let newDocRef = db.collection("Migrate").document()
                newDocRef.setData([
                    "time" : Date()
        ])
        db.collection("Migrate").document("document").setData(data) { err in
          if let err = err {
              print("Error writing document: \(err)")
          } else {
              print("Document successfully written!")
          }
        }
        
        
        
        // MARK : GETTING A DOCUMENT ID
        //        let newDocument = db.collection("Migrate").document()
        //        newDocument.setData(["year": 2023, "type": "Pineapple", "label": "Passed quality check.", "id": newDocument.documentID])
        
        // MARK: adding a document with specific document id - // replacing the data for the specific document id
        
        //        db.collection("Migrate").document("pinnoida2023").setData(["target": "target"])
        //        db.collection("Migrate").document("pinnoida2023").setData(["hello work": "target", "newKey":"newValue"], merge: true)
        //
        
        
        // MARK : Updating the specific document
        
        
        
        //MARK : Deleting a document
        
        //        db.collection("Migrate").document("O2lAfU8BIcYUdwG7XSA0").updateData(["type": FieldValue.delete()])
        
        
        //        db.collection("Migrate").document("O2lAfU8BIcYUdwG7XSA0").getDocument { (document, error) in
        //
        //            if error == nil {
        //
        //                if document !=nil && document!.exists {
        //
        //                    let documentData = document!.data()
        //                }
        //
        //            }
        //        }
        
//        db.collection("Migrate").getDocuments{(DataSnapshot, error) in
//            if error == nil && DataSnapshot != nil {
//                for document in DataSnapshot!.documents {
//                    let documentData = document.data()
//                }
//
//            }
//        }
//        db.collection("Migrate").whereField("year", isEqualTo: 2023).getDocuments{ (DataSnapshot, error) in
//        }
        
//        let newDocRef = ref.collection("Migrate").getDocuments(){ (querySnapshot, err) in
//            if let err = err {
//                print("Error getting documents: \(err)")
//            } else {
//                for document in querySnapshot!.documents {
//                    print("\(document.documentID) => \(document.data())")
//                }
//            }
//        }
//
//        ref.collection("Migrate").whereField("title", isEqualTo: "mohan")
//            .addSnapshotListener { querySnapshot, error in
//                guard let documents = querySnapshot?.documents else {
//                    print("Error fetching documents: \(error!)")
//                    return
//                }
//
//                if let error = error {
//                    print("Error getting documents: \(error)")
//                } else {
//                    for document in querySnapshot!.documents {
//                        print("\(document.documentID) => \(document.data())")
//                    }
//                }
//            }
        
//        ref.collection("Migrate").document().collection("comments").getDocuments();
//
////
//                let newDocRef = ref.collection("Maggie").document()
//        newDocRef.setData([
//            "title": "kirmoda",
//            "url": "",
//            "ref": ref.collection("Users").document(self.uuid),
//            "time": Date(),
//            "likes": 0,
//            "likedby": FieldValue.arrayUnion([])
//        ])
//        newDocRef.collection("comments").document().setData([
//            "title": "testing",
//            "topic ": "House WARMING",
//            "name": "chotta bhai"
//        ])
        
//        Firestore.firestore().collection("Migrate/comments/history").addDocument(historyData)
        
        
        
        
      // MARK : GET THE Document Whole id in collection and subcollection in Document
        
//        ref.collection("Migrate").getDocuments { (snapshot, error) in
//            for document in snapshot!.documents {
//     ref.collection("Migrate").document(document.documentID).collection("comments")
//                  .whereField("title", isEqualTo: "dinesh").getDocuments(completion: { (snapshot2, error2) in
//                    if let error = error {
//                        print("Error getting documents: \(error)")
//                    } else {
//                        if snapshot2!.isEmpty {
//                            print("No Data found from \(document.documentID)")
//                        } else {
//                            for document2 in snapshot2!.documents {
//                                print("\(document2.documentID) -> \(document2.data())")
//                            }
//                        }
//                    }
//                })
//            }
//        }

        // Mark : - query of subcollection used in document in firebase
        
//        let db = Firestore.firestore()
//        let booksCollection = db.collectionGroup("comments")
//
//        booksCollection
////                    .whereField("year", isEqualTo: 2023)
////                    .whereField("age", isGreaterThanOrEqualTo: 18)
//                    .whereField("age", isGreaterThan: 20)
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
//        ref.collection("Migrate").whereField("title", "Kirmoda", isEqualTo: "title", "dinesh")
        //                                print("\(document2.documentID) -> \(document2.data())")
        
        
// Mark : - queery used to find in document
//        ref.collection("Migrate")
   
                
                //            .whereField("age", isGreaterThan: 20)
//                    .whereField("year", isEqualTo: 2023)
                //            .whereField("age", isGreaterThanOrEqualTo: 18)
                //            .whereField("age", isLessThan: 20)
                //            .whereField("age", isLessThanOrEqualTo: 25)
                //            .whereField("year", isNotEqualTo: 2020)
//                    .getDocuments() { (querySnapshot, error) in
//                        if let error = error {
//                            print("Error getting documents: \(error)")
//
//
//                        } else {
//                            for document in querySnapshot!.documents {
//                                print("\(document.documentID) => \(document.data())")
//                                //                        print("document not found\(document.documentID) => \(document.data())")
//                            }
//                        }
//                    }
        
        
        
        
        // Mark : - queery used to find in document in sub collection
        

//        ref.collection("Migrate").getDocuments { (snapshot, error) in
//            for document in snapshot!.documents {
//                ref.collection("Migrate").document(document.documentID).collection("comments")
//
//
                //            .whereField("age", isGreaterThan: 20)
//                    .whereField("year", isEqualTo: 2023)
                //            .whereField("age", isGreaterThanOrEqualTo: 18)
                //            .whereField("age", isLessThan: 20)
                //            .whereField("age", isLessThanOrEqualTo: 25)
                //            .whereField("year", isNotEqualTo: 2020)
//                    .getDocuments() { (querySnapshot, error) in
//                        if let error = error {
//                            print("Error getting documents: \(error)")
//
//
//                        } else {
//                            for document in querySnapshot!.documents {
//                                print("\(document.documentID) => \(document.data())")
//                                //                        print("document not found\(document.documentID) => \(document.data())")
//                            }
//                        }
//                    }
//            }
//        }
//
        
        
        
        
        
//  let qualityref = ref.collection("Migrate")
//
//        qualityref.whereField("city", notIn: ["howra"])
//      qualityref.whereField("city", in: ["howra"])
//        qualityref.whereField("likedby", arrayContains: "2")

//              qualityref.whereField("likedby", arrayContainsAny: ["1"])

//        .getDocuments() { (querySnapshot, error) in
//            if let error = error {
//                print("Error getting documents: \(error)")
//            } else {
//                for document in querySnapshot!.documents {
//                    print("\(document.documentID) => \(document.data())")
//                }
//            }
//        }
        
//        ref.collection("Migrate").document("3XYj5dx7RS456PkMjlyY").collection("comments").document("8rc6vLM1Dj5Zi7CdeJzm").updateData([
//            "thanjai" : "city",
//            "pincode " : "613007"
//        ])
//
        
//        ref.collection("Migrate").document("3XYj5dx7RS456PkMjlyY").collection("comments").document("8rc6vLM1Dj5Zi7CdeJzm").updateData(["title": FieldValue.delete()])
//                ref.collection("comments").document("hjD1swpd4unz62E9zgga").getDocument { (document, error) in
//
//        if error == nil {
//
//                      if document !=nil && document!.exists {
//
//                          let documentData = document!.data()
//                      }
//
//                  }
//              }
//        func deletePost(id: String){
//           {
//                (err) in
//                if err != nil{
//                    print(err!.localizedDescription)
//                    return
//                }
//            }
//        }
        
        
        
        // create a  document using through this format
        
//        db.collection("wine")
//            .addDocument(data: ["year":2017,
//                                "type":"pinot-noir",
//                                "label":"Peller Estates"])
        
        // Getting the document ID create a new one  or generate
//        let newDocument = db.collection("wine").document()
//        newDocument.setData(["year":2017,
//                             "type":"pinot-noir",
//                             "label":"Peller Estates",
//                             "id":newDocument.documentID])

//
        // Adding a document with a specific document ID / Or Replacing the data for a specific document ID
//        db.collection("wine")
//            .document("pinot-noir-2017")
//            .setData(["hello":"new data",
//                      "newKey":"newValue"], merge: true)
        
        // Updating a specific document ID
//        db.collection("wine")
//            .document("stoneypath-cab-2017")
//            .setData(["year":2017,
//                      "type":"cab",
//                      "label":"Stoney Path"], merge:true)
        
        // Detecting errors (Use the completion handler)
//        db.collection("wine")
//            .addDocument(data: ["test":"test"]) { (error) in
//
//                if error != nil {
//                // There was an error
//            }
//            else {
//                // error is nil.. so operation completed successfully
//            }
//        }
            
        // Delete a document
        // See: https://firebase.google.com/docs/firestore/manage-data/delete-data
//        db.collection("wine")
//            .document("stoneypath-cab-2017").delete()

        // Delete a field
//        db.collection("wine")
//            .document("stoneypath-cab-2017")
//            .updateData(["type":FieldValue.delete()])

        // Detect for errors, use completion parameter
//        db.collection("wine")
//            .document("pinot-noir-2017")
//            .delete { (error) in
//
//            if error != nil {
//                // We have an error
//            }
//            else {
//                // Delete was sucessful
//            }
//        }
        
        // Read a specific document
        // See: https://firebase.google.com/docs/firestore/query-data/get-data
//        db.collection("wine")
//            .document("pinot-noir-2017")
//            .getDocument { (document, error) in
////
//            // Check for error
//            if error == nil {
//
//                // Check that this document exists
//                if document != nil && document!.exists {
//
//                    let documentData = document!.data()
//
//                }
//
//            }
//
//        }
        // Getting all documents from a collection
//        db.collection("wine")
//            .getDocuments { (snapshot, error) in
//
//            if error == nil && snapshot != nil {
//
//                for document in snapshot!.documents {
//
//                    let documentData = document.data()
//
//                }
//
//            }
//        }
//
        // Getting a subset of documents
//        db.collection("wine").whereField("year", isEqualTo: 2017).getDocuments { (snapshot, error) in
//
//        }
        
        // Generate a sub colletion Document
        
//        let chatRef = db.collection("chat_event").add({
//
//        })
//        let chatRef = db
//         .collection("chat_event").document("chat1")
//         .collection("messages").document("message1");
//
//        let chatRef = db
//         .collection("chat_event").document(chatEventId)
//         .collection("messages").document("message1");
    }
    
    
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { _ -> UIMenu? in
            
            return self.createContextMenu()
            
        }
    }
    
    
           func createContextMenu() -> UIMenu {
               
               
               let createAction = UIAction(title: "createDocument", image: UIImage(systemName: "paperplane.fill")) { _ in
                   
                   // MARK: create a new firestore database  in collection type
                   self.ref.collection("Migrant").addDocument(data: ["year": 2023, "type": "Pineapple", "label": "Passed quality check."])
                   self.ref.collection("Migrant").getDocuments { (snapshot, error) in
                           for document in snapshot!.documents {
                               if let error = error {
                                   print("Error getting documents: \(error)")
                                  
                               } else {
                                   for document in snapshot!.documents {
                                       self.dociD.text.append(contentsOf:"\(document.documentID) ")
                                       self.readDatabase.text.append(contentsOf:"\(document.data())")
                                       
                                   }
                               }
                           }
                       }
               }
               let createsubcollection = UIAction(title: "createsubcollection", image: UIImage(systemName: "paperplane.fill")) { _ in
                   print("Copy")
               }

               
               let collectionAction = UIAction(title: "collectionAction", image: UIImage(systemName: "paperplane.fill")) { _ in
                   print("Save to Photos")
               }
               
        let subcollectionAction = UIAction(title: "subcollection", image: UIImage(systemName: "paperplane.fill")) { _ in
            
            self.ref.collection("Migrate").getDocuments { (snapshot, error) in
                for document in snapshot!.documents {
                    self.ref.collection("Migrate").document(document.documentID).collection("comments")
    
    
//                                    .whereField("age", isGreaterThan: 20)
                        .whereField("year", isEqualTo: 2023)
//                                    .whereField("age", isGreaterThanOrEqualTo: 18)
//                                    .whereField("age", isLessThan: 20)
//                                    .whereField("age", isLessThanOrEqualTo: 25)
//                                    .whereField("year", isNotEqualTo: 2020)
                        .getDocuments() { (querySnapshot, error) in
                            if let error = error {
                                print("Error getting documents: \(error)")
    
    
                            } else {
                                for document in querySnapshot!.documents {
                                    self.dociD.text.append(contentsOf:"\(document.documentID) ")
                                    self.readDatabase.text.append(contentsOf:"\(document.data())")
//                                        print("\(document.documentID) => \(document.data())")
                                    //                        print("document not found\(document.documentID) => \(document.data())")
                                }
                            }
                        }
                }
            }

        }
        
       
    
               let  lessthan = UIAction(title: "lessthan", image: UIImage(systemName: "paperplane.fill")) { _ in

               }

               let greaterthan = UIAction(title: "greaterthan", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let equalto = UIAction(title: "equalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let lessthanequalto = UIAction(title: "lessthanequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let greaterthanequalto = UIAction(title: "greaterthanequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

              
               let  notequalto = UIAction(title: "notequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
              
               let  arraycontains = UIAction(title: "arraycontains", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let    arraycontainsany = UIAction(title: "arraycontainsany", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let         inAction = UIAction(title: "inAction", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let    notin  = UIAction(title: "notin", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
              
               
               let  sublessthan = UIAction(title: "sublessthan", image: UIImage(systemName: "paperplane.fill")) { _ in

               }

               let subgreaterthan = UIAction(title: "subgreaterthan", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let subequalto = UIAction(title: "subequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let sublessthanequalto = UIAction(title: "sublessthanequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

               let subgreaterthanequalto = UIAction(title: "subgreaterthanequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

                      }

              
               let  subnotequalto = UIAction(title: "subnotequalto", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
              
               let  subarraycontains = UIAction(title: "subarraycontains", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let    subarraycontainsany = UIAction(title: "subarraycontainsany", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let         subinAction = UIAction(title: "subinAction", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
               let    subnotin  = UIAction(title: "subnotin", image: UIImage(systemName: "paperplane.fill")) { _ in

               }
            
               return UIMenu(title: "", children: [createAction,
                                                   createsubcollection,
                                                   collectionAction,
                                                   subcollectionAction,
                                                   lessthan,
                                                   greaterthan,
                                                   equalto,
                                                   lessthanequalto,
                                                   greaterthanequalto,
                                                   notequalto,
                                                   arraycontains,
                                                   arraycontainsany,
                                                   inAction,
                                                   notin,
                                                   sublessthan,
                                                   subgreaterthan,
                                                   subequalto,
                                                   sublessthanequalto,
                                                   subgreaterthanequalto,
                                                   subnotequalto,
                                                   subarraycontains,
                                                   subarraycontainsany,
                                                   subinAction,
                                                   subnotin])
    }
           
    @IBAction func dataRetriveBtn(_ sender: Any) {
        
               
        
        
        dociD.text = ""
        readDatabase.text = ""
        
        
    }
    
    
    @IBAction func meuIconBtn(_ sender: Any) {
        
    }

}
