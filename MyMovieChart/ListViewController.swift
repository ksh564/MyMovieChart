import UIKit
class ListViewController: UITableViewController {
    
    var list = [MovieVO]()
    
    override func viewDidLoad() {
        
        var mvo = MovieVO()
        mvo.title = "다크나이트"
        mvo.description = "영웅물에 철학에 음악까지 더해져 예술이 되다"
        mvo.opendate = "2008-09-04"
        mvo.rating = 8.95
        
        self.list.append(mvo)
        
        mvo = MovieVO()
        mvo.title = "호우시절"
        mvo.description = "때를 알고 내리는 좋은 비"
        mvo.opendate = "2010-09-04"
        mvo.rating = 7.31
        
        self.list.append(mvo)
        
        
         mvo = MovieVO()
        mvo.title = "말할 수 없는 비밀"
        mvo.description = "피아노 굿"
        mvo.opendate = "2018-09-04"
        mvo.rating = 6.95
        
        self.list.append(mvo)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.list.count)
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("테이블뷰체크")
        let row = self.list[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
        
        let title = cell.viewWithTag(101) as? UILabel
        
        
        title?.text = row.title
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
    }
}
