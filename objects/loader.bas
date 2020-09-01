1 ' ------------------------------------'
1 '     Loader - inicializador          '
1 ' ------------------------------------'




1 ' Inicilizamos dispositivo: 003B, inicilizamos teclado: 003E'
10 defusr=&h003B:a=usr(0):defusr1=&h003E:a=usr1(0)
20 COLOR15,0,0:SCREEN5,2

1 ' Mostramos la pantalla de carga'
30 bload "scload.bin", s: OPEN"grp:"AS#1:print #1,"Load graphics"



1 ' Definicimos la estructura de nuestras entidades'


1 ' Definimos nuestro mapa o niveles'




1 ' Cargamos nuestros gráficos con http://msx.jannone.org/conv/'
1 ' 32768'
1000 bload"tileset.bin",s,&h8000
1010 'bload"level1.bin",s,&h10000



1 ' Cargamos nuestros sprites'
2000 bload"sprites.bin",r: print #1,"Load sprites":close #1


1 ' Cargamos el main'
3000 load "main.bas",r









