## Publisher 3-19 
Erscheinungsdatum: 24.6.2019

Titelvorschlag: «Frontend-Frameworks – Websites heute»

Der Artikel soll die grundlegenden Unterschiede zeigen, wie Websites früher mittels auslieferung von HTML-Dateien gebaut wurden und wie heute Frontend-Frameworks (React, Vue, Angular) eine Website im Browser zusammensetzen und nur noch Inhalte über eine API geladen werden. Das Ziel ist es dem Leser mittels Text und Grafiken zu vermitteln, was die grundlegenden Unterschiede sind und wie heute «Komponenten» zu Websites zusammengesteckt werden. Allenfalls die [Werbewoche](https://www.werbewoche.ch/) als Beispiel (hatte ich mitgearbeitet). 



---

# Frontend-Frameworks – Websites heute

## Websites Gestern
Einhergehend mit der Entwicklung seines Hypertext-Formates HTML, schuf Tim Berners-Lee ab 1989 am CERN in Genf den ersten Webbrowser (gleichzeitig auch Web-Editor) mit dem Namen WorldWideWeb (später Nexus). Der Browser konnte zwar schon Sprungmarken (Links) und somit Information verknüpfen, jedoch war der Fokus primär in der Vermittlung und dem zugänglich machen von Information. Das heute so genannte «User Experience» (UX) hatte hinten an zu stehen.

---

![WorldWideWeb Browser](https://signalwerk.github.io/webdesign.IAD/browser/img/WorldWideWeb.1.png)
WorldWideWeb Browser  
Erster Browser, jedoch noch ohne eingebetteten Bildern.  
Bild-Quelle: [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:WorldWideWeb.1.png)  

---


Technisch ist das Konzept von statischen Websites relativ schnell und einfach zu verstehen und auch heute werden noch viele Websites meist wie folgt aufgebaut. 

```
Hier grafik
```
1. User erfrägt Seite (HTML) von Server über eine URL
2. Server Liefert HTML-Seite
3. Browser erfragt weitere Resourcen wie Bilder, Stylesheets, ... 
4. Website wird fertig dargestellt (rendering)


Schauen wir uns die HTML Seite an.

```html
<h1 class="special">Titel</h1>
<p class="newsflash">Heute neu!</p>
```


((vereinfachte Darstellung))

Untersuchen wir diesen Ausschnitt unserer Website, so sehen wir, dass der Inhalt lediglich aus zwei kurzen Teilen besteht `Titel` und `Heute neu!` der ganze Rest dient nur der Strukturierung (Semantik) der Inhalte in Headline und Paragraph (`<h1>…</h1> `, `<p>…</p> `) und einer Referenz zu einem Stylesheet (Represäntanz), welches dann die Formatierung der Inhalte Steuert (`class="…"`).

## Websites Heute


Backbone.js



Code-Darstellung über: https://carbon.now.sh
