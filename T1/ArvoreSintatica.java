class ArvoreSintatica{}

class Exp extends ArvoreSintatica{}

class Num extends Exp{
 	int num;
	Num(int num){this.num=num;}
}

class Operador extends Exp{
	Exp arg1;
	Exp arg2;
	Operador (Exp a1, Exp a2) { arg1=a1; arg2=a2;}
}

class Soma extends Operador{   //modificado para add operacoes sub/div

	Soma (Exp a1, Exp a2) { super(a1,a2);}
}

class Mult extends Operador{
	Mult (Exp a1, Exp a2) { super(a1,a2);}
}

//adicionado divisao e subtração
class Div extends Operador{
	Div (Exp a1, Exp a2) { super(a1,a2);}
}

class Sub extends Operador{
	Sub (Exp a1, Exp a2) { super(a1,a2);}
}
