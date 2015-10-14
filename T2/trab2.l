DIGITO			[0-9]
CARACTER			[a-zA-Z]
ID			({CARACTER}|"_")({CARACTER}|{DIGITO}|"_")*
LITERALINT      	{DIGITO}+
ESPB			[\n\t ]+
COMENT			("//".*\n)
OPLN			"!"
INTEIRO			"int"
BOOLEAN			"boolean"
INTVECTOR		"int[]"
CLASSE 			"class"
PUBLIC			"public"
STATIC			"static"
VOID			"void"
MAIN			"main"
STRING			"String"
EXTENDS			"extends"
RETURN			"return"
NEW			"new"
LENGTH			"length"
IF			"if"
WHILE			"while"
ELSE			"else"
TRUE			"true"
FALSE			"false"
THIS			"this"
SYSTEM_OUT_PRINTLN	"System.out.println"
MAIS			"+"
MENOS			"-"
VEZES			"*"
DIV			"/"
AND			"&&"
OR			"||"
MENOR			"<"
MENORIG			"<="
MAIOR			">"
MAIORIG			">="
DIF			"!="
IGUAL			"=="
CHF			"}"
CHA			"{"
PA			"("
PF			")"
CA			"["
CF			"]"
IG			"="
PT			"."
V			","
PV			";"

%%
{CLASSE}         	{printf("CLASSE ");}
{PUBLIC}         	{printf("PUBLIC ");}
{STATIC}         	{printf("STATIC "); }
{VOID}           	{printf("VOID ");}
{MAIN}           	{printf("MAIN ");}
{STRING}         	{printf("STRING ");}
{EXTENDS}        	{printf("EXTENDS ");}
{RETURN}         	{printf("RETURN ");}
{LENGTH}		      {printf("LENGTH ");}
{IF}			{printf("IF ");}
{WHILE}			{ printf("WHILE");}
{ELSE}			{ printf("ELSE ");}
{TRUE}			{ printf("TRUE ");}
{FALSE}			{ printf("FALSE ");}
{THIS}			{ printf("THIS ");}
{SYSTEM_OUT_PRINTLN} 	{ printf("PRINTLN ");}
{MAIS}			{ printf("MAIS ");}
{MENOS}			{ printf("MENOS ");}
{VEZES}			{ printf("VEZES ");}
{DIV} 			{ printf("DIVIDIDO ");}
{AND}			{ printf("AND ");}
{OR}			{ printf("OR ");}
{MENOR}			{ printf("MENOR ");}
{MENORIG}		{ printf("MENOR OU IGUAL ");}
{MAIOR}			{ printf("MAIOR ");}
{MAIORIG}		{ printf("MAIOR OU IGUAL ");}
{DIF}			{ printf("DIFERENTE ");}
{IGUAL}			{ printf("IGUAL ");}
{CHF}		 	{ printf("XF ");}
{CHA}		 	{ printf("XA ");}
{PA}		 	{ printf("PA ");}
{PF}		 	{ printf("PF ");}
{CA}		 	{ printf("CA ");}
{CF}		 	{ printf("CF ");}
{IG}		 	{ printf("ATRIBUICAO ");}
{PT}		 	{ printf("PONTO ");}
{V}		 	{ printf("VIRGULA ");}
{PV}              	{ printf("PTVIRGULA ");}
{INTEIRO}			{ printf("INT ");}
{BOOLEAN}		{ printf("BOOLEAN ");}
{INTVECTOR}		{ printf("VETOR DE INT ");}
{ID}		 	{ printf("ID ");}
{LITERALINT}     	{ printf("LITERAL INT ");}
{OPLN}		 	{ printf("NOT ");}
{DIGITO}+		{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("Real: %s\n",yytext);}
{ID}			{printf("var: %s\n",yytext);}

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
