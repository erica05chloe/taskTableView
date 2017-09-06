//
//  ViewController.swift
//  sampleTableView
//
//  Created by erica chloe on 2017/09/06.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

//1.プロトコルの設定(DataSource,Delegate)
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var proArray = ["C言語","Swift","PHP","Javascript","Ruby","Java","Python"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //4.TableViewに指示を出すのがViewControllerだと設定する
        //Delegate,Datasource
        
        
        //5.tableViewにcellオブジェクトを追加し、identifierにCellという名前をつける
        
    }

//2.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proArray.count
    }
    
//3.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字を表示するセルの取得(セルの再利用)
        //メモリの節約
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定
        //セルの中のラベル名:textLabel  表示したい文字
        cell.textLabel?.text = "\(proArray[indexPath.row])"
        
        //文字を設定したセルを返す
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

