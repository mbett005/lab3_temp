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
    NEG = 287
    TRU = 288
    FAL = 289
    NOT = 290
    };
    
    int yyval;
%}

%%
[+-]?[0-9] {yylval = atio{yytext}; return DIGIT;}
[+-]?(\.{DIGIT}+)|({DIGIT}+(\.{DIGIT}*)?([eE]?[0-9]+)?) {yyval = atio{yytext}; return DIGITS;}
[a-zA-Z0-9_]*[a-zA-Z0-9]* {return IDENTIFIER;}
"/add" {return ADD;}
"/sub" {return SUBTRACT;}
"/mult" {return MULT;}
"/div" {return DIVI;}
"/mod" {return MOD;}
"=" {return ASSIGN;}
"/end" {return BREAK;}
"#" {return COMMENT;}
"it" {return INTEGER;}
"func" {return FUNCTION;}
"/if" {return IF;}
"/elif" {return ELSEIF;}
"/fi" {return ENDIF;}
"/write" {return WRITE;}
"/read" {return READ;}
"/lt" {return LESST;}
"/lteq" {return LESSTEQ;}
"/gt" {return GREATT;}
"/gteq" {return GREATTEQ;}
"==" {return EQUIV;}
"!=" {return NOTEQ;}
"/loop" {return LOOP;}
"(" {return L_PAREN;}
")" {return R_PAREN;}
"[" {return L_SQUARE_BRACKET;}
"]" {return R_SQUARE_BRACKET;}
":" {return COLON;}
";" {return SEMICOLON;}
"," {return COMMA;}
"-" {return NEG;}
"True" {return TRU;}
"False" {return FAL;}
"!" {return NOT;}
\n {return EOL;}
[\t] {/*ignore whitespace*/}
. {printf("Mystery character %c\n", *yytext);}

%%
