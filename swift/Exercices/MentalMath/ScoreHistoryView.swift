import SwiftUI

struct ScoreRecord: Identifiable, Codable {
    let id: UUID
    let score: Int
    let date: Date
    let gameEndReason: String
    
    init(score: Int, gameEndReason: String) {
        self.id = UUID()
        self.score = score
        self.date = Date()
        self.gameEndReason = gameEndReason
    }
}

struct ScoreHistoryView: View {
    @Binding var isPresented: Bool
    let scores: [ScoreRecord]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(scores.sorted(by: { $0.date > $1.date })) { record in
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Score: \(record.score)")
                                .font(.headline)
                            Spacer()
                            Text(record.date.formatted(date: .abbreviated, time: .shortened))
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Text("End Reason: \(record.gameEndReason)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Score History")
            .toolbar {
                Button("Close") {
                    isPresented = false
                }
            }
        }
    }
}
