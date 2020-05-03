---
title: Masseinheiten im Web – relative oder absolute Angaben
description: Masseinheiten im Web – relative oder absolute Angaben
---

<style>
.desktop,
.mobile {
  border-style: solid;
  border-width: 1em;
  border-color: black;  
  position: relative;
  background-color: white;
}
.mobile {
  border-radius: 5em;

}

.screen {
  margin: 1em;
  background-color: #fff;
  position: relative;
}

.mobile .screen {
  border-radius: 3em;
}

.screen:before {
  content: "";
  display: block;
  height: 0;
  padding-bottom: 200%;
  width: 100%;
  height: 0;
}

.mobile .screen:before {
  padding-bottom: 200%;
}

.desktop .screen:before {
  padding-bottom: 66.3%;
}

.nudge {
  position: absolute;
  top: 0;
  left: 19%;
  width: 62%;
  margin: 0 auto;
  border-style: solid;
  border-width: 0.5em;
  border-color: black;
  border-top-width: 0;  
  border-radius: 0 0 1.2em 1.2em;
  z-index: 5;
}
.nudge:before {
  content: "";
  display: block;
  height: 0;
  padding-bottom: 12%;

}

.screen-inner {
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  display: flex;
}

.browser {
  display: flex;
  width: 100%;
  height: 100%;
  flex-direction: column;
}

.browser-content {
  flex-grow: 1;
  overflow: hidden;

}

.mobile .browser-content {
  border-radius: 0 0 3em 3em;

}

.browser-header {
  border-bottom-style: solid;
  border-bottom-width: 0.5em;
  border-bottom-color: black;
  background-color: gray;
  margin: 0 -2em;
  margin-top: 6em;
  margin-bottom: 0.25em;
}

.desktop .browser-header {
  margin-top: 3em;
}

.browser-header:before {
  position: absolute;
  content: "";
  display: block;
  height: 1em;
  top: 3.9em;
  width: calc(100% - 2em);
  background-color: black;
  left: 0;
}

.browser-header:after {
  position: absolute;
  content: "";
  display: block;
  height: 1em;
  top: 3.9em;
  width: 1em;
  background-color: black;
  right: 0;
}

.desktop .browser-header:before ,
.desktop .browser-header:after {
  top: 1em;
}

.cols {
  display: flex;
  justify-content: space-between;
}

@media print {.content > .svg-export.cols {
  display: flex;
}}

.col-mobile {
  width: 26%;
  font-size: 0.3rem;
}

.col-desktop {
  width: 72%;
  font-size: 0.3rem;
}



.browser-content {
  display: flex;
}
</style>


## Publisher 2 · 2020
Erscheinungsdatum · 2020

<hr />

## Lizenzen
Dieser Text ist von Stefan Huber unter der Lizenz [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) veröffentlicht. [Publisher](https://publisher.ch/) erhält das Recht die Inhalte ohne Copyleft (Share Alike) zu publizieren.

<hr />

[Bilder für Print (pdf)](./css-units_graphics_print.pdf)

<hr />


# Masseinheiten im Web – relative oder absolute Angaben

<lead>

Grössenangaben in Illustrations- und Print-Produkten sind meist einfach zu verstehen. Sie bilden ein globales und steifes Koordinatensystem ab. Im Web sind wir aber froh, wenn wir verschiedene Masseinheiten haben, die sich an unterschiedliche Gegebenheiten anpassen können.

</lead>


## Masseinheiten
## Masseinheiten
Seit dem ausgehenden 18. Jahrhundert gibt es mit dem Meter ein standardisiertes Längenmass, das die Kommunikation über Dimensionen vereinfacht. Da wichtige Vertreter der frühen digitalen Grafikprogramme in Amerika beheimatet waren, basieren die Basis-Technologien für die Grafische Industrie häufig noch immer auf Zoll-Angaben. So werden die Massangaben bei PDF zum Beispiel intern in Einheiten von <sup>1</sup>&frasl;<sub>72</sub>-Zoll gespeichert. Das ist der sogenannte DTP-Punkt.

Ein wenig anders verhält es sich bei Webseiten in HTML. Als im Dezember 1996 der erste Standard für Cascading Style Sheets (CSS) veröffentlicht wurde, waren in dieser Spezifikation bereits zwei Typen von Masseinheiten definiert: relative und absolute. Für damalige Verhältnisse fast schon visionär kann man da lesen: «Style sheets that use relative units will more easily scale from one medium to another.» (Formatvorlagen, die relative Einheiten verwenden, lassen sich leichter von einem Medium zum anderen skalieren.) Damals war diese Aussage noch vor dem Hintergrund zu verstehen, dass Websites nicht selten ausgedruckt wurden und somit ein Medienwechsel vollzogen wird. Heute ist die gedruckte Website ein zu vernachlässigender Faktor bei der Wahl einer Masseinheit. Vielmehr ist heute Rücksicht auf verschiedene Ausgabegrössen zu nehmen. Diverse Geräteklassen (Mobile, Tablet, Desktop) haben ganz unterschiedliche Anforderungen, und um nicht alle Grössendefinitionen mehrfach zu schreiben, werden viele Dimensionen durch relative Angaben definiert.

## Absolute Angaben
Die wohl am häufigsten verwendete absolute Masseinheit im Webdesign ist die Einheit Pixel, abgekürzt `px`. Wenn also ein farbiges Quadrat mit `200px` Kantenlänge festgelegt wird, weiss man, dass es genau so gross auf dem Bildschirm erscheinen wird, wie ein Bild mit einem Inhalt von 200 × 200 px. Viel mehr kann man dazu aber nicht sagen. Denn die effektive Grösse am Gerät des Betrachters kann nicht vorhergesagt werden. Je nach Bildschirmgrösse und Auflösungsdichte des Geräts kann sie variieren. Nicht einmal die intuitive Annahme, dass ein im CSS definiertes Pixel auch ein Pixel auf dem Bildschirm erzeugt, ist richtig. Vielmehr spielt heute die «device pixel ratio» des Geräts eine entscheidende Rolle – ein Verhältnis zwischen Geräte-Pixel und CSS-Pixel der vom Hersteller definiert wird.



<style>

.example-px {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: stretch;
  align-content: stretch;
  padding-top: 1em;
}
.example-px .dbox {
  position: relative;
  background-color: #0054a2;
  color: white;
  text-align: center;
  font-size: 4em;
  font-weight: 700;
  padding-top: 2em;
}

.example-px .dbox {
  width: 5.3em;
 height: 5.3em;
}

.desktop .example-px .dbox {
  font-size: 6.5em;

}

.example-px .leg {
  transform: translateX(-50%) rotate(-45deg);
  bottom: 1.8em;
  position: absolute;
   left: 50%;
   text-align: center;
  display: inline-block;
}

</style>

<br />

<div class="cols svg-export">

<div class="col-desktop">
  <div class="desktop">
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-px">
                <div class="dbox">
                  <span class="leg">200 × 200 px</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-mobile">
  <div class="mobile">
    <div class="nudge"></div>
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-px">
                <div class="dbox">
                  <span class="leg">200 × 200 px</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

*Dieselbe Grössendefinition in Pixeln erscheint auf verschiedenen Bildschirmen ganz anders.*



## CSS zu Bild
Doch warum erscheinen die Pixel unterschiedlich gross? Die Ausgabe einer Website wird im Browser von einem Renderer gerastert. Je nach Fähigkeit des Screens erzeugt der Renderer ein «Bild» der auszugebenden Elemente. Nachfolgend die Darstellung von einem Bildschirm mit «einem» dunklen Pixel oben links, welches in CSS mit `width: 1px` und `height: 1px` definiert wurde.

<br />

<div class="svg-export">

![](./img/px-renderer.svg)

</div>

1. Rendering für ein normales Gerät
2. Rendering für ein Retina-Gerät mit einem «device pixel ratio» von 2
3. Rendering für ein Retina-Gerät mit einem «device pixel ratio» von 3


## Bild zu Gerät

Je nach Auflösungsdichte und Spezifikation des Geräts werden dann die errechneten Daten auf dem Display ausgegeben. Bei LCD-Displays wird jeder Pixel über ein dreigeteiltes Lichtelement mit den gefilterten Farben Rot, Grün, Blau erzeugt. Bei einem modernen OLED-Display bestehen die Pixel aus einzeln angesteuerten farbigen LEDs.

<br />

<div class="svg-export">

![](./img/px-screen.svg)

</div>


1. Darstellung auf normalem LCD-Display
2. Darstellung auf Retina-LCD-Display mit einem «device pixel ratio» von 2
3. Darstellung auf Retina-OLED-Display mit einem «device pixel ratio» von 3



Natürlich ergibt die Verdoppelung von Pixeln keine bessere Qualität, aber bei Text oder Bildern ist die erweiterte Auflösung hilfreich, um die Schärfe und den Detailreichtum zu erhöhen.

<br />


![](./img/oled_an.png)

*Die iOS Systemschrift (San Francisco Pro Text Regular) bei 17 px auf einem iPhone&nbsp;X. (Foto)*

Man sieht an den Beispielen, dass die Ausgabe sehr stark von der Hardware abhängt. Welche Dimension aber ein Pixel effektiv hat, wurde bei der ganzen Berechnung nicht berücksichtigt. Dies ist von Hersteller zu Hersteller anders, wodurch auch die Abbildungsgrösse uneinheitlich wird.

## Weitere absolute Masseinheiten
Neben der Masseinheit `px` gibt es noch weitere absolute Masseinheiten. So gibt es zum Beispiel `mm` für Millimeter oder `in` für Zoll (engl inch). Diese werden jedoch selten verwendet, da sie ausser bei der Druckausgabe fast keine Rolle spielen. Und auch für den Druck dienen diese Angaben meist nur zur Definition der Druckränder, da die Typografie oder der Seitenaufbau meist relativ formatiert wird.


## Relative Masseinheiten
Eine der wohl am meisten verwendete CSS-Einheit ist das Prozent, `%`. Sie wird vor allem für Breitenangaben genutzt. Die Angabe in Prozent bezieht sich dabei immer auf das umschliessende Objekt. Diese Aufteilung bleibt proportional gleich – unabhängig vom Viewport (Bildschirmausschnitt). Auch lassen sich damit zum Beispiel (mit Tricks) Bilder proportional verkleinern und vergrössern, ohne das Bildverhältnis zu verändern.



<style>

.example-percentage {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: stretch;
  align-content: stretch;
  padding-top: 1em;
}
.example-percentage .left ,
.example-percentage .right {
  position: relative;
  background-color: #0054a2;
  color: white;
  text-align: center;
  font-size: 7em;
  font-weight: 700;
  padding-top: 2em;
}

.example-percentage .left {
 width: 65%
}

.example-percentage .right {
  width: 30%
}

.example-percentage .leg {
  transform: translateX(-50%) rotate(-90deg);
  bottom: 3.5em;
  position: absolute;
   left: 50%;
   text-align: center;
  display: inline-block;
}

</style>

<br />

<div class="cols svg-export">

<div class="col-desktop">
  <div class="desktop">
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-percentage">
                <div class="left">
                  <span class="leg">65 %</span>
                </div>
                <div class="right">
                  <span class="leg">30 %</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-mobile">
  <div class="mobile">
    <div class="nudge"></div>
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-percentage">
                <div class="left">
                  <span class="leg">65 %</span>
                </div>
                <div class="right">
                  <span class="leg">30 %</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>


## EM – relativ zu was schon wieder?
Mit der Einheit `em` wird die Grösse in Relation zur aktuellen Schriftgrösse festgelegt. Dabei kann diese Einheit – wie ebenfalls alle anderen hier besprochenen – nicht nur auf Schrift angewandt werden, sondern auch auf beliebige andere Dimensionen (Grösse, Position, …). Dennoch ist die Bezugsgrösse, worauf sich `em` bezieht die Schriftgrösse. In Gestaltungen ist dies äusserst nützlich, da somit die Angabe in einer Abhängigket zur momentanen Schrftgrösse beschrieben wird und eine skallierung der Schrift auch eine skallierung anderer Elemente ergibt. Da sich die Angabe immer auf das umschliessende Element bezieht, ist die Verschachtelung der Komponenten entscheidend.


<style>

.example-em {
  padding-top: 1em;
  width: 100%;
}

.example-em .box-em1 ,
.example-em .box-em2 {
  font-size: 1.5em;
  padding: 0.5em 1em 1em 1em;
  color: white;
}
.example-em .box-em2 {

  background-color: #006984;
border-color: white;
border: 0.25em solid white;

}
.example-em .box-em1 {
  padding-top:1em;

  background-color: #0054a2;

}
.example-em .box-em2 {
  margin-top:.8em;
}



.example-em .left ,
.example-em .right {
  position: relative;
  background-color: #0054a2;
  color: white;
  text-align: center;
  font-size: 7em;
  font-weight: 700;
  padding-top: 2em;
}

.example-em .left {
 width: 65%
}

.example-em .right {
  width: 30%
}

.example-em .leg {
font-size: 3.6em;
font-weight: 700;

}



.mobile .example-em .leg {
font-size: 2.4em;
font-weight: 700;
}
</style>

<br />

<div class="cols svg-export">

<div class="col-desktop">
  <div class="desktop">
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-em">
                <span class="leg">Font: 15 px</span>
                <div class="box-em1">
                  <span class="leg">Font: 2 em (30 px)</span>
                  <div class="box-em2">
                    <span class="leg">Font: 2 em (60 px)</span>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-mobile">
  <div class="mobile">
    <div class="nudge"></div>
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-em">
                <span class="leg">Font: 10 px</span>
                <div class="box-em1">
                  <span class="leg">2 em</span>
                  <div class="box-em2">
                    <span class="leg">2 em</span>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

*Bei diesem Beispiel wurde die Schriftgrösse der Seite jeweils an den Viewport angepasst. Die untergeordneten Elemente haben alle eine Schriftgrösse von `2em`.*




## REM – relativ zum Obersten
Bei der Einheit `rem` wird die Grösse immer relativ zur Schriftgrösse des obersten Elements im Dokument (HTML-Tag) angegeben. So können Titelhierarchien bequem aufgebaut werden, ohne dabei auf die Verschachtelung zu achten. Bei der Nutzung anderer Viewports muss dann nur noch die Schriftgrösse entsprechend des HTML-Tag angepasst werden. Sowohl `em` wie auch `rem` sind aus der Perspektive von klassischen Masssystemen schwer vorstellbar. Dort ist meist eine möglichst einheitliche Bezugsgrösse gewünscht. Ein Konzept, bei dem eine Dimension sich an einer momentanen Schriftgrösse orientiert scheint fast schon absurd, ist aber – wenn man sich daran gewöhnt hat – sehr hilfreich.


<style>

.example-em .box-rem2 {
  font-size: 1em;
}

</style>

<br />

<div class="cols svg-export">

<div class="col-desktop">
  <div class="desktop">
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-em">
                <span class="leg">Font: 15 px</span>
                <div class="box-em1">
                  <span class="leg">Font: 2 rem (30 px)</span>
                  <div class="box-em2 box-rem2">
                    <span class="leg">Font: 2 rem (30 px)</span>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-mobile">
  <div class="mobile">
    <div class="nudge"></div>
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-em">
                <span class="leg">Font: 10 px</span>
                <div class="box-em1">
                  <span class="leg">2 rem</span>
                  <div class="box-em2 box-rem2">
                    <span class="leg">2 rem</span>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

*Im Gegensatz zur Definition mit `em` kann nun ohne Rücksicht auf Verschachtelung gearbeitet werden.*





## Viewportabhängige Einheiten
Weitere relative Einheiten, die ab und an noch gebraucht werden, sind die viewportabhängigen Einheiten. Sie beziehen sich also auf die Grösse des Viewports, in dem die Inhalte betrachtet werden. Hier eine Übersicht von viewportabhängige Einheiten:

* `vh` – 1 % der Viewporthöhe
* `vw` – 1 % der Viewportbreite
* `vmin` – 1 % der schmaleren Viewportdimension (bei Hochformat also die Breite und bei Breitformat die Höhe)
* `vmax` – 1 % der grösseren Viewportdimension (bei Hochformat also die Höhe und bei Breitformat die Breite)




<style>

.example-vh {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: stretch;
  align-content: stretch;
  padding-top: 1em;
}
.example-vh .dbox {
  position: relative;
  background-color: #0054a2;
  color: white;
  text-align: center;
  font-size: 3.5em;
  font-weight: 700;
  padding-top: 2em;
}

.example-vh .dbox {
  width: 90%;
 height: 50%;
}

.desktop .example-vh .dbox {
  font-size: 6.5em;

}

.example-vh .leg {
  position: absolute;
  transform: translateX(-50%);

  bottom: 1em;
   left: 50%;
   text-align: center;
  display: inline-block;
}

</style>

<br />

<div class="cols svg-export">

<div class="col-desktop">
  <div class="desktop">
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-vh">
                <div class="dbox">
                  <span class="leg">90 vw × 50 vh</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-mobile">
  <div class="mobile">
    <div class="nudge"></div>
    <div class="screen">
      <div class="screen-inner">
        <div class="browser">
            <div class="browser-header"></div>
            <div class="browser-content">
              <div class="example-vh">
                <div class="dbox">
                  <span class="leg">90 vw × 50 vh</span>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

*Dieselbe auf den Viewport bezogene Grössendefinition erscheint auf verschiedenen Bildschirmen jeweils angepasst.*



## Mischung
Nicht eigentliche eine Masseinheit von CSS, aber dennoch ideal zur Massangabe, ist die so genannte `calc()`-Funktion. Mit ihr lassen sich beliebige CSS-Einheiten mischen. Möchte man zum Beispiel ein Objekt auf die Viewportbreite skallieren, aber links und rechts noch einen Rand von je 10 px lassen, so könnte man die Breite wie folgt angeben: `calc(100vw - 20px)`.


## Fazit
Nebst den hier gezeigten Massangaben gibt es noch diverse andere. Jedoch werden diese nur sehr selten gebraucht. Oder wollten Sie schon mal eine Grössenangabe abhängig von der Breite der Ziffer Null tätigen? In CSS hätten Sie mit der Einheit `ch` die Chance dazu…
Das mentale Modell, wie man eine Gestaltung proportioniert, erscheint für eine Website auf den ersten Blick eher komplex. Jedoch erkennt man in der Anwendung schnell, dass man sich viel Arbeit bei der Viewport-Adaption durch den bewussten Einsatz der richtigen Masseinheit am richtigen Ort ersparen kann. Einer tollen Gestaltung von Mobile bis Desktop steht nichts mehr im Weg.



<hr />

### Autor
Stefan Huber unterrichtet an der [Schule für Gestaltung Zürich](https://sfgz.ch/) im Lehrgang HF Interaction Design und ist als Web-Entwickler tätig.


<hr />
