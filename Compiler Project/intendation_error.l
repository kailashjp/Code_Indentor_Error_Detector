%{ 
    #include<stdio.h>
    #include<stdlib.h>
    #include<math.h>
    #include<string.h>
    #include"y.tab.h"
    int yyparse(void);
    extern YYSTYPE yylval;
    int t;
    char *sk;
%}
NUMBER		[0-9][0-9]*(.[0-9]+)?
ID		[a-zA-Z][a-zA-Z0-9]*
HEADERFILE		<iostream.h>|<string.h>|<stdio.h>
%% 
[ \t\n]		{ }
{NUMBER}	{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return NUMBER;
		}   
{ID} 		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return ID;
		}
"&&"		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return AND;
		}
"||"		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return OR;
		}
while		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return WHILE;
		}
for		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return FOR;
		}
"#"		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return HASH;
		}	
"include"	{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return INCLUDE;}
{HEADERFILE}	{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return HEADER;
		}	
main		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return MAIN;
		}
";"		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return SEMICOLON;
		}
int		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return INT;}
double		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return DOUBLE;
		}

if		{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk;
			return IF;
		}
else	{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return ELSE;}
return 	{
			sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		    strcpy(sk,yytext);
		    yylval.val=sk; 
			return RETURN;
		}

break {
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return BREAK;
	}
"{"	{
		t=t+1;
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
        strcpy(sk,yytext);
        yylval.val=sk; 
		return OPENINGB;
	}
"}"	{
		t=t-1;
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
        strcpy(sk,yytext);
        yylval.val=sk; 
	    return CLOSINGB;
	}
"["	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return OPENINGBR;
    }
"]"	{
	    sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return CLOSINGBR;
    }
"("	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return OPENINGP;
	}		
")"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return CLOSINGP;
	}
"*"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return ASTERISK;
	}
"=="{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return EQ;
	}
"!="{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return NE;
	}
">"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return GT;
	}
">="{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return GE;
	}
"<"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return LT;
	}
"<="{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return LE;
	}
"+"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return PLUS;
	}
"-"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(sk,yytext);
		yylval.val=sk; 
		return MINUS;
	}
"/"	{
		sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
		strcpy(p,yytext);
		yylval.val=p; 
		return SLASH;
    }          
"="	{
	sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
	strcpy(sk,yytext);
	yylval.val=sk; 
	return EQUAL;
}
","	{
    sk=(char *)calloc(strlen(yytext)+1,sizeof(char));
    strcpy(sk,yytext);
	yylval.val=sk; 
	return COMMA;
}
%%



