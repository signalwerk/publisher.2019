---
title: Farben im Web – unterscheiden und interpolieren
description: Farben im Web – unterscheiden und interpolieren
---


<style type="text/css">
.rgbGradientL { background-image: linear-gradient(to right, #ffff00 0%, #fcfc02 1.0101010101010102%, #f9f905 2.0202020202020203%, #f7f707 3.0303030303030303%, #f4f40a 4.040404040404041%, #f2f20c 5.05050505050505%, #efef0f 6.0606060606060606%, #ecec12 7.07070707070707%, #eaea14 8.080808080808081%, #e7e717 9.090909090909092%, #e5e519 10.1010101010101%, #e2e21c 11.11111111111111%, #e0e01e 12.121212121212121%, #dddd21 13.131313131313133%, #dada24 14.14141414141414%, #d8d826 15.151515151515152%, #d5d529 16.161616161616163%, #d3d32b 17.17171717171717%, #d0d02e 18.181818181818183%, #cece30 19.19191919191919%, #cbcb33 20.2020202020202%, #c8c836 21.21212121212121%, #c6c638 22.22222222222222%, #c3c33b 23.232323232323232%, #c1c13d 24.242424242424242%, #bebe40 25.252525252525253%, #bcbc42 26.262626262626267%, #b9b945 27.27272727272727%, #b6b648 28.28282828282828%, #b4b44a 29.292929292929294%, #b1b14d 30.303030303030305%, #afaf4f 31.313131313131315%, #acac52 32.323232323232325%, #aaaa55 33.33333333333333%, #a7a757 34.34343434343434%, #a4a45a 35.35353535353536%, #a2a25c 36.36363636363637%, #9f9f5f 37.37373737373738%, #9d9d61 38.38383838383838%, #9a9a64 39.39393939393939%, #979767 40.4040404040404%, #959569 41.41414141414141%, #92926c 42.42424242424242%, #90906e 43.43434343434344%, #8d8d71 44.44444444444444%, #8b8b73 45.45454545454545%, #888876 46.464646464646464%, #858579 47.474747474747474%, #83837b 48.484848484848484%, #80807e 49.494949494949495%, #7e7e80 50.505050505050505%, #7b7b83 51.515151515151516%, #797985 52.52525252525253%, #767688 53.535353535353536%, #73738b 54.54545454545454%, #71718d 55.55555555555556%, #6e6e90 56.56565656565656%, #6c6c92 57.57575757575758%, #696995 58.58585858585859%, #676797 59.59595959595959%, #64649a 60.60606060606061%, #61619d 61.61616161616161%, #5f5f9f 62.62626262626263%, #5c5ca2 63.63636363636363%, #5a5aa4 64.64646464646465%, #5757a7 65.65656565656566%, #5555aa 66.66666666666666%, #5252ac 67.67676767676768%, #4f4faf 68.68686868686868%, #4d4db1 69.6969696969697%, #4a4ab4 70.70707070707071%, #4848b6 71.71717171717171%, #4545b9 72.72727272727273%, #4242bc 73.73737373737373%, #4040be 74.74747474747475%, #3d3dc1 75.75757575757575%, #3b3bc3 76.76767676767676%, #3838c6 77.77777777777779%, #3636c8 78.78787878787878%, #3333cb 79.7979797979798%, #3030ce 80.8080808080808%, #2e2ed0 81.81818181818183%, #2b2bd3 82.82828282828282%, #2929d5 83.83838383838383%, #2626d8 84.84848484848484%, #2424da 85.85858585858585%, #2121dd 86.86868686868688%, #1e1ee0 87.87878787878788%, #1c1ce2 88.88888888888889%, #1919e5 89.8989898989899%, #1717e7 90.9090909090909%, #1414ea 91.91919191919192%, #1212ec 92.92929292929293%, #0f0fef 93.93939393939394%, #0c0cf2 94.94949494949495%, #0a0af4 95.95959595959596%, #0707f7 96.96969696969697%, #0505f9 97.97979797979798%, #0202fc 98.98989898989899%, #0000ff 100%); } .rgbGradient { background-image: linear-gradient(to right, #ffff00 0%, #ffff00 25%, #aaaa55 25%, #aaaa55 50%, #5555aa 50%, #5555aa 75%, #0000ff 75%, #0000ff 100%); } .labGradientL { background-image: linear-gradient(to right, #fffe00 0%, #fefc13 1.0101010101010102%, #fdfa1e 2.0202020202020203%, #fcf727 3.0303030303030303%, #fcf52e 4.040404040404041%, #fbf334 5.05050505050505%, #faf039 6.0606060606060606%, #f9ee3e 7.07070707070707%, #f9eb42 8.080808080808081%, #f8e946 9.090909090909092%, #f7e74a 10.1010101010101%, #f6e44e 11.11111111111111%, #f5e252 12.121212121212121%, #f4df55 13.131313131313133%, #f4dd58 14.14141414141414%, #f3db5b 15.151515151515152%, #f2d85e 16.161616161616163%, #f1d661 17.17171717171717%, #f0d464 18.181818181818183%, #efd167 19.19191919191919%, #eecf6a 20.2020202020202%, #edcd6c 21.21212121212121%, #ecca6f 22.22222222222222%, #ebc871 23.232323232323232%, #eac574 24.242424242424242%, #e9c376 25.252525252525253%, #e8c179 26.262626262626267%, #e7be7b 27.27272727272727%, #e6bc7d 28.28282828282828%, #e5ba80 29.292929292929294%, #e3b782 30.303030303030305%, #e2b584 31.313131313131315%, #e1b386 32.323232323232325%, #e0b088 33.33333333333333%, #dfae8b 34.34343434343434%, #deac8d 35.35353535353536%, #dca98f 36.36363636363637%, #dba791 37.37373737373738%, #daa593 38.38383838383838%, #d8a295 39.39393939393939%, #d7a097 40.4040404040404%, #d69e99 41.41414141414141%, #d49b9b 42.42424242424242%, #d3999d 43.43434343434344%, #d2979f 44.44444444444444%, #d094a1 45.45454545454545%, #cf92a3 46.464646464646464%, #cd90a4 47.474747474747474%, #cc8da6 48.484848484848484%, #ca8ba8 49.494949494949495%, #c889aa 50.505050505050505%, #c786ac 51.515151515151516%, #c584ae 52.52525252525253%, #c482b0 53.535353535353536%, #c27fb1 54.54545454545454%, #c07db3 55.55555555555556%, #be7bb5 56.56565656565656%, #bd78b7 57.57575757575758%, #bb76b9 58.58585858585859%, #b974ba 59.59595959595959%, #b771bc 60.60606060606061%, #b56fbe 61.61616161616161%, #b36dc0 62.62626262626263%, #b16ac2 63.63636363636363%, #af68c3 64.64646464646465%, #ad66c5 65.65656565656566%, #ab63c7 66.66666666666666%, #a961c9 67.67676767676768%, #a75eca 68.68686868686868%, #a45ccc 69.6969696969697%, #a25ace 70.70707070707071%, #a057cf 71.71717171717171%, #9d55d1 72.72727272727273%, #9b52d3 73.73737373737373%, #9850d5 74.74747474747475%, #954dd6 75.75757575757575%, #934bd8 76.76767676767676%, #9049da 77.77777777777779%, #8d46db 78.78787878787878%, #8a44dd 79.7979797979798%, #8741df 80.8080808080808%, #843ee0 81.81818181818183%, #803ce2 82.82828282828282%, #7d39e4 83.83838383838383%, #7937e5 84.84848484848484%, #7634e7 85.85858585858585%, #7231e9 86.86868686868688%, #6e2eea 87.87878787878788%, #692cec 88.88888888888889%, #6529ee 89.8989898989899%, #6026f0 90.9090909090909%, #5b23f1 91.91919191919192%, #551ff3 92.92929292929293%, #4f1cf5 93.93939393939394%, #4818f6 94.94949494949495%, #4115f8 95.95959595959596%, #3810fa 96.96969696969697%, #2d0bfb 97.97979797979798%, #1e05fd 98.98989898989899%, #0000ff 100%); } .labGradient { background-image: linear-gradient(to right, #fffe00 0%, #fffe00 25%, #e0b088 25%, #e0b088 50%, #ab63c7 50%, #ab63c7 75%, #0000ff 75%, #0000ff 100%); } .hlsGradientL { background-image: linear-gradient(to right, #feff00 0%, #f7ff00 1.0101010101010102%, #efff00 2.0202020202020203%, #e7ff00 3.0303030303030303%, #e0ff00 4.040404040404041%, #d8ff00 5.05050505050505%, #d0ff00 6.0606060606060606%, #c8ff00 7.07070707070707%, #c1ff00 8.080808080808081%, #b9ff00 9.090909090909092%, #b1ff00 10.1010101010101%, #a9ff00 11.11111111111111%, #a2ff00 12.121212121212121%, #9aff00 13.131313131313133%, #92ff00 14.14141414141414%, #8bff00 15.151515151515152%, #83ff00 16.161616161616163%, #7bff00 17.17171717171717%, #73ff00 18.181818181818183%, #6cff00 19.19191919191919%, #64ff00 20.2020202020202%, #5cff00 21.21212121212121%, #54ff00 22.22222222222222%, #4dff00 23.232323232323232%, #45ff00 24.242424242424242%, #3dff00 25.252525252525253%, #36ff00 26.262626262626267%, #2eff00 27.27272727272727%, #26ff00 28.28282828282828%, #1eff00 29.292929292929294%, #17ff00 30.303030303030305%, #0fff00 31.313131313131315%, #07ff00 32.323232323232325%, #00ff00 33.33333333333333%, #00ff07 34.34343434343434%, #00ff0f 35.35353535353536%, #00ff17 36.36363636363637%, #00ff1e 37.37373737373738%, #00ff26 38.38383838383838%, #00ff2e 39.39393939393939%, #00ff36 40.4040404040404%, #00ff3d 41.41414141414141%, #00ff45 42.42424242424242%, #00ff4d 43.43434343434344%, #00ff54 44.44444444444444%, #00ff5c 45.45454545454545%, #00ff64 46.464646464646464%, #00ff6c 47.474747474747474%, #00ff73 48.484848484848484%, #00ff7b 49.494949494949495%, #00ff83 50.505050505050505%, #00ff8b 51.515151515151516%, #00ff92 52.52525252525253%, #00ff9a 53.535353535353536%, #00ffa2 54.54545454545454%, #00ffaa 55.55555555555556%, #00ffb1 56.56565656565656%, #00ffb9 57.57575757575758%, #00ffc1 58.58585858585859%, #00ffc8 59.59595959595959%, #00ffd0 60.60606060606061%, #00ffd8 61.61616161616161%, #00ffe0 62.62626262626263%, #00ffe7 63.63636363636363%, #00ffef 64.64646464646465%, #00fff7 65.65656565656566%, #00feff 66.66666666666666%, #00f7ff 67.67676767676768%, #00efff 68.68686868686868%, #00e7ff 69.6969696969697%, #00e0ff 70.70707070707071%, #00d8ff 71.71717171717171%, #00d0ff 72.72727272727273%, #00c8ff 73.73737373737373%, #00c1ff 74.74747474747475%, #00b9ff 75.75757575757575%, #00b1ff 76.76767676767676%, #00a9ff 77.77777777777779%, #00a2ff 78.78787878787878%, #009aff 79.7979797979798%, #0092ff 80.8080808080808%, #008bff 81.81818181818183%, #0083ff 82.82828282828282%, #007bff 83.83838383838383%, #0073ff 84.84848484848484%, #006cff 85.85858585858585%, #0064ff 86.86868686868688%, #005cff 87.87878787878788%, #0055ff 88.88888888888889%, #004dff 89.8989898989899%, #0045ff 90.9090909090909%, #003dff 91.91919191919192%, #0036ff 92.92929292929293%, #002eff 93.93939393939394%, #0026ff 94.94949494949495%, #001eff 95.95959595959596%, #0017ff 96.96969696969697%, #000fff 97.97979797979798%, #0007ff 98.98989898989899%, #0000ff 100%); } .hlsGradient { background-image: linear-gradient(to right, #feff00 0%, #feff00 25%, #00ff00 25%, #00ff00 50%, #00feff 50%, #00feff 75%, #0000ff 75%, #0000ff 100%); } .deltaEA { background-image: linear-gradient(to right, #d17ad1 0%, #d17ad1 50%, #a77ad1 50%, #a77ad1 100%); } .deltaEB { background-image: linear-gradient(to right, #9a78ba 0%, #9a78ba 50%, #a67bd1 50%, #a67bd1 100%); } .farbdistanceA { background-image: linear-gradient(to right, #000000 0%, #000000 20%, #373737 20%, #373737 40%, #6e6e6e 40%, #6e6e6e 60.00000000000001%, #a5a5a5 60.00000000000001%, #a5a5a5 80%, #dddddd 80%, #dddddd 100%); } .farbdistanceB { background-image: linear-gradient(to right, #000000 0%, #000000 20%, #3d3d3d 20%, #3d3d3d 40%, #6d6d6d 40%, #6d6d6d 60.00000000000001%, #9c9c9c 60.00000000000001%, #9c9c9c 80%, #dddcdd 80%, #dddcdd 100%); }

























.gradient-01 {
  background-image: linear-gradient(90deg, #be6a39, #64badf);
}
.gradient-02 {
  background-image: linear-gradient(90deg, #ea4c3c, #ddf536);
}

.gradient-02-hsl {
  background-image: linear-gradient(90deg, hsl(6, 81%, 58%), hsl(68, 91%, 59%));
}

.test-patchs {
  width: 100%;
  height: 6rem;
}


.bg-red-srgb{
  background: rgb(234, 51, 35);
}

.bg-red-srgb-p3{
  background: rgb(255, 0, 0);
}

@media (color-gamut: p3) {
  .bg-red-srgb-p3 {
    background: rgb(234, 51, 35);
  }
}



.gradient-hsl {
  background-image: linear-gradient(90deg, hsl(60, 100%, 50%), hsl(240, 100%, 50%));
}


</style>



<!--
<div class="test-patchs gradient-01"></div>
-
<div class="test-patchs gradient-02"></div>
-
<div class="test-patchs gradient-02-hsl"></div>
-
<div class="test-patchs bg-red-srgb-p3"></div>
-
<div class="test-patchs bg-red-srgb"></div>

 -->



## Publisher 2 · 2020

<hr />

## Lizenzen
Dieser Text ist von Stefan Huber unter der Lizenz [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) veröffentlicht. [Publisher](https://publisher.ch/) erhält das Recht die Inhalte ohne Copyleft (Share Alike) zu publizieren.

<hr />

* [CMYK Bilder für Print (pdf) · Coated FOGRA39 (ISO 12647-2:2004)](./color_graphics_cmyk.pdf)
* [RGB Bilder für (pdf) · sRGB](./color_graphics_rgb.pdf)

<hr />


# Farben im Web – unterscheiden und interpolieren


<lead>

Farben können sich entscheidend auf die Gestaltung und deren Anmut auswirken. Doch nicht nur für das Design ist die Wahl entscheidend, sondern auch um Barrierefreiheit zu gewähren, muss der Umgang mit Farben überlegt sein. Ob zwischen zwei Farben eine Kontrast benötigt wird oder aber dazwischen interpoliert werden soll kann ganz unterschiedliche Überlegungen nach sich ziehen.

</lead>

## Farbraum im Browser
Grundsätzlich sind in der [CSS-Farbspezifikation](https://www.w3.org/TR/css-color-3/#SRGB) für das Web alle Farben im Farbraum sRGB spezifiziert. Somit werden in den allermeisten Fällen mittels CSS die Farben auf einer Website definiert, die für heutige Verhältnisse nicht in einem sehr grossen Farbraum liegen. Aktuelle Apple Geräte haben zum Beispiel den Farbraum DCI-P3 welcher ein um etwa 25 % grösseres Gamut (Farbumfang) ermöglichen würde. Somit wird nur ein Teil der möglichen Fähigkeit heutiger Bildschirme ausgenutzt und Farben wirken unnötig verwaschen.  
Als wäre das nicht schon unglück genug, kommt noch dazu, dass Farben heute als 8-Bit-Werte (0 – 255) gespeichert werden. Somit können feine Farbunterschiede nicht abgebildet werden oder Farbverläufe können stufig wirken.

![color-gamut](./img/color-gamut@3x.png)
*Im direkten Vergleich sieht man, wie die beiden Farbräume sich relativ stark im Gamut unterscheiden. Das sichtbare Spektrum (im Bild als Farbfläche eingezeichnet) ist dabei noch immer wesentlich grösser als die Screens heute dieses abdecken.*


## Bilder
Sobald Bilder an einen modernen Browser übermittelt werden könnten eingebettete Farbprofile mitgesendet werden, was dann ein bessere Nutzung des Farbraums ermöglichen würde, da viele Browser ICC-Profile unterstüzten. Da dies jedoch zusätzliche Bandbreite benötigt und auch sonst die Server-Infrastruktur oftmals nicht auf profilierte Bildverarbeitung ausgelegt ist, werden nur sehr selten Bilder mit ICC-Profil ausgeliefert. Der Browser muss dann wiederum von sRGB ausgehen, da ihm keine sonstigen Farbinformationen vorliegen.  

## Zwischenwelt
Was einige Browser heute bereits unterstützen ist in CSS die Definition nach Fähigkeiten des Bildschirms (color-gamut query). Da die Farbdefinition dann aber doch wieder in sRGB angegeben wird, ist diese Unterscheidung eigentlich sinnlos für die Farbdefinition und kann eher zum laden unterschiedlicher Bilder verwendet werden, denn für Farbdefinitionen auf der Seite.


<div class="svg-export">


```css
p {
  background: rgb(255, 0, 0);
}
@media (color-gamut: p3) {
  p {
    background: rgb(234, 51, 35);
  }
}
```

</div>

*Die Farbdefinition im zweiten Block wird als sRGB interpretiert, obwohl die Definition nur auf einem Gerät gelesen wird, was DCI-P3 unterstützt.*



## Farbdefinitionen
Üblicherweise werden die Farben im CSS als sRGB definiert. Seit geraumer Zeit sind auch HSL-Definitionen möglich, welche die Farbdefinition nach Farbwert (hue), Farbsättigung (saturation) und Helligkeit (lightness) ermöglicht. Aber auch hier wird von sRGB als Profilierung ausgegangen.  
Erst mit dem neuen Standard [CSS Color Module Level 4](https://www.w3.org/TR/css-color-4/) werden zum ersten mal geräteunabhängige Farben möglich werden. So können künftig zum Beispiel Corporate Colors im CIE LAB Farbraum (ISO 11664-4) angegeben werden. Diese Farbdefinition wird dann möglichst präzise auf den jeweiligen Bildschirm umgesetzt. Dieser Standard ist erst im Entwurf und wird noch heftig Debatiert. Auch gibt es [Bestrebungen](https://github.com/w3c/csswg-drafts/issues/2023#issuecomment-553791757) damit Mischfarben aus mehreren (virtuellen) Farben zu erzeugen. Auch Druckfarben (CMYK) und mittels ICC-Profil charakterisierte Farben sind möglich. Somit würde sich für die Farbkommunikation vieles erleichtern.

<br />

<div class="svg-export">

```css
p {
  background: lab(50 0 0);
}
```

</div>

*Farbdefinition in CSS Color Module Level 4 werden künfit auch Geräteneutral in CIE LAB definiert werden können.*


<br />

<div class="svg-export">

```css
@color-profile test {
  src: url('https://xyz.com/profile.icc');
}
p {
  background: color(test 0.38 0.99 0.14);
}
```

</div>

*Auch können in CSS Color Module Level 4 künftig Farbdefinitionen in einem profilierten Farbraum mit angehängtem ICC-Profil definiert werden.*




## Farbüberblendung
Möchte man in einer Gestaltung verschiedene Abstufungen von Farbtönen realisieren, so muss hier überlegt werden, welche Farbinterpolation in welchem Farbsystem verwendet werden. Dies ist zum Beispiel bei Infografiken von entscheidender Bedeutung um eine Werteskala, die mit Farben codiert ist, zu unterscheiden.   
Leider sind im Moment in Browsern für Verläufe jedoch nur RGB-Übergänge möglich.


### RGB-Verläufe
Browser können RGB-Verläufe problemlos darstellen. Eine mögliche Farbskala daraus mit vier Abstufungen ist zum Vergleich darunter gezeichnet.

<br />

<div class="svg-export">
  <div class="test-patchs rgbGradientL"></div>
  <div class="test-patchs rgbGradient"></div>
</div>


### HSL-Verläufe
Eigentlich sollte ein HLS-Übergang wie unten abgebildet dargestelt werden. Also wie im HSL-Model üblich, wird das Farbrad durchlaufen – ähnlich einem Regenbogen. Dies wird vom Browser so jedoch nicht unterstützt, obwohl HSL-Farbdefinitionen eigentlich sonst möglich sind.

<br />
<div class="svg-export">
  <div class="test-patchs hlsGradientL"></div>
  <div class="test-patchs hlsGradient"></div>
</div>

### LAB-Verläufe
Um einn LAB-Verlauf zu erzeugen, muss im Moment mit Programmierung eingegriffen werden. Auch die Abstufung muss dann programmatisch erreichnet werden.

<br />

<div class="svg-export">
  <div class="test-patchs labGradientL"></div>
  <div class="test-patchs labGradient"></div>
</div>


## Farbabstand
Der Untschied zwischen zwei Farben kann mittels einer mathematischen Formel errechnet werden. Eine verbreitete Weise ist der sogenannte «DeltaE 2000»-Wert. Dieser berücksichtigt die Empfindlichkeit von Menschen auf Helligkeit aber auch auf Farbunterschiede.  
Dieser Wert ermöglicht – wenn auch nicht perfekt – zu sagen, wie ähnlich sich zwei Farben sind. Je grösser der Wert, desto grösser der Farbunterschied. Dies kann bei der Gestaltung helfen sich nicht nur auf das Auge zu verlassen.

<br />

«Delta E»-Wert von ~ 8.9 (ähnlich aber erkennbar anders):

<div class="test-patchs deltaEA svg-export"></div>

<br />


«Delta E»-Wert von ~ 4.6 (sehr ähnlich):

<div class="test-patchs deltaEB svg-export"></div>

<br />

Möchte man nun Farbskalen mit Abständen zwischen den Farben definieren, kann man den «DeltaE 2000»-Wert brauchen um harmonischere Abstände zu erzeugen. So kann zum Beispiel eine schwierige monochromatische Farbskala, mit nur kleinem Unterscheidungsmerkmal, dennoch möglichst ausgewogen verteilt wirken. Der visuelle Farbabstand zwischen den einzelnen Feldern erscheint zumindest regelmässig:

<br />

«Delta E»-Wert zwischen den Feldern jeweils ~ 17:


<div class="test-patchs farbdistanceB svg-export"></div>


## Kontrast


Zusätzlich zu der Farbwahl sollte auch immer die Barrierefreiheit im Hinterkopf behalten werden. Die [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/WAI/standards-guidelines/wcag/) sind ein relativ einfaches Regelwerk, welches die Grundlagen für Accessibility (Barrierefreiheit) legen. Die WCAG 2.0 Stufe AA erfordert ein Kontrastverhältnis von mindestens 4.5:1 für normalen Text und 3:1 für grossen Text. Der Nachfolger WCAG 2.1 erfordert ein Kontrastverhältnis von mindestens 3:1 für Grafiken und die Benutzeroberfläche. WCAG Level AAA erfordert ein Kontrastverhältnis von mindestens 7:1 für normalen Text und 4.5:1 für grossen Text. Die Definition von «normal» oder «grossem» Text ist nur ein Beispiel dafür, dass der Standard eher einfach gehalten ist, um einen leichten Einstieg zu ermöglichen.


<style type="text/css">
  .contrast-small {
    background-color: #999999;
  }

  .contrast-med {
    background-color: #bbbbbb;
  }

  .contrast-big {
    background-color: #e7e7e7;
  }

  .test-patchs--txt {
    color: #5c4646;
    text-align: left;
  }

  .test-patchs--txt h3 {
    padding-top: 1rem;
    font-size: 3.6rem;
    padding-left: 2rem;
    margin: 0;
    line-height: 1;
  }
</style>

<br />


<div class="svg-export">
  <div class="test-patchs test-patchs--txt contrast-small">
  <h3>Kontrast · &numsp;&puncsp;3:1</h3>
  </div>

  <div class="test-patchs test-patchs--txt contrast-med">
  <h3>Kontrast · 4.5:1</h3>
  </div>

  <div class="test-patchs test-patchs--txt contrast-big">
  <h3>Kontrast · &numsp;&puncsp;7:1</h3>
  </div>
</div>

<hr />

## Fazit
Der Umgang mit Farben im Web ist meist ausreichend und gut. Aber wenn es um Details geht und man sich tiefere Gedanken über die Gestaltung macht, wünscht man oftmals mehr Kontrolle. Diverse Standards und Vorschläge für künftige Standards sind bereits da, somit wird sich dieses Feld in den nächsten Jahren hoffentlich noch weiter entwickeln.

<br />
<br />

*Die Darstellungen wurden in sRGB im Browser erstellt und dann in PDF ausgegeben und dort in CMYK-Druckfarben gewandelt.*

### Autor
Stefan Huber unterrichtet an der [Schule für Gestaltung Zürich](https://sfgz.ch/) im Lehrgang HF Interaction Design und ist als Web-Entwickler tätig.


<hr />
