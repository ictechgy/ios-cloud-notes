//
//  MemoListViewController.swift
//  CloudNotes
//
//  Created by JINHONG AN on 2021/09/03.
//

import UIKit

class MemoListViewController: UIViewController {
    private let listTableView = UITableView()
    private let memoList = [Memo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewConstraints()
        registerTableViewCell()
    }
}

//MARK:- Set up TableView
extension MemoListViewController {
    private func setUpTableViewConstraints() {
        view.addSubview(listTableView)
        let safeArea = view.safeAreaLayoutGuide
        
        listTableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        listTableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        listTableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        listTableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
    }
    
    private func registerTableViewCell() {
        listTableView.register(MemoItemTableViewCell.self, forCellReuseIdentifier: MemoItemTableViewCell.identifier)
    }
}

//MARK:- Conform to TableViewDataSource
extension MemoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
