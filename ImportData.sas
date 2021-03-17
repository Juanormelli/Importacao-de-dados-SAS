/*
Programa:ImportData.sas
Autor: Juan Ormelli de Medeiros
Data: 03/03/2021
Versao:1.00

Descri��o: Importa��o de tabelas .CSV para SAS - Resolu��o Exercicio 2


*/

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Vendas.csv"
  out= cgdexcel.Vendas
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Regi�es.csv"
	out= Regioes
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Tamanhos.csv"
	out= cgdexcel.Tamanhos
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Estados.csv"
	out= cgdexcel.Estados
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Produtos.csv"
	out=cgdexcel.Produtos
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "/SASLibraries";
proc import datafile="/home/sas/Downloads/Grupos.csv"
	out=cgdexcel.Grupos
	dbms=CSV
	replace;
	delimiter=';';
run;

LIBNAME cgdexcel "Data"; ;
proc import datafile="/home/sas/Downloads/Deptos.csv"
	out=cgdexcel.Deptos
	dbms=CSV
	replace;
	delimiter=';';
run;
