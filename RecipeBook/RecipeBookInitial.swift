//
//  REcipeBook_Initial.swift
//  RecipeBook
//
//  Created by Yamir Alvarez on 07/07/20.
//  Copyright © 2020 KYCode. All rights reserved.
//

import Foundation
import UIKit

class RecipeBookInitial: UITableViewController {

    @IBOutlet var SBTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("Table View Controller")
    }
    
    /*
     Sections in Table View
     Return INT -> Number of sections
     */
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        print("Setting Sections")
        return 1;
    }
    
    /*
     Rows in Section
     Return INT -> Number of rows in section with index (section variable)
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("Setting Rows in Section -> \(section)")
        return 5;
    }
    
    /*
     Height For Row at Index (indexPath) in section
     Return Float -> Height for Row
     */
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 300.0
    }

    /*
     Row Configuration to Display
     Return UITableVieCell -> Configured Cell
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = SBTableView.dequeueReusableCell(withIdentifier: "DefaultCellIdentifier", for: indexPath) as UITableViewCell
        return cell
    }
}
