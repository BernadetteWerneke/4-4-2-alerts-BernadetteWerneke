#  Aufgabe Swift Tag 4.1: Wiederholung: Property Wrappers & UI Elemente

Willkommen zurück! 🚀
Wir hoffen, ihr hattet schöne Ferien.
Zum Einstieg nach der Woche Pause gibt es heute ein paar Wiederholungsaufgaben:

# Aufgabe 1: State Variable und ColorPicker
Ihr habt vor den Ferien eine SettingsView mit einem ColorPicker erstellt.
Wir wollen diesmal dafür sorgen, dass der ColorPicker tatsächlich funktioniert.
Wenn eine Farbe im ColorPicker ausgewählt wird, soll der gesamte Hintergrund der ColorPickerView sich mit dieser Farbe einfärben.
Erstellt eine passende View.
Wir brauchen hier eine State Variable, die wir dann dem ColorPicker als Binding-Variable übergeben können.

Beantwortet zudem folgende Fragen im Code-Kommentar:
1. Weshalb muss unsere Variable backgroundColor den `@State` Property Wrapper haben?

2. Welcher Wert bietet sich als Initialwert für backgroundColor an? Initialisiere backgroundColor damit.

3. Was bedeutet nochmal das `$` vor einer Variable und wo brauchen wir es?

![Screenshot 2023-03-09 at 17 20 14](https://user-images.githubusercontent.com/113111255/224105576-fb6f1cf8-37ef-4583-a79d-88d8e50f72bf.png)


# Aufgabe 2: ColorPicker mit eigenem Slider
Wir wollen einen Slider unter dem ColorPicker hinzufügen, der die Transparenz (Opacity) der Hintergrundfarbe live beim Sliden von 100% (komplett farbig) zu 0% (komplett transparent) ändert.

![Screenshot 2023-03-09 at 17 18 41](https://user-images.githubusercontent.com/113111255/224105213-5e173e62-7df2-4ab1-883f-43b6792d0fe8.png)

Dazu brauchen wir einen Slider unter dem ColorPicker.
Hinweis: mit `backgroundColor.opacity` (--hier den Wert der Opacity rein, ist maximal 1.0--) lässt die Opacity sich verändern.

Herausforderungen sind hier:
- rausfinden, wie man die Opacity mit einer State-Variable live verändern kann
- Die Opacity auf dem Screen neben dem Slider in % angeben. Wenn sie auf 1.0 steht, soll neben dem Slider 100% stehen, bei 0.5 auf 50%, etc.

# Aufgabe 3: Ampel und Picker
Wir wollen am Beispiel einer Ampel nochmal den Sinn von `@State` wiederholen.
Baut in AmpelView ein `VStack` mit einem Picker, der uns drei Auswahlmöglichkeiten (rot, gelb/orange, grün) gibt. Je nachdem, welche angewählt wird, soll unter dem Picker ein passendes Sf Symbol und darunter ein passender Text, beides in der entsprechenden Ampelfarbe, angezeigt werden.

![Screenshot 2023-03-09 at 17 21 23](https://user-images.githubusercontent.com/113111255/224105825-4c763047-e774-4931-b3c1-bfcb1cfb243f.png)


Hier könnte sich ein `enum` AmpelColor anbieten, das je nach case die richtige Farbe vom Typ Color zurückgibt...

# Aufgabe 4: @StateObject am Beispiel Student

`@StateObject` wird statt `@State` verwendet, wenn wir mit komplexeren Datentypen zu tun haben.
Das Attribut, das bearbeitet werden soll, muss dafür auf `@Published` gesetzt werden.
Es wurde für euch bereits eine Klasse "Student" erstellt. Studenten haben name, age und feedback.
Das Feedback wollen wir bearbeiten, nämlich in einem TextField eingeben.

Schreibt eine passende SwiftUI-View namens "StudentView," die eine Variable Student (von welchem Datentyp mit welchem PropertyWrapper?) hat und dessen Name, Alter und ein TextField für Feedback anzeigt. Das, was ins TextField eingegeben werden soll, soll per Binding als Feedback für diesen Student gespeichert werden und nochmals unter dem TextField angezeigt werden (nur zum Zeigen, dass ihr Binding versteht ;) ) 

<img width="250" alt="Screenshot 2023-03-09 at 17 23 49" src="https://user-images.githubusercontent.com/113111255/224106489-c9f0a1ec-3f1d-4f30-8412-ae12bf8fe26b.png">


# Aufgabe 5: Alert
Nachdem erfolgreich Feedback für unseren Studenten eingegeben wurde, soll ein Alert auftauchen.
Dazu brauchen wir einen "Feedback absenden" Button. Beim Klick darauf soll ein Alert mit der Feedback-Nachricht und der Meldung, dass unser Feedback an den Studenten geschickt wurde, erscheinen. Der Alert braucht natürlich auch einen "Schließen"-Button.

<img width="263" alt="Screenshot 2023-03-09 at 17 25 14" src="https://user-images.githubusercontent.com/113111255/224106809-77c469d6-f96b-44ee-bd2f-467358740eae.png">


# Aufgabe 6: Sheet
Gleiche Aufgabe wie Nr. 5, nur dass ein Sheet verwendet werden soll.
Sorgt dafür, dass das Sheet wieder verschwindet (entweder über einen Button oder knobelig: nach Ablauf von 3 Sekunden).

<img width="265" alt="Screenshot 2023-03-09 at 17 27 04" src="https://user-images.githubusercontent.com/113111255/224107212-6ec1f2d3-05a8-4a70-a743-18574ca7ac4a.png">

Wenn ihr die Funktionalität fertig habt, könnt ihr euch am Design austoben.
Viel Spaß und Erfolg 💥





