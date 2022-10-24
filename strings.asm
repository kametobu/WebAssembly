section .rodata
global linebreak
linebreak:
        db `\n`, 0
global helloworld
helloworld:
        db `Hello World\n`, 0
global javascript
javascript:
        db `javascript\n`, 0
global formathell
formathell:
        db `This is a number %d. this is a string %s\n`,0
global array_frases
array_frases:
        dq formathell
global indexhtml
indexhtml:
        db `index.html`, 0
global lendoarquivo
lendoarquivo:
        db `Lendo arquivo %s\n`, 0
global modoleitura
modoleitura:
        db `r`, 0
