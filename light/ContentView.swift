import SwiftUI

struct ContentView: View {
    @State var btnSize = CGFloat(130)
    @State var lightOn = false
    @State var pulse = false
    
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
            
            ForEach((1...3), id: \.self){ (num : Int) in
                Circle()
                .frame(width: self.btnSize, height: self.btnSize)
                .scaleEffect(self.pulse ? 3 : 0.0)
                .opacity(self.pulse ? 0.1 : 0.4)
                .foregroundColor(self.lightOn ? Color.black : Color.white)
                .animation(
                    Animation
                    .linear(duration: 3)
                    .repeatForever(autoreverses: false)
                        .delay(1.0 * Double(num))
                )
            }
            
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
        .onAppear{
            self.pulse.toggle()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
