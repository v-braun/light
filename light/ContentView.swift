import SwiftUI

struct ContentView: View {
    @State var btnSize = CGFloat(130)
    @State var lightOn = false
    var body: some View {
        ZStack(alignment: .center){
            Button(action: {
                self.lightOn.toggle()
            }){
                Text(self.lightOn ? "DARKNESS" : "LIGHT")
                    .frame(width: self.btnSize, height: self.btnSize)
                    .foregroundColor(self.lightOn ? Color.white : Color.black)
            }
            .background(self.lightOn ? Color.black : Color.white)
            .cornerRadius(self.btnSize / 2)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
