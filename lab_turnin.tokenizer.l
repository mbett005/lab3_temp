%{
	#include<stdio.h>
	#include<stdlib.h>
	int current_line =0;
	int current_index=0;
	int num = 0;
	int operator = 0;
	int paren = 0;
	int esign = 0;
%}

DIGIT [+-]?[0-9]

DIGITS [+-]?(\.{DIGIT}+)|({DIGIT}+(\.{DIGIT}*)?([eE]?[0-9]+)?)
IDENTIFIER [a-zA-Z0-9_]*[a-zA-Z0-9]* 

ADD "/add"
SUBTRACT "/sub"
MULT "/mult"
DIVI "/div"
MOD "/mod"

ASSIGN =
BREAK "/end"
COMMENT #
INTEGER "it"
FUNCTION  "func" 
IF "/if"
ELSEIF "/elif"
ENDIF "/fi"
WRITE "/write"
READ "/read"
LESST "/lt"
LESSTEQ "/lteq"
GREATT "/gt"
GREATTEQ "/gteq"
EQUIV ==
NOTEQ !=
LOOP "/loop"
L_PAREN "("
R_PAREN ")"
L_SQUARE_BRACKET "["
R_SQUARE_BRACKET "]"
COLON ":"
SEMICOLON ";"
COMMA ","

%%

[ \t]+	{}


{DIGIT}	{

	printf("DIGIT: %s\n", yytext);
	current_index +=yyleng;
}

{DIGITS} {
	printf("DIGITS: %s\n", yytext);
	current_index +=yyleng;
}

{ADD} {
	printf("addition: %s\n",yytext);
	current_index +=yyleng;
}

{FUNCTION} {
	printf("FUNCTION: %s \n",yytext);
	current_index +=yyleng;
}

{L_PAREN} {
	printf("L_PARENTHESIS: %s \n",yytext);
	current_index +=yyleng;
}

{R_PAREN} {
	printf("R_PARENTHESIS: %s \n",yytext);
	current_index +=yyleng;
}

{L_SQUARE_BRACKET} {
	printf("L_SQUARE_BRACKET: %s \n",yytext);
	current_index +=yyleng;
}

{R_SQUARE_BRACKET} {
	printf("R_SQUARE_BRACKET: %s \n",yytext);
	current_index +=yyleng;
}

{SUBTRACT} {
	printf("subtraction: %s\n",yytext);
	current_index +=yyleng;
}

{MULT} {
	printf("multiply: %s\n",yytext);
	current_index +=yyleng;
}

{DIVI} {
	printf("divide: %s\n",yytext);
	current_index +=yyleng;
}

{MOD} {
	printf("mod: %s \n",yytext);
	current_index +=yyleng;
}

{ASSIGN} {
	printf("assignment: %s\n",yytext);
	current_index +=yyleng;
}

{BREAK} {
	printf("break statement: %s\n",yytext);
	current_index +=yyleng;
}

{COMMENT} {
	printf("comment: %s\n",yytext);
	current_index +=yyleng;
}

{INTEGER} {
	printf("integer type: %s\n",yytext);
	current_index +=yyleng;
}

{IF} {
	printf("if open: %s\n",yytext);
	current_index +=yyleng;
}

{ELSEIF} {
	printf("else if open: %s\n",yytext);
	current_index +=yyleng;
}

{ENDIF} {
	printf("if close: %s\n",yytext);
	current_index +=yyleng;
}


{WRITE} {
	printf("write to terminal: %s\n",yytext);
	current_index +=yyleng;
}

{READ} {
	printf("Read to terminal: %s\n",yytext);
	current_index +=yyleng;
}

{LESST} {
	printf("less than: %s\n",yytext);
	current_index +=yyleng;
}

{LESSTEQ} {
	printf("less than equal to: %s\n",yytext);
	current_index +=yyleng;
}

{GREATT} {
	printf("greater than: %s\n",yytext);
	current_index +=yyleng;
}

{GREATTEQ} {
	printf("greater than equal to: %s\n",yytext);
	current_index +=yyleng;
}

{EQUIV} {
	printf("equivalent: %s\n",yytext);
	current_index +=yyleng;
}

{NOTEQ} {
	printf("not equal: %s\n",yytext);
	current_index +=yyleng;
}

{LOOP} {
	printf("initiate loop: %s\n",yytext);
	current_index +=yyleng;
}
{IDENTIFIER} {
	printf("Identifier: : %s \n",yytext);
	current_index +=yyleng;
}

{COLON} {
	printf("colon: %s\n",yytext);
	current_index +=yyleng;
}
{SEMICOLON} {
	printf("semicolon: %s\n",yytext);
	current_index +=yyleng;
}
{COMMA} {
	printf("commma: %s\n",yytext);
	current_index +=yyleng;
}

.	{
	printf("Error line.%d:%d : unrecognized token \"%s\"\n", current_line, current_index, yytext);
	current_index =0;
	}

%%
int yywrap(void) {return 1;}

int main( int argc, char **argv )
{
	if(argc >= 2){
		yyin=stdin;
	}
	yylex();
	return 0;
    //++argv, --argc;  /* skip over program name */

	//char * buffer = 0;
	//long length;
	//FILE * f = fopen (*argv, "rb");

	//if (f)
	//{
	 // yyin = f;
	//}
	//else{
    //	yyin = stdin;
	//}
    //yylex();

};
