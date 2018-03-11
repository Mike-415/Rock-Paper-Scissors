
import Foundation

enum RPSMove {
    case rock, paper, scissors
}

class RPSGame {
    
    private var playerMove:RPSMove?
    
    func setPlayerMove(to move:RPSMove) {
        playerMove = move
    }
    
    private func generateRandomMove() -> RPSMove {
        let randomNumber = Int(arc4random_uniform(3))
        if randomNumber == 0 {
            return RPSMove.rock
        }
        else if randomNumber == 1 {
            return RPSMove.paper
        }
        return RPSMove.scissors
    }
    
    // Emojis: 💎,  📄, ✂️
    
    private func rockResults(computerMove:RPSMove) -> String {
        if computerMove == .paper {
            return "💎 vs 📄\n\nYou lose\n😔"
        } else if computerMove == .scissors {
            return "💎 vs ✂️\n\nYou win!!\n🤩"
        } else {
            return "💎 vs 💎\n\nTied game\n😐"
        }
    }
    
    private func paperResults(computerMove:RPSMove) -> String {
        if computerMove == .scissors {
            return "📄 vs ✂️\n\nYou lose\n😔"
        } else if computerMove == .rock {
            return "📄 vs 💎\n\nYou win!!\n🤩"
        } else {
            return "📄 vs 📄\n\nTied game\n😐"
        }
    }
    
    private func scissorsResults(computerMove:RPSMove) -> String
    {
        if computerMove == .rock {
            return "✂️ vs 💎\n\nYou lose\n😔"
        } else if computerMove == .paper {
            return "✂️ vs 📄\n\nYou win!!\n🤩"
        } else {
            return "✂️ vs ✂️\n\nTied game\n😐"
        }
    }
    
    func gameResult() -> String
    {
        let computerMove = generateRandomMove()
        var results = ""
        switch playerMove {
        case .rock?:
            results += rockResults(computerMove: computerMove)
        case .paper?:
            results += paperResults(computerMove: computerMove)
        case .scissors?:
            results += scissorsResults(computerMove: computerMove)
        default:
            break
        }
        return results
    }
}

var rpsGame = RPSGame()
