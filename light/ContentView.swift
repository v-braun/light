import SwiftUI

struct ContentView: View {
    @State var btnSize = CGFloat(130)
    @State var lightOn = false
    var body: some View {
        ZStack(alignment: .center){
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Color.white
                .edgesIgnoringSafeArea(.all)
                .frame(width: 1000, height: 1000)
                .cornerRadius(500)
                .scaleEffect(self.lightOn ? 1.0 : 0.0)
                .animation(
                    .linear(duration: 0.5)
                )
            
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
