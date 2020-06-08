		
		 Definition section 
#includestdio.h 
int flag=0; 
%} 
%token NUMBER 
%left '+' '-'
%left '' '' '%'
%left '(' ‘)’
%% 		  Rule Section 
ArithmeticExpression E{ 
		printf(“Result=%d, $$); 
		return 0; 
	          }; 
E  E'+'E {$$=$1+$3;} E'-'E {$$=$1-$3;} E''E {$$=$1$3;} E''E {$$=$1$3;} E'%'E {$$=$1%$3;}
            '('E')' {$$=$2;}  NUMBER {$$=$1;} 
%% 		driver code 
void main() 
{ 
printf(Enter Any Arithmetic Expression which can have operations Addition, Subtraction, Multiplication, Divison, Modulus and Round brackets); 
yyparse(); 
if(flag==0) 
printf(Entered arithmetic expression is Validnn); 
} 
void yyerror() 
{ 
	printf(Entered arithmetic expression is Invalidnn); 
	flag=1; 
} 

