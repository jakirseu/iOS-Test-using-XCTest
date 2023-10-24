import SwiftUI

struct ContentView: View {
    
    @State var input = ""
    @State var result = "0.00"
    let converter = Converter()
    
    var body: some View {
        VStack {
            TextField("BTC", text: $input).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button("Convert") {
                result = converter.btcToUsd(btc: Double(input) ?? 0.0 )
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
               
            Divider()
            
            Text(result).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).accessibilityIdentifier("result")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
