import UIKit

class QuestionsViewController: UIViewController {
    
    
    @IBOutlet weak var questionsLbl: UILabel!
    @IBOutlet weak var firtsAnswer: UILabel!
    @IBOutlet weak var secondAnswer: UILabel!
    @IBOutlet weak var thirdAnswer: UILabel!
    @IBOutlet weak var fourthAnswer: UILabel!
    @IBOutlet weak var numOfQ: UILabel!
    @IBOutlet weak var numOfCorrAnsw: UILabel!
    
    
    var questionsEmptyDict : [ Int : String] = [:]
    var randomDict : [ Int : String ] = [:]
    var questionsCounter = 1
    var correctAnswer = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctAnswersCounter = 0
        
        // Fill in new array in given range
        var counter = 0
        
        if topicBtn == 1 {
            randomDict.removeAll()
            for (k,v) in filmsQ {
                randomDict[k] = v
            }
            
            for (k,v) in randomDict {
                questionsEmptyDict[k] = v
                counter += 1
                
                if counter == Int(questionsNum) {
                    break
                }
            }
        }
        if topicBtn == 2 {
            randomDict.removeAll()
            for (k,v) in animalsQ {
                randomDict[k] = v
            }
            for (k,v) in randomDict {
                questionsEmptyDict[k] = v
                counter += 1
                
                if counter == Int(questionsNum) {
                    break
                }
            }
        }
        if topicBtn == 3 {
            randomDict.removeAll()
            for (k,v) in swiftQ {
                randomDict[k] = v
            }
            for (k,v) in randomDict {
                questionsEmptyDict[k] = v
                counter += 1
                
                if counter == Int(questionsNum) {
                    break
                }
            }
        }
        if menuShuffleBtn == 4 {
            //var randomQCounter = 0
            randomDict.removeAll()
            questionsNum = 10
            for i in 1...10 {
                randomDict[i] = filmsQ[i]
            }
            for i in 11...20 {
                randomDict[i] = animalsQ[i - 10]
            }
            for i in 21...30 {
                randomDict[i] = swiftQ[i - 20]
            }
            
            for (k,v) in randomDict {
                questionsEmptyDict[k] = v
                counter += 1
                
                if counter == questionsNum {
                    break
                }
            }
        }
        QAs()
    }
    
    
    // Display QAs
    func QAs() {
        // For "Choose topics"
        if topicBtn == 1 {
            for (k,v) in questionsEmptyDict {
                if k == 1 {
                    questionsLbl.text = v

                    correctAnswer = "Forrest Gump"
                    filmsA1.shuffle()
                    firtsAnswer.text = filmsA1[0]
                    secondAnswer.text = filmsA1[1]
                    thirdAnswer.text = filmsA1[2]
                    fourthAnswer.text = filmsA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 2 {
                    questionsLbl.text = v
                    
                    correctAnswer = "Back to the Future"
                    filmsA2.shuffle()
                    firtsAnswer.text = filmsA2[0]
                    secondAnswer.text = filmsA2[1]
                    thirdAnswer.text = filmsA2[2]
                    fourthAnswer.text = filmsA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 3 {
                    questionsLbl.text = v

                    correctAnswer = "Clownfish"
                    filmsA3.shuffle()
                    firtsAnswer.text = filmsA3[0]
                    secondAnswer.text = filmsA3[1]
                    thirdAnswer.text = filmsA3[2]
                    fourthAnswer.text = filmsA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 4 {
                    questionsLbl.text = v

                    correctAnswer = "Leonardo DiCaprio"
                    filmsA4.shuffle()
                    firtsAnswer.text = filmsA4[0]
                    secondAnswer.text = filmsA4[1]
                    thirdAnswer.text = filmsA4[2]
                    fourthAnswer.text = filmsA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 5 {
                    questionsLbl.text = v

                    correctAnswer = "Harry, Hermione, and Ron"
                    filmsA5.shuffle()
                    firtsAnswer.text = filmsA5[0]
                    secondAnswer.text = filmsA5[1]
                    thirdAnswer.text = filmsA5[2]
                    fourthAnswer.text = filmsA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 6 {
                    questionsLbl.text = v

                    correctAnswer = "Casablanca"
                    filmsA6.shuffle()
                    firtsAnswer.text = filmsA6[0]
                    secondAnswer.text = filmsA6[1]
                    thirdAnswer.text = filmsA6[2]
                    fourthAnswer.text = filmsA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 7 {
                    questionsLbl.text = v

                    correctAnswer = "Simba"
                    filmsA7.shuffle()
                    firtsAnswer.text = filmsA7[0]
                    secondAnswer.text = filmsA7[1]
                    thirdAnswer.text = filmsA7[2]
                    fourthAnswer.text = filmsA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 8 {
                    questionsLbl.text = v

                    correctAnswer = "The Avengers"
                    filmsA8.shuffle()
                    firtsAnswer.text = filmsA8[0]
                    secondAnswer.text = filmsA8[1]
                    thirdAnswer.text = filmsA8[2]
                    fourthAnswer.text = filmsA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 9 {
                    questionsLbl.text = v

                    correctAnswer = "Quentin Tarantino"
                    filmsA9.shuffle()
                    firtsAnswer.text = filmsA9[0]
                    secondAnswer.text = filmsA9[1]
                    thirdAnswer.text = filmsA9[2]
                    fourthAnswer.text = filmsA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 10 {
                    questionsLbl.text = v

                    correctAnswer = "Dinosaurs"
                    filmsA10.shuffle()
                    firtsAnswer.text = filmsA10[0]
                    secondAnswer.text = filmsA10[1]
                    thirdAnswer.text = filmsA10[2]
                    fourthAnswer.text = filmsA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
            }
        }
        
        if topicBtn == 2 {
            for (k, v) in questionsEmptyDict {
                if k == 1 {
                    questionsLbl.text = v

                    correctAnswer = "Bat"
                    animalsA1.shuffle()
                    firtsAnswer.text = animalsA1[0]
                    secondAnswer.text = animalsA1[1]
                    thirdAnswer.text = animalsA1[2]
                    fourthAnswer.text = animalsA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 2 {
                    questionsLbl.text = v

                    correctAnswer = "Tiger"
                    animalsA2.shuffle()
                    firtsAnswer.text = animalsA2[0]
                    secondAnswer.text = animalsA2[1]
                    thirdAnswer.text = animalsA2[2]
                    fourthAnswer.text = animalsA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 3 {
                    questionsLbl.text = v

                    correctAnswer = "Parrot"
                    animalsA3.shuffle()
                    firtsAnswer.text = animalsA3[0]
                    secondAnswer.text = animalsA3[1]
                    thirdAnswer.text = animalsA3[2]
                    fourthAnswer.text = animalsA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 4 {
                    questionsLbl.text = v

                    correctAnswer = "Blue Whale"
                    animalsA4.shuffle()
                    firtsAnswer.text = animalsA4[0]
                    secondAnswer.text = animalsA4[1]
                    thirdAnswer.text = animalsA4[2]
                    fourthAnswer.text = animalsA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 5 {
                    questionsLbl.text = v

                    correctAnswer = "Kangaroo"
                    animalsA5.shuffle()
                    firtsAnswer.text = animalsA5[0]
                    secondAnswer.text = animalsA5[1]
                    thirdAnswer.text = animalsA5[2]
                    fourthAnswer.text = animalsA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 6 {
                    questionsLbl.text = v

                    correctAnswer = "Cheetah"
                    animalsA6.shuffle()
                    firtsAnswer.text = animalsA6[0]
                    secondAnswer.text = animalsA6[1]
                    thirdAnswer.text = animalsA6[2]
                    fourthAnswer.text = animalsA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 7 {
                    questionsLbl.text = v

                    correctAnswer = "Chameleon"
                    animalsA7.shuffle()
                    firtsAnswer.text = animalsA7[0]
                    secondAnswer.text = animalsA7[1]
                    thirdAnswer.text = animalsA7[2]
                    fourthAnswer.text = animalsA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 8 {
                    questionsLbl.text = v

                    correctAnswer = "Bat"
                    animalsA8.shuffle()
                    firtsAnswer.text = animalsA8[0]
                    secondAnswer.text = animalsA8[1]
                    thirdAnswer.text = animalsA8[2]
                    fourthAnswer.text = animalsA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 9 {
                    questionsLbl.text = v

                    correctAnswer = "Dolphin"
                    animalsA9.shuffle()
                    firtsAnswer.text = animalsA9[0]
                    secondAnswer.text = animalsA9[1]
                    thirdAnswer.text = animalsA9[2]
                    fourthAnswer.text = animalsA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 10 {
                    questionsLbl.text = v

                    correctAnswer = "Capybara"
                    animalsA10.shuffle()
                    firtsAnswer.text = animalsA10[0]
                    secondAnswer.text = animalsA10[1]
                    thirdAnswer.text = animalsA10[2]
                    fourthAnswer.text = animalsA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                
            }
        }
        
        if topicBtn == 3 {
            for (k, v) in questionsEmptyDict {
                if k == 1 {
                    questionsLbl.text = v

                    correctAnswer = "A programming language"
                    swiftA1.shuffle()
                    firtsAnswer.text = swiftA1[0]
                    secondAnswer.text = swiftA1[1]
                    thirdAnswer.text = swiftA1[2]
                    fourthAnswer.text = swiftA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 2 {
                    questionsLbl.text = v

                    correctAnswer = "Apple"
                    swiftA2.shuffle()
                    firtsAnswer.text = swiftA2[0]
                    secondAnswer.text = swiftA2[1]
                    thirdAnswer.text = swiftA2[2]
                    fourthAnswer.text = swiftA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 3 {
                    questionsLbl.text = v

                    correctAnswer = "Variable"
                    swiftA3.shuffle()
                    firtsAnswer.text = swiftA3[0]
                    secondAnswer.text = swiftA3[1]
                    thirdAnswer.text = swiftA3[2]
                    fourthAnswer.text = swiftA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 4 {
                    questionsLbl.text = v

                    correctAnswer = "To use \"nullable\" or \"optional\""
                    swiftA4.shuffle()
                    firtsAnswer.text = swiftA4[0]
                    secondAnswer.text = swiftA4[1]
                    thirdAnswer.text = swiftA4[2]
                    fourthAnswer.text = swiftA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 5 {
                    questionsLbl.text = v

                    correctAnswer = "// Comment"
                    swiftA5.shuffle()
                    firtsAnswer.text = swiftA5[0]
                    secondAnswer.text = swiftA5[1]
                    thirdAnswer.text = swiftA5[2]
                    fourthAnswer.text = swiftA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 6 {
                    questionsLbl.text = v

                    correctAnswer = "let"
                    swiftA6.shuffle()
                    firtsAnswer.text = swiftA6[0]
                    secondAnswer.text = swiftA6[1]
                    thirdAnswer.text = swiftA6[2]
                    fourthAnswer.text = swiftA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 7 {
                    questionsLbl.text = v

                    correctAnswer = "Unwrap optionals safely"
                    swiftA7.shuffle()
                    firtsAnswer.text = swiftA7[0]
                    secondAnswer.text = swiftA7[1]
                    thirdAnswer.text = swiftA7[2]
                    fourthAnswer.text = swiftA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 8 {
                    questionsLbl.text = v

                    correctAnswer = "Int"
                    swiftA8.shuffle()
                    firtsAnswer.text = swiftA8[0]
                    secondAnswer.text = swiftA8[1]
                    thirdAnswer.text = swiftA8[2]
                    fourthAnswer.text = swiftA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 9 {
                    questionsLbl.text = v

                    correctAnswer = "To initialize a new object"
                    swiftA9.shuffle()
                    firtsAnswer.text = swiftA9[0]
                    secondAnswer.text = swiftA9[1]
                    thirdAnswer.text = swiftA9[2]
                    fourthAnswer.text = swiftA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 10 {
                    questionsLbl.text = v

                    correctAnswer = "Model-View-Controller"
                    swiftA10.shuffle()
                    firtsAnswer.text = swiftA10[0]
                    secondAnswer.text = swiftA10[1]
                    thirdAnswer.text = swiftA10[2]
                    fourthAnswer.text = swiftA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
            }
        }
        
        // For "Shuffle the questions"
        if menuShuffleBtn == 4 {
            for (k,v) in questionsEmptyDict {
                
                // Films
                if k == 1 {
                    questionsLbl.text = v

                    correctAnswer = "Forrest Gump"
                    filmsA1.shuffle()
                    firtsAnswer.text = filmsA1[0]
                    secondAnswer.text = filmsA1[1]
                    thirdAnswer.text = filmsA1[2]
                    fourthAnswer.text = filmsA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 2 {
                    questionsLbl.text = v
                    
                    correctAnswer = "Back to the Future"
                    filmsA2.shuffle()
                    firtsAnswer.text = filmsA2[0]
                    secondAnswer.text = filmsA2[1]
                    thirdAnswer.text = filmsA2[2]
                    fourthAnswer.text = filmsA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 3 {
                    questionsLbl.text = v

                    correctAnswer = "Clownfish"
                    filmsA3.shuffle()
                    firtsAnswer.text = filmsA3[0]
                    secondAnswer.text = filmsA3[1]
                    thirdAnswer.text = filmsA3[2]
                    fourthAnswer.text = filmsA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 4 {
                    questionsLbl.text = v

                    correctAnswer = "Leonardo DiCaprio"
                    filmsA4.shuffle()
                    firtsAnswer.text = filmsA4[0]
                    secondAnswer.text = filmsA4[1]
                    thirdAnswer.text = filmsA4[2]
                    fourthAnswer.text = filmsA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 5 {
                    questionsLbl.text = v

                    correctAnswer = "Harry, Hermione, and Ron"
                    filmsA5.shuffle()
                    firtsAnswer.text = filmsA5[0]
                    secondAnswer.text = filmsA5[1]
                    thirdAnswer.text = filmsA5[2]
                    fourthAnswer.text = filmsA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 6 {
                    questionsLbl.text = v

                    correctAnswer = "Casablanca"
                    filmsA6.shuffle()
                    firtsAnswer.text = filmsA6[0]
                    secondAnswer.text = filmsA6[1]
                    thirdAnswer.text = filmsA6[2]
                    fourthAnswer.text = filmsA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 7 {
                    questionsLbl.text = v

                    correctAnswer = "Simba"
                    filmsA7.shuffle()
                    firtsAnswer.text = filmsA7[0]
                    secondAnswer.text = filmsA7[1]
                    thirdAnswer.text = filmsA7[2]
                    fourthAnswer.text = filmsA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 8 {
                    questionsLbl.text = v

                    correctAnswer = "The Avengers"
                    filmsA8.shuffle()
                    firtsAnswer.text = filmsA8[0]
                    secondAnswer.text = filmsA8[1]
                    thirdAnswer.text = filmsA8[2]
                    fourthAnswer.text = filmsA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 9 {
                    questionsLbl.text = v

                    correctAnswer = "Quentin Tarantino"
                    filmsA9.shuffle()
                    firtsAnswer.text = filmsA9[0]
                    secondAnswer.text = filmsA9[1]
                    thirdAnswer.text = filmsA9[2]
                    fourthAnswer.text = filmsA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 10 {
                    questionsLbl.text = v

                    correctAnswer = "Dinosaurs"
                    filmsA10.shuffle()
                    firtsAnswer.text = filmsA10[0]
                    secondAnswer.text = filmsA10[1]
                    thirdAnswer.text = filmsA10[2]
                    fourthAnswer.text = filmsA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                
                // Animals
                if k == 11 {
                    questionsLbl.text = v

                    correctAnswer = "Bat"
                    animalsA1.shuffle()
                    firtsAnswer.text = animalsA1[0]
                    secondAnswer.text = animalsA1[1]
                    thirdAnswer.text = animalsA1[2]
                    fourthAnswer.text = animalsA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 12 {
                    questionsLbl.text = v

                    correctAnswer = "Tiger"
                    animalsA2.shuffle()
                    firtsAnswer.text = animalsA2[0]
                    secondAnswer.text = animalsA2[1]
                    thirdAnswer.text = animalsA2[2]
                    fourthAnswer.text = animalsA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 13 {
                    questionsLbl.text = v

                    correctAnswer = "Parrot"
                    animalsA3.shuffle()
                    firtsAnswer.text = animalsA3[0]
                    secondAnswer.text = animalsA3[1]
                    thirdAnswer.text = animalsA3[2]
                    fourthAnswer.text = animalsA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 14 {
                    questionsLbl.text = v

                    correctAnswer = "Blue Whale"
                    animalsA4.shuffle()
                    firtsAnswer.text = animalsA4[0]
                    secondAnswer.text = animalsA4[1]
                    thirdAnswer.text = animalsA4[2]
                    fourthAnswer.text = animalsA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 15 {
                    questionsLbl.text = v

                    correctAnswer = "Kangaroo"
                    animalsA5.shuffle()
                    firtsAnswer.text = animalsA5[0]
                    secondAnswer.text = animalsA5[1]
                    thirdAnswer.text = animalsA5[2]
                    fourthAnswer.text = animalsA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 16 {
                    questionsLbl.text = v

                    correctAnswer = "Cheetah"
                    animalsA6.shuffle()
                    firtsAnswer.text = animalsA6[0]
                    secondAnswer.text = animalsA6[1]
                    thirdAnswer.text = animalsA6[2]
                    fourthAnswer.text = animalsA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 17 {
                    questionsLbl.text = v

                    correctAnswer = "Chameleon"
                    animalsA7.shuffle()
                    firtsAnswer.text = animalsA7[0]
                    secondAnswer.text = animalsA7[1]
                    thirdAnswer.text = animalsA7[2]
                    fourthAnswer.text = animalsA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 18 {
                    questionsLbl.text = v

                    correctAnswer = "Bat"
                    animalsA8.shuffle()
                    firtsAnswer.text = animalsA8[0]
                    secondAnswer.text = animalsA8[1]
                    thirdAnswer.text = animalsA8[2]
                    fourthAnswer.text = animalsA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 19 {
                    questionsLbl.text = v

                    correctAnswer = "Dolphin"
                    animalsA9.shuffle()
                    firtsAnswer.text = animalsA9[0]
                    secondAnswer.text = animalsA9[1]
                    thirdAnswer.text = animalsA9[2]
                    fourthAnswer.text = animalsA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 20 {
                    questionsLbl.text = v

                    correctAnswer = "Capybara"
                    animalsA10.shuffle()
                    firtsAnswer.text = animalsA10[0]
                    secondAnswer.text = animalsA10[1]
                    thirdAnswer.text = animalsA10[2]
                    fourthAnswer.text = animalsA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                
                // Swift
                if k == 21 {
                    questionsLbl.text = v

                    correctAnswer = "A programming language"
                    swiftA1.shuffle()
                    firtsAnswer.text = swiftA1[0]
                    secondAnswer.text = swiftA1[1]
                    thirdAnswer.text = swiftA1[2]
                    fourthAnswer.text = swiftA1[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 22 {
                    questionsLbl.text = v

                    correctAnswer = "Apple"
                    swiftA2.shuffle()
                    firtsAnswer.text = swiftA2[0]
                    secondAnswer.text = swiftA2[1]
                    thirdAnswer.text = swiftA2[2]
                    fourthAnswer.text = swiftA2[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 23 {
                    questionsLbl.text = v

                    correctAnswer = "Variable"
                    swiftA3.shuffle()
                    firtsAnswer.text = swiftA3[0]
                    secondAnswer.text = swiftA3[1]
                    thirdAnswer.text = swiftA3[2]
                    fourthAnswer.text = swiftA3[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 24 {
                    questionsLbl.text = v

                    correctAnswer = "To use \"nullable\" or \"optional\""
                    swiftA4.shuffle()
                    firtsAnswer.text = swiftA4[0]
                    secondAnswer.text = swiftA4[1]
                    thirdAnswer.text = swiftA4[2]
                    fourthAnswer.text = swiftA4[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 25 {
                    questionsLbl.text = v

                    correctAnswer = "// Comment"
                    swiftA5.shuffle()
                    firtsAnswer.text = swiftA5[0]
                    secondAnswer.text = swiftA5[1]
                    thirdAnswer.text = swiftA5[2]
                    fourthAnswer.text = swiftA5[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 26 {
                    questionsLbl.text = v

                    correctAnswer = "let"
                    swiftA6.shuffle()
                    firtsAnswer.text = swiftA6[0]
                    secondAnswer.text = swiftA6[1]
                    thirdAnswer.text = swiftA6[2]
                    fourthAnswer.text = swiftA6[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 27 {
                    questionsLbl.text = v

                    correctAnswer = "Unwrap optionals safely"
                    swiftA7.shuffle()
                    firtsAnswer.text = swiftA7[0]
                    secondAnswer.text = swiftA7[1]
                    thirdAnswer.text = swiftA7[2]
                    fourthAnswer.text = swiftA7[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 28 {
                    questionsLbl.text = v

                    correctAnswer = "Int"
                    swiftA8.shuffle()
                    firtsAnswer.text = swiftA8[0]
                    secondAnswer.text = swiftA8[1]
                    thirdAnswer.text = swiftA8[2]
                    fourthAnswer.text = swiftA8[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 29 {
                    questionsLbl.text = v

                    correctAnswer = "To initialize a new object"
                    swiftA9.shuffle()
                    firtsAnswer.text = swiftA9[0]
                    secondAnswer.text = swiftA9[1]
                    thirdAnswer.text = swiftA9[2]
                    fourthAnswer.text = swiftA9[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
                if k == 30 {
                    questionsLbl.text = v

                    correctAnswer = "Model-View-Controller"
                    swiftA10.shuffle()
                    firtsAnswer.text = swiftA10[0]
                    secondAnswer.text = swiftA10[1]
                    thirdAnswer.text = swiftA10[2]
                    fourthAnswer.text = swiftA10[3]
                    questionsEmptyDict.removeValue(forKey: k)
                    break
                }
            }
        }
    }
    
    
    @IBAction func optionOneBtn(_ sender: Any) {
        questionsCounter += 1
        
        if firtsAnswer.text == correctAnswer {
            correctAnswersCounter += 1
            numOfCorrAnsw.text = "Correct Answers: " + String(correctAnswersCounter)
        }
        
        if questionsCounter > questionsNum {
            let new = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
        
        numOfQ.text = "Question: " + String(questionsCounter)
        QAs()
    }
    
    
    @IBAction func optionTwoBtn(_ sender: Any) {
        questionsCounter += 1
        
        if secondAnswer.text == correctAnswer {
            correctAnswersCounter += 1
            numOfCorrAnsw.text = "Correct Answers: " + String(correctAnswersCounter)
        }
        
        if questionsCounter > questionsNum {
            let new = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }

        numOfQ.text = "Question: " + String(questionsCounter)
        QAs()
    }
    
    
    @IBAction func optionThreeBtn(_ sender: Any) {
        questionsCounter += 1
        
        if thirdAnswer.text == correctAnswer {
            correctAnswersCounter += 1
            numOfCorrAnsw.text = "Correct Answers: " + String(correctAnswersCounter)
        }
        
        if questionsCounter > questionsNum {
            let new = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }

        numOfQ.text = "Question: " + String(questionsCounter)
        QAs()
    }
    
    
    @IBAction func optionFourBtn(_ sender: Any) {
        questionsCounter += 1
        
        if fourthAnswer.text == correctAnswer {
            correctAnswersCounter += 1
            numOfCorrAnsw.text = "Correct Answers: " + String(correctAnswersCounter)
        }
        
        if questionsCounter > questionsNum {
            let new = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
        
        numOfQ.text = "Question: " + String(questionsCounter)
        QAs()
    }

}
