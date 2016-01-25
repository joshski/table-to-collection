import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        let nib = UINib(nibName: "MyTableViewCell", bundle:nil);
        self.tableView.registerNib(nib, forCellReuseIdentifier: "cell");
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath);
        return cell;
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100;
    }

}

