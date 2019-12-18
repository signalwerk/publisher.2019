## Publisher 5 · 2019
Erscheinungsdatum · 14. 10. 2019

<hr class="thick"  />

## Lizenzen
Dieser Text ist von Stefan Huber unter der Lizenz [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) veröffentlicht. [Publisher](https://publisher.ch/) erhält das Recht die Inhalte ohne Copyleft (Share Alike) zu publizieren.

<!--
<hr class="thick"  />
[CMYK Bilder für Print (pdf)](./frontend-frameworks_graphics_cmyk.pdf)
 -->

<hr class="thick"  />


# Mikrotypografie im Web – Leerzeichen




<style>

  .spaces .example {
    white-space: pre;
    font-size: 2rem;
  }

  .spaces .space {
    background-color: var(--blue-color);
  }

  .spaces .filler--prefix {
    width: 2rem;
    display: inline-block;
    text-align: right;
  }
  .spaces .example--gray .filler-char {
    background-color: var(--gray-color);
  }

</style>

<div class="spaces">

<table>
<thead>
<tr>
<th>Beispiel</th>
<th>Text</th>
<th>HTML · Entitätenreferenz</th>
<th>HTML · dezimal</th>
<th>HTML · hexadezimal</th>
<th>Unicode Name</th>
</tr>
</thead>
<tbody><tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space">​</span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>'​'</td>
<td><code>&amp;ZeroWidthSpace;</code></td>
<td><code>&amp;#8203;</code></td>
<td><code>&amp;#x200B;</code></td>
<td>ZERO WIDTH SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td></td>
<td><code>&amp;#32;</code></td>
<td><code>&amp;#x0020;</code></td>
<td>SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space">&nbsp;</span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>'&nbsp;'</td>
<td><code>&amp;nbsp;</code></td>
<td><code>&amp;#160;</code></td>
<td><code>&amp;#x00A0;</code></td>
<td>NO-BREAK SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;thinsp;</code></td>
<td><code>&amp;#8201;</code></td>
<td><code>&amp;#x2009;</code></td>
<td>THIN SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td></td>
<td><code>&amp;#8239;</code></td>
<td><code>&amp;#x202F;</code></td>
<td>NARROW NO-BREAK SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;hairsp;</code></td>
<td><code>&amp;#8202;</code></td>
<td><code>&amp;#x200A;</code></td>
<td>HAIR SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td></td>
<td><code>&amp;#8198;</code></td>
<td><code>&amp;#x2006;</code></td>
<td>SIX-PER-EM SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;emsp14;</code></td>
<td><code>&amp;#8197;</code></td>
<td><code>&amp;#x2005;</code></td>
<td>FOUR-PER-EM SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;emsp13;</code></td>
<td><code>&amp;#8196;</code></td>
<td><code>&amp;#x2004;</code></td>
<td>THREE-PER-EM SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;ensp;</code></td>
<td><code>&amp;#8194;</code></td>
<td><code>&amp;#x2002;</code></td>
<td>EN SPACE</td>
</tr>
<tr>
<td><span class="example example--default"><span class="filler filler--prefix"><span class="filler-char">M</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">M</span></span></span></td>
<td>' '</td>
<td><code>&amp;emsp;</code></td>
<td><code>&amp;#8195;</code></td>
<td><code>&amp;#x2003;</code></td>
<td>EM SPACE</td>
</tr>
<tr>
<td><span class="example example--gray"><span class="filler filler--prefix"><span class="filler-char">0</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">0</span></span></span></td>
<td>' '</td>
<td><code>&amp;numsp;</code></td>
<td><code>&amp;#8199;</code></td>
<td><code>&amp;#x2007;</code></td>
<td>FIGURE SPACE</td>
</tr>
<tr>
<td><span class="example example--gray"><span class="filler filler--prefix"><span class="filler-char">.</span></span><span class="space"> </span><span class="filler-char"><span class="filler filler--postfix">.</span></span></span></td>
<td>' '</td>
<td><code>&amp;puncsp;</code></td>
<td><code>&amp;#8200;</code></td>
<td><code>&amp;#x2008;</code></td>
<td>PUNCTUATION SPACE</td>
</tr>
</tbody></table>
</div>


<hr class="thick"  />

### Autor
Stefan Huber unterrichtet an der [Schule für Gestaltung Zürich](https://sfgz.ch/) im Lehrgang HF Interaction Design und ist als Web-Entwickler tätig.


<hr class="thick"  />
