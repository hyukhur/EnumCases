//
//  ViewController.swift
//  EnumCases
//
//  Created by Hyuk Hur on 10/03/2017.
//  Copyright (c) 2017 Hyuk Hur. All rights reserved.
//

import UIKit
import EnumCases

enum Sections: Int, EnumCases {
    case first
    case second
    case third
    var item: [String] {
        switch self {
        case .first:
            return ["title", "title2", "title3"]
        case .second:
            return ["title11", "title12", "title13"]
        case .third:
            return ["title21", "title22", "title23"]
        }
    }
}

class ViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.all.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Sections.all[section].item.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = Sections.all[indexPath.section].item[indexPath.row]
        return cell
    }
}

