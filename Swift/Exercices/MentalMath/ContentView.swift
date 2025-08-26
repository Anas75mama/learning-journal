import SwiftUI

struct ContentView: View {
    @StateObject private var gameViewModel = GameViewModel()
    @Namespace private var animation
    @State private var showingScoreHistory = false
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color(hex: "4158D0"),
                                                     Color(hex: "C850C0"),
                                                     Color(hex: "FFCC70")]),
                          startPoint: .topLeading,
                          endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Top bar with score, timer, and buttons
                HStack {
                    Text("Score: \(gameViewModel.score)")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text(String(format: "%.1f", gameViewModel.timeRemaining))
                        .font(.title2)
                        .bold()
                }
                .foregroundColor(.white)
                .padding()
                
                // Control buttons
                HStack {
                    Button(action: {
                        gameViewModel.stopGame()
                    }) {
                        Image(systemName: "stop.circle.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        showingScoreHistory = true
                    }) {
                        Image(systemName: "list.bullet.clipboard")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Question display
                if let currentQuestion = gameViewModel.currentQuestion {
                    Text(currentQuestion.text)
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "question", in: animation)
                        .transition(.scale.combined(with: .opacity))
                }
                
                Spacer()
                
                // Answer options
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 15) {
                    ForEach(gameViewModel.currentQuestion?.options ?? [], id: \.self) { option in
                        AnswerButton(
                            answer: String(option),
                            isSelected: gameViewModel.selectedAnswer == option,
                            action: {
                                withAnimation(.spring()) {
                                    gameViewModel.checkAnswer(option)
                                }
                            }
                        )
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            
            // Game over overlay
            if gameViewModel.isGameOver {
                GameOverView(score: gameViewModel.score,
                           reason: gameViewModel.gameEndReason) {
                    withAnimation {
                        gameViewModel.restartGame()
                    }
                }
            }
        }
        .sheet(isPresented: $showingScoreHistory) {
            ScoreHistoryView(isPresented: $showingScoreHistory,
                           scores: gameViewModel.scoreHistory)
        }
    }
}

struct AnswerButton: View {
    let answer: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(answer)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(isSelected ? Color.white.opacity(0.3) : Color.white.opacity(0.15))
                )
                .foregroundColor(.white)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.spring(), value: configuration.isPressed)
    }
}

struct GameOverView: View {
    let score: Int
    let reason: String
    let restartAction: () -> Void
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.75)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Game Over!")
                    .font(.largeTitle)
                    .bold()
                Text("Final Score: \(score)")
                    .font(.title2)
                Text(reason)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Button("Play Again", action: restartAction)
                    .font(.title3)
                    .bold()
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
            }
            .foregroundColor(.white)
        }
    }
}

struct ScoreHistoryView: View {
    @Binding var isPresented: Bool
    let scores: [Int]
    
    var body: some View {
        List {
            ForEach(scores, id: \.self) { score in
                Text("Score: \(score)")
            }
        }
        .navigationTitle("Score History")
    }
}

// Helper extension for hex colors
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
