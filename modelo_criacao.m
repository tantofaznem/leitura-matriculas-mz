
A=imread('assets/A.jpg');B=imread('assets/B.jpg');C=imread('assets/C.jpg');
D=imread('assets/D.jpg');E=imread('assets/E.jpg');F=imread('assets/F.jpg');
G=imread('assets/G.jpg');H=imread('assets/H.jpg');I=imread('assets/I.jpg');
J=imread('assets/J.jpg');K=imread('assets/K.jpg');L=imread('assets/L.jpg');
M=imread('assets/M.jpg');N=imread('assets/N.jpg');O=imread('assets/O.jpg');
P=imread('assets/P.jpg');Q=imread('assets/Q.jpg');R=imread('assets/R.jpg');
S=imread('assets/S.jpg');T=imread('assets/T.jpg');U=imread('assets/U.jpg');
V=imread('assets/V.jpg');W=imread('assets/W.jpg');X=imread('assets/X.jpg');
Y=imread('assets/Y.jpg');Z=imread('assets/Z.jpg');

um=imread('assets/1.jpg');dois=imread('assets/2.jpg');
tres=imread('assets/3.jpg');quatro=imread('assets/4.jpg');
cinco=imread('assets/5.jpg'); seis=imread('assets/6.jpg');
sete=imread('assets/7.jpg');oito=imread('assets/8.jpg');
nove=imread('assets/9.jpg'); zero=imread('assets/0.jpg');

letras=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];

numeros=[um dois tres quatro cinco seis sete oito nove zero];

NewTemplates=[letras numeros];
save ('NewTemplates','NewTemplates')
clear all