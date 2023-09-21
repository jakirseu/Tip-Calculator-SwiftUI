import SwiftUI

struct ContentView: View {
    @State private var tip: Double = 5
    @State var input = ""
    
    
    var body: some View {
        
        Text("Tip Calculator")
            .font(.title)
            .multilineTextAlignment(.center)
        
        VStack(alignment: .trailing, spacing: 10) {
            
            TextField("Bill", text: $input)
                .padding()
                .keyboardType(.decimalPad)
                .font(.largeTitle)
            
            Slider(value: $tip, in: 0...100)
            
            var total = Double(input) ?? 0.0
            
            Text("Tip: \(tip, specifier: "%.1f")% = $\(tip/100 * total, specifier: "%.1f")")
            
            Text("Total bill: \((tip/100 * total) + total, specifier: "%.1f")" )
                .font(.largeTitle)
                .padding()
            
        }
        .frame(maxWidth: 350, maxHeight: 200)
        .padding()
        Spacer()
        
        
    }
    
    
    
}

#Preview {
    ContentView()
}
