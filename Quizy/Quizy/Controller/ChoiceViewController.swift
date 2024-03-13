import UIKit

class ChoiceViewController: UIViewController {
    
    
    @IBOutlet weak var questionsNumTF: UITextField!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionsNum = 0
    }
    
    
    @IBAction func choiceBtn(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        topicBtn = tag
        
        if let button = sender as? UIButton {
            let customColor = UIColor(red: 0.85, green: 0.87, blue: 0.91, alpha: 1.0)
            button.backgroundColor = customColor
        }
    }
    
    
    @IBAction func startBtn(_ sender: Any) {
        
        if questionsNumTF.text != "" && topicBtn != 0 {
            questionsNum = Int(questionsNumTF.text!)!
            
            let new = storyboard?.instantiateViewController(withIdentifier: "QuestionsViewController") as! QuestionsViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
        
        else {
            let alert = UIAlertController(title: "Oops!", message: "Choose theme and questions!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        topicBtn = 0
        
        let new = storyboard?.instantiateViewController(withIdentifier: "MainMenuViewController") as! MainMenuViewController
        new.modalPresentationStyle = .fullScreen
        self.present(new, animated: true)
    }
    
}
