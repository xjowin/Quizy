import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var themeLbl: UILabel!
    @IBOutlet weak var numOfQuestionsLbl: UILabel!
    @IBOutlet weak var correctAnswersLbl: UILabel!
    @IBOutlet weak var IncorrectAnswersLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numOfQuestionsLbl.text = String(questionsNum)
        correctAnswersLbl.text = String(correctAnswersCounter)
        IncorrectAnswersLbl.text = String(questionsNum - correctAnswersCounter)
        
        if menuShuffleBtn == 4 {
            themeLbl.text = "All topics"
        }
        else if topicBtn == 1 {
            themeLbl.text = "Films"
        }
        else if topicBtn == 2 {
            themeLbl.text = "Animals"
        }
        else if topicBtn == 3 {
            themeLbl.text = "Swift"
        }
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        topicBtn = 0
        menuShuffleBtn = 0
        let new = storyboard?.instantiateViewController(withIdentifier: "MainMenuViewController") as! MainMenuViewController
        
        new.modalPresentationStyle = .fullScreen
        self.present(new, animated: true)
    }
    
}
