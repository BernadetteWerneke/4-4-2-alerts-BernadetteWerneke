import SwiftUI

struct ColorPickerView: View {
    @State var selColor: Color = .white
    @State var selOpac: Double = 1.0
    
    var body: some View {
        
        VStack(){
            Text("Color")
            ColorPicker("Pick a color", selection: $selColor)
            
            Text("Opacity")
            HStack{
                Text("Opacity: \(Int(selOpac*100)) %")
                Spacer()
                Slider(value: $selOpac, in: 0.0...1.0)
                    .frame(width: 150)
            }
            
        }
        .frame(width: 400, height: 800)
        .background(selColor)
        .opacity(selOpac)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}

/*
 Beantwortet zudem folgende Fragen im Code-Kommentar:
 1. Weshalb muss unsere Variable backgroundColor den `@State` Property Wrapper haben?
 
 -> um automatisch bei Änderungen den View zu aktualisieren
 
 2. Welcher Wert bietet sich als Initialwert für backgroundColor an? Initialisiere backgroundColor damit.
 -> hängt von der App ab, hier z.B. ein neutrales Weiß
 
 3. Was bedeutet nochmal das `$` vor einer Variable und wo brauchen wir es?
 
 -> beim Binding den Wert einer Variablen zu erhalten, für Aktualisierungen

 */
