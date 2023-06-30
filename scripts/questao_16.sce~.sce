r = 2;
n = 500000;

// Gerar amostras das variáveis X e Y
X = grand(1,n,'unf',-r,r);
Y = grand(1,n,'unf',-r,r);

// Calcular a quantidade de dardos na região circular
quant_dardos_circ = sum(X.^2+Y.^2 <= r^2);

//Quantidade de dardos no quadrado
quant_dardos_quad = length(X);

//Estimar o valor de Pi
valor_estimado_pi = 4*quant_dardos_circ/quant_dardos_quad;

disp(["Valor estimado de PI =",string(valor_estimado_pi)]);
