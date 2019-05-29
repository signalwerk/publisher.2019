## Publisher 3 · 2019
Erscheinungsdatum · 24. 6. 2019

<hr class="thick"  />

## Lizenzen
Dieser Text ist von Stefan Huber unter der Lizenz [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) veröffentlicht. [Publisher](https://publisher.ch/) erhält das Recht die Inhalte ohne Copyleft (Share Alike) zu publizieren.

<hr class="thick"  />


# Frontend-Frameworks – Websites heute

> Bei der Interaktion mit einer Website erwarten User eine flüssige Reaktion des Interfaces. Seit einigen Jahren sind so genannte «Frontend-Frameworks» im Web stark verbreitet, so dass der Browser die Darstellung ab dem ersten Laden selber übernehmen kann, was ab da zu einem besseren Nutungserlebins führt.

## Websites – gestern
Einhergehend mit der Entwicklung seines Hypertext-Formates HTML, schuf Tim Berners-Lee ab 1989 am CERN in Genf den ersten Webbrowser (gleichzeitig auch Web-Editor) mit dem Namen WorldWideWeb (später Nexus). Der Browser konnte zwar schon Sprungmarken (Links) und somit Information verknüpfen, jedoch war der Fokus primär in der Vermittlung und dem zugänglich machen von Information. Das heute so genannte «User Experience» (UX) war primär über den Inhalt und weder über die Gestaltung noch über die Interaktion bestimmt.


## HTML als Container für Inhalt

Bei der genaueren Untersuchung einer reduzierten HTML-Seite ist schnell zu erkennen, dass der Inhalt nur ein Teil der Seite ausmacht und die innere Struktur der Seite (Semantik) mindestens genau so wichtig ist. Zusammen mit dem  Styling über CSS (cascading style sheets) wird dann die Darstellung errechnet.



<div class="next-bg"></div>

![HTML Seite Inhalt, Semantik und Darstellung](./img/html-types.svg)



<!--
```html
<html>
  <body>
    <div class="teaser">
      <img src=""/>
      <h1 class="special"></h1>
      <p class="newsflash"></p>
    </div>
    <div class="teaser">
      <img src=""/>
      <h1 class="special"></h1>
      <p class="newsflash"></p>
    </div>
  </body>
</html>
```
-->


Ausgeliefert wird klassisch jedoch nicht geteilt nach Daten und Struktur sondern in einer Kombination. Die HTML-Datei enthält Semantik und Inhalt.  
Die Inhalte sind traditionell in einer Datenbank von der Redaktion abgespeichert worden und der Server fügt in die entsprechende Stelle im HTML diese Inhalte ein.


<div class="next-bg"></div>

![Ganze HTML Seite](./img/html-all.svg)

Das Beispiel zeigt im Wesentlichen folgende Strukturen:

* Seitenstruktur (`<html/> <body/>`)
* Zwei Teaser (`<div class="teaser"/>`)
* ein Titel (`<h1/>`) je Tease
* ein Text (`<p/>`) je Teaser
* ein Bild (`<img/>`) je Teaser


## Vom Server bis zum Browser
Technisch ist das abrufen von HTML-Websites in wenige Schritte gegliedert und auch heute werden noch viele Seiten meist wie folgt aufgebaut.

<div class="next-bg"></div>

![Traditioneller HTML-Abruf](./img/html-traditional.svg)

1. User erfragt die Seite vom Server über eine URL oder Link
2. Server Liefert HTML-Seite
3. Browser erfragt weitere Resourcen wie Bilder, Stylesheets (CSS), ...
4. Website wird fertig dargestellt (rendering)
5. Bei einem Klick auf einen Link, geht der Prozess mit der neuen Seite von neuem los


## Websites – heute
Da das zeitaufwändige laden der ganzen Website nach jedem Klick kein ideales User Experience erlaubt, werden heute gerne Semantik und Daten auseinander genommen. Die «Templates» (Semantik) für die Komponenten beinhalten auch das Styling und werden nur einmal vom Server übertragen. Wird die selbe Komponente später noch einmal benutzt, so werden nur die Daten ausgetauscht. Dies kann der Browser mit Hilfe eines so genannten «Frontend-Frameworks» selbständig tun und beim Sever müssen nur die Inhalte erfragt werden. Das spart Daten und es kann sehr schnell auf Eingaben des Benutzers ragiert werden. Auch das Konzept von «Seiten» ist aufgelöst. Eine neue Seite ist in so einem Framework nur noch eine Komponente die mit anderen Inhalten gefüllt wird. Auch wenn der Benutzer glaubt auf eine andere URL zu wechseln, so tauscht der Browser lediglich die Inhalte aus und das Grundgerüst der Website bleibt erhalten.


Vereinfacht könnte eine Komponente einer Seite so aussehen:

<div class="next-bg"></div>

![Page Komponente](./img/html-component-page.svg)


Und innerhalb dieser Seite wird dann die Teaser-Komponente mehrfach verwendet:

<div class="next-bg"></div>

![Teaser Komponente](./img/html-component-teaser.svg)


Um nun die vollständige Seite darzustellen (rendering) müssen nur noch die Daten in die jeweiligen Komponenten eingefüllt werden.

<div class="next-bg"></div>

![HTML Seite dargestellt](./img/html-component-rendering.svg)


## Vom Server zur Komponente
Dieses Verfahren hat insbesondere dann grosse Vorteile, wenn mehrere Seiten besucht werden, bei denen in den weiteren Seiten nur noch die Daten und nicht mehr die Templates geladen werden müssen.


<div class="next-bg"></div>

![Website-Abruf heute](./img/html-new.svg)


1. User erfragt die Seite vom Server über eine URL oder Link
2. Server Liefert JavaScript in einer HTML-Seite eingebunden
3. Browser erfragt Daten und Bilder
4. Website wird fertig dargestellt (rendering)
5. Bei einem Klick auf einen Link, werden nur noch Daten und Bilder angefragt
6. Die Darstellung wird neu im Browser gerechnet. Es müssen aber nur noch die neuen Daten erfragt werden nicht aber die Semantik, da die Komponenten-Templates bereits geladen sind.


## Ausblick
Seit etwa 2010 sind die ersten Frontend-Frameworks ([Backbone](https://backbonejs.org/) Framework) auf grossen Websites im Einsatz. Firmen wie Google ([Angular](https://angular.io/) Framework) oder Facebook ([React](https://reactjs.org/) Framework) haben ihre Produkte bereits grossflächig auf diesen neuen Technologien umgesetzt. Aber auch lokale Portale wie zum Beispiel [werbewoche.ch](https://www.werbewoche.ch/) nutzen diese Technologie aktiv. Da diese Frameworks von immer mehr Web-Entwicklern erlernt werden und das bessere User Experience vermehr von Kunden erfragt wird, darf man sich auch in Zukunft auf noch interaktivere und responsivere Seiten freuen.

<hr class="thick"  />

### Autor
Stefan Huber unterrichtet an der [Schule für Gestaltung Zürich](https://sfgz.ch/) im Lehrgang HF Interaction Design und ist als Web-Entwickler tätig.


<hr class="thick"  />
