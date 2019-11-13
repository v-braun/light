import SwiftUI

struct ContentView: View {
    @State var btnSize = CGFloat(130)
    var body: some View {
        ZStack(alignment: .center){
            Button(action: {
            }){
                Text("Light")
                    .frame(width: self.btnSize, height: self.btnSize)
                    .foregroundColor(Color.white)
            }
            .background(Color.black)
            .cornerRadius(self.btnSize / 2)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
