import Foundation

class Converter{
    
    let btcToUsdRate = 30570.70
    
    func btcToUsd(btc: Double) -> String {
        
        if btc <= 0 {
            return "Please enter a positive number."
        } else{
            return String(format: "%.2f", btc * btcToUsdRate)
        }
    }
}
