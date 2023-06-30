//Letra G
function X = geracao_congruencial(seed,tamanho)
    
    //Parârametros
    a = 1664525;
    c = 1013904223;
    m = 2^32
    
    X = zeros(1, tamanho);
    X(1) = seed;
    
    for i = 2:tamanho
        X(i) = modulo(a * X(i-1) + c, m);
    end
    
    X = X / m;
endfunction

seed1 = 3;
seed2 = 102;
tamanho = 10000;

//Geração das amostras para semente de tamanho 3
amostra1 = geracao_congruencial(seed1,tamanho);
disp(amostra1);

disp(["------------------------------------"]);

//Geração das amostras para semente de tamanho 102
amostra2 = geracao_congruencial(seed2,tamanho);
disp(amostra2);

//Geração das mil amostras
amostra3 = grand(1,10000,'unf',0,1);

// Letras H e I

//Geração e comparação dos histogramas
subplot(1,2,1);
histplot(10,amostra1);
title('Amostra com semente 3');

//Geração das mil amostras
subplot(1, 2, 2);
histplot(10,amostra3);
title('Amostra aleatória com 10000 obersavações');
