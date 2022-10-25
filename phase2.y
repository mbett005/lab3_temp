%{
int yylex();
void yyerror(const char *s);
#include <stdio.h>
%}


%token ADD
%token SUBTRACT
%token MULT
%token DIVI
%token MOD
%token ASSIGN
%token BREAK
%token COMMENT
%token INTEGER 
%token FUNCTION
%token IF
%token ELSEIF
%token ENDIF
%token WRITE
%token READ
%token LESST
%token LESSTEQ
%token GREATT
%token GREATTEQ
%token EQUIV 
%token NOTEQ
%token LOOP
%token L_PAREN
%token R_PAREN
%token L_SQUARE_BRACKET
%token R_SQUARE_BRACKET
%token COLON
%token SEMICOLON
%token COMMA


%%

