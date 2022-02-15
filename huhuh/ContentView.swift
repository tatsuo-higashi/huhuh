import SwiftUI

let character = ["ルフィ", "ゾロ", "ナミ", "サンジ"]

struct ContentView: View {
    @State var id = 0
  
    
    var body: some View {
        
        VStack{
            Image(character[id])
                .resizable()
                .aspectRatio(contentMode: .fit)
            // ボタンを4つ並べる
            HStack{
                MakeButton(id: $id, number: 0, buttonColor: Color.red)
                MakeButton(id: $id, number: 1, buttonColor: Color.green)
            }
            HStack{
                MakeButton(id: $id, number: 2, buttonColor: Color.orange)
                MakeButton(id: $id, number: 3, buttonColor: Color.blue)
            }
        }
    
    }
    //これがないとResumeできない
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}



// テンプレート
struct MakeButton: View {
    @Binding var id: Int
    let number: Int
    let buttonColor: Color
    
    var body: some View {
        Button(action: {
            id = number
        }, label: {
            Text(character[number])
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 130, height: 130)
                .background(buttonColor)
                .cornerRadius(20)
        })
        .padding()
        //let label = MakeLabel(text: <#String#>)
        //label.Make(text:"test")

    }
    
}
// テンプレート
