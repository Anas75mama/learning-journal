import Foundation
import Combine

class GameViewModel: ObservableObject {
    @Published var currentQuestion: Question?
    @Published var score: Int = 0
    @Published var timeRemaining: Double = 30.0
    @Published var isGameOver: Bool = false
    @Published var selectedAnswer: Int?
    @Published var scoreHistory: [ScoreRecord] = []
    @Published var gameEndReason: String = ""
    
    private var timer: Timer?
    private var difficultyLevel: Int = 1
    private var consecutiveCorrectAnswers: Int = 0
    
    init() {
        loadScoreHistory()
        startGame()
    }
    
    private func loadScoreHistory() {
        if let data = UserDefaults.standard.data(forKey: "scoreHistory"),
           let decoded = try? JSONDecoder().decode([ScoreRecord].self, from: data) {
            scoreHistory = decoded
        }
    }
    
    private func saveScoreHistory() {
        if let encoded = try? JSONEncoder().encode(scoreHistory) {
            UserDefaults.standard.set(encoded, forKey: "scoreHistory")
        }
    }
    
    func startGame() {
        score = 0
        timeRemaining = 30.0
        difficultyLevel = 1
        consecutiveCorrectAnswers = 0
        isGameOver = false
        gameEndReason = ""
        generateNewQuestion()
        startTimer()
    }
    
    func restartGame() {
        startGame()
    }
    
    func stopGame() {
        gameEndReason = "User stopped the game"
        endGame()
    }
    
    private func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            if self.timeRemaining > 0 {
                self.timeRemaining -= 0.1
            } else {
                self.gameEndReason = "Time's up!"
                self.endGame()
            }
        }
    }
    
    private func endGame() {
        timer?.invalidate()
        timer = nil
        isGameOver = true
        
        // Save score to history
        let record = ScoreRecord(score: score, gameEndReason: gameEndReason)
        scoreHistory.append(record)
        saveScoreHistory()
    }
    
    func checkAnswer(_ answer: Int) {
        guard let currentQuestion = currentQuestion else { return }
        selectedAnswer = answer
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
            guard let self = self else { return }
            
            if answer == currentQuestion.correctAnswer {
                self.score += max(1, self.difficultyLevel)
                self.consecutiveCorrectAnswers += 1
                self.timeRemaining = min(30.0, self.timeRemaining + 2.0)
                
                if self.consecutiveCorrectAnswers >= 3 {
                    self.difficultyLevel += 1
                    self.consecutiveCorrectAnswers = 0
                }
            } else {
                self.consecutiveCorrectAnswers = 0
                self.timeRemaining = max(0, self.timeRemaining - 3.0)
                if self.difficultyLevel > 1 {
                    self.difficultyLevel -= 1
                }
            }
            
            self.selectedAnswer = nil
            self.generateNewQuestion()
        }
    }
    
    private func generateNewQuestion() {
        let operations: [String] = ["+", "-", "×"]
        let operation = operations.randomElement()!
        
        var num1: Int
        var num2: Int
        var correctAnswer: Int
        
        switch operation {
        case "+":
            num1 = Int.random(in: difficultyLevel...(10 * difficultyLevel))
            num2 = Int.random(in: difficultyLevel...(10 * difficultyLevel))
            correctAnswer = num1 + num2
        case "-":
            num1 = Int.random(in: difficultyLevel...(10 * difficultyLevel))
            num2 = Int.random(in: difficultyLevel...num1)
            correctAnswer = num1 - num2
        case "×":
            num1 = Int.random(in: 2...(2 + difficultyLevel))
            num2 = Int.random(in: 2...(2 + difficultyLevel))
            correctAnswer = num1 * num2
        default:
            return
        }
        
        let questionText = "\(num1) \(operation) \(num2)"
        
        var options = [correctAnswer]
        while options.count < 4 {
            let offset = Int.random(in: -5...5)
            let wrongAnswer = correctAnswer + offset
            if !options.contains(wrongAnswer) && wrongAnswer >= 0 {
                options.append(wrongAnswer)
            }
        }
        options.shuffle()
        
        currentQuestion = Question(text: questionText, options: options, correctAnswer: correctAnswer)
    }
}

struct Question {
    let text: String
    let options: [Int]
    let correctAnswer: Int
}

struct ScoreRecord: Codable {
    let score: Int
    let gameEndReason: String
}
