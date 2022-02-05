import Security

 
//Two Number Sum
//O(n^2)time
//O(1) Space
func getNumberTotal(_ array: [Int], total: Int) -> [Int] {
    var getNumberTotal = [Int:Bool]()
    for integers in array {
        let totalAmount = total - integers
        
        if let answer = getNumberTotal[totalAmount], answer {
            return [totalAmount, integers]
        } else {
            getNumberTotal[integers] = true
        }
      }
    return []
    }




 
 //Validate Sequence
// O(n) time
// O(1) Space

class Program {
  static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    var seqIdx = 0
        for value in array {
            if seqIdx == sequence.count {
                break
            }
            if value == sequence[seqIdx] {
                seqIdx +=  1
            }
        }
        return seqIdx == sequence.count
  }
}



//Sorted Square Array
// O(n)Login
//O(n)Space

class Sorted {
  func sortedSquaredArray(_ array: [Int]) -> [Int] {
  var sortedSquares = Array(repeating: 0, count: array.count)
        
        for idx in stride(from: 0, to: array.count, by: 1 ) {
            let value = array[idx]
            sortedSquares[idx] = value * value
        }
        sortedSquares.sort()
        return sortedSquares
  }
}

//Round Robin Algorithm
//O(n) Time ~ n represents the number
//O(k) Space ~ k is the number of teams

class Robin {
    let HOME_TEAM_WON = 1
    
    func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
        var currentBestTeam = ""
        var scores = [String: Int]()
        scores[currentBestTeam] = 0
        for (idx, competiton) in competitions.enumerated() {
            let result = results[idx]
            let (homeTeam, awayTeam) = (competiton[0], competiton[1])
            
            var winningTeam = awayTeam
            if result == HOME_TEAM_WON {
                winningTeam = homeTeam
            }
            updatesScores(winningTeam, 3, &scores)
            
            if scores[winningTeam]! > scores[currentBestTeam]! {
                currentBestTeam = winningTeam
            }
        }
        return currentBestTeam
    }
    func updatesScores(_ team: String, _ points: Int, _ scores: inout [String: Int]) {
        if scores[team] == nil {
            scores[team] = 0
        }
        scores[team] = scores[team]! + points
    }
}

//Non-Constructible Change
