# Transistor Reference

<table width='100%'>
<tr>
<td valign='top'>
    <img src='./images/nmos-pmos.png' width='100%'>
</td>
<td valign='top' width='40%'>
    <b>Open</b>: off, disconnected, no electrical contact.<br>
    <b>Closed</b>: on, connected, has electrical contact.<br><br>
    <table>
    <tr>
        <td>Type:</td><td>NMOS, MOSFET channel N</td>
    </tr>
    <tr>
        <td>Gate:</td><td>P-substrate</td>
    </tr>
    <tr>
        <td>Source:</td><td>N-substrate</td>
    </tr>
    <tr>
        <td>Drain:</td><td>N-substrate</td>
    </tr>
    </table>
    <table>
    <tr>
        <td>Type:</td><td>PMOS, MOSFET channel P</td>
    </tr>
    <tr>
        <td>Gate:</td><td>N-substrate</td>
    </tr>
    <tr>
        <td>Source:</td><td>P-substrate</td>
    </tr>
    <tr>
        <td>Drain:</td><td>P-substrate</td>
    </tr>
    </table>
</td>
</tr>
<tr>
    <td valign='top'>
        <img src='images/Figure_11-Semiconductor_Handbook_800w.jpg' >
    </td>
    <td valign='top'>
        Symbols:<br><br>
        <img src='images/symbols-nmos-pmos-transistor.png' >
    </td>
</tr>
</table>

<img src='images/Peek 21-04-2023 16-19.gif' >

<details>
    <summary>CircuitJS code</summary>
    <br>
    <a href='https://www.falstad.com/circuit/circuitjs.html' target='_blank'>https://www.falstad.com/circuit/circuitjs.html</a>

```
$ 1 0.000005 2.3728258192205156 44 5 50 5e-11
f 304 240 352 240 0 1.5 0.02
172 256 240 224 240 0 7 5 5 0 0 0.5 Gate Voltage
w 352 256 352 304 3
w 352 224 352 128 3
172 352 128 352 96 0 7 5 5 0 0 0.5 Drain Voltage
g 352 304 352 320 0 0
s 272 240 304 240 0 1 false
f 528 240 576 240 1 1.5 0.02
s 496 240 528 240 0 0 false
172 480 240 448 240 0 7 5 5 0 0 0.5 Gate Voltage
w 576 128 576 224 3
w 352 128 576 128 0
w 576 256 576 304 3
w 576 304 352 304 0
x 359 224 369 227 4 15 D
x 306 256 317 259 4 15 G
x 360 258 370 261 4 15 S
x 584 225 594 228 4 15 S
x 584 260 594 263 4 15 D
x 533 254 544 257 4 15 G
x 134 207 321 210 4 15 NMOS,\sMOSFET\schannel\sN
x 603 205 788 208 4 15 PMOS,\sMOSFET\schannel\sP
x 337 346 370 349 4 15 GND
x 686 335 786 338 4 15 Current:\syellow
x 686 354 782 357 4 15 Voltage:\sgreen
w 480 240 496 240 3
w 256 240 272 240 3
o 0 64 0 4099 5 0.2 0 6 0 3 0 0 0 3 7 0 7 3
```

</details>




