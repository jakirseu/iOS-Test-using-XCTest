import XCTest
//@testable import TestExample

final class BTCtoUSDTests: XCTestCase {
    
    var converter : Converter!
    
    override func setUpWithError() throws {
        converter = Converter()
    }
    override func tearDownWithError() throws {
        converter = nil
    }
    
    
    func testBTCtoUSDcoverter() {
        
        
        // Arrange
        let btc = 1.0
        
        // Act
        let usd = converter.btcToUsd(btc: btc)
        let expected = "30570.70"
        
        // Assert
        XCTAssertEqual(usd, expected, "Test faild.")
        
    }
    
    func testBTCtoUSDcoverterForNegetive() {
        let converter = Converter()
        
        // Arrange
        let btc = -5.0
        
        // Act
        let usd = converter.btcToUsd(btc: btc)
        let expected = "Please enter a positive number."
        
        // Assert
        XCTAssertEqual(usd, expected, "Test faild.")
        
    }
    
    
    
}
