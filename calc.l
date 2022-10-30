/* recognize tokens for the calculator and print them out */
%{
   enum yytokentype {
    ADD = 258,
    SUBTRACT = 259,
    MULT = 260,
    DIVI = 261,
    MOD = 262,
    ASSIGN = 263,
    BREAK = 264,
    COMMENT = 265,
    INTEGER = 266,
    FUNCTION = 267,
    IF = 268,
    ELSEIF = 269,
    ENDIF = 270,
    WRITE = 271,
    READ = 272,
    LESST = 273,
    LESSTEQ = 274,
    GREATT = 275,
    GREATTEQ = 276,
    EQUIV = 277,
    NOTEQ = 278,
    LOOP = 279,
    L_PAREN = 280,
    R_PAREN = 281,
    L_SQUARE_BRACKET = 282,
    R_SQUARE_BRACKET = 283,
    COLON = 284,
    SEMICOLON = 285,
    COMMA = 286
   };

   int yylval;
%}

%%
"+"    { return ADD; }
"-"    { return SUB; }
"*"    { return MUL; }
"/"    { return DIV; }
"|"    { return ABS; }
"("    { return OP;  }
")"    { return CP;  }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n     { return EOL; }
[ \t]  { /* ignore whitespace */ }
.      { printf("Mystery character %c\n", *yytext); }
%%
