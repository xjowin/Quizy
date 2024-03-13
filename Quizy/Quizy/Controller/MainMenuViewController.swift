import UIKit

class MainMenuViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func randomQuestBtn(_ sender: Any) {
        
        var menuTag = (sender as! UIButton).tag
        menuShuffleBtn = menuTag
        //menuTag = 4
        
        let new = storyboard?.instantiateViewController(withIdentifier: "QuestionsViewController") as! QuestionsViewController
        
        new.modalPresentationStyle = .fullScreen
        self.present(new, animated: true)
    }
    
    
    @IBAction func chooseTopicBtn(_ sender: Any) {
        let new = storyboard?.instantiateViewController(withIdentifier: "ChoiceViewController") as! ChoiceViewController
        
        new.modalPresentationStyle = .fullScreen
        self.present(new, animated: true)
    }
    
}
