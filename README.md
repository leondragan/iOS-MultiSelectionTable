# iOS-MultiSelectionTable
Beautifull way of having a multi-selection table on iOS

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/3007012/20760296/8250bade-b717-11e6-89b5-397d6653b5b5.gif"
  width="200px">
</p>

Based on this dribble:
https://dribbble.com/shots/2904577-Multi-Selection-Experiment

#Usage:

Most basic usage:

Considering you are using MultiSelectionTableView in ViewController:

```swift

var multiSelectionDataSource: MultiSelectionDataSource<MyItem>! //MyItems must be Equatable
var multiSelectionTableView: MultiSelectionTableView!

var allItems: [MyItem] = [] //MyItem must be Equatable

override func viewDidLoad() {
     super.viewDidLoad()
        
     multiSelectionTableView = MultiSelectionTableView()
     view.addSubview(multiSelectionTableView)
     
     multiSelectionDataSource = MultiSelectionDataSource(multiSelectionTableView: multiSelectionTableView)
     multiSelectionDataSource.delegate = self
     let cellReuseIdentifier = "MyCell"
     multiSelectionDataSource.register(nib: UINib(nibName: "MyCustomCellNibName", bundle: nil), for: cellReuseIdentifier)
        
     multiSelectionDataSource.allItems = allItems
      
     multiSelectionTableView.dataSource = multiSelectionDataSource
 }

extension ViewController : MultiSelectionTableDelegate {
    
    func paint(_ cell: UITableViewCell, for indexPath: IndexPath, with item: Any) {
        if let cell = cell as? MyCustomCell,
            let myItem = item as? MyItem {
            //configureCellWithMyItem
        }
    }
    
}

  
  
```

## Author

Nuno Gonçalves

<img src="https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-128.png" height="20px"> nunogoncalves

<img src="https://addons.opera.com/media/extensions/85/110785/0.3.2-rev1/icons/icon_64x64.png" height="20px"> numicago@gmail.com

<img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png" height="20px"> @goncalvescmnuno


##Licence

**iOS-MultiSelectionTable** is available under the MIT license. See the [LICENSE](https://github.com/nunogoncalves/iOS-MultiSelectionTable/blob/master/LICENSE.md) file for more info.
