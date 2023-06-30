lambda = 0.5;
amostra = grand(1,5000,'exp',lambda);

nova_amostra = zeros(1,5000);

for i = 1:5000
    nova_amostra(i) = 1/(1 + exp(-amostra(i)));
end

media_nova_amostra = mean(nova_amostra);
disp(["Média amostral da nova amostra = ",string(media_nova_amostra)]);

//Cálculo do valor esperado
//function y = F(x)
    //y = (lambda*exp(-lambda))/(1+exp(-lambda));
//endfunction

valor_esp = log(2);
disp(["Valor Esperado: ",string(valor_esp)]);
