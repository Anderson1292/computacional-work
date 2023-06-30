sample_number = 10000; // Número de amostras 
a = 0; // limite inferior
b = 10; // limite superior
n_values = [2,5,50]; // valores de n

// Letra A

X = grand(1,sample_number,'unf',a,b); // Geração da amostra

histplot(0:0.5:10,X); // Plot do histograma

// Letras B e C

for n = n_values
    X_barra = zeros(1,sample_number);
    
    for i = 1:sample_number
        X = grand(1,n,'unf',a,b); //Geração das observações X1,X2,...,Xn
        X_barra(i) = sum(X)/n; //Cálculo dos valores associados de X barra para cada valor de n
        
    end
    
    disp(["Valores de X barra para n =" string(n)]);
    disp(X_barra);
end

// Letras D e E

for n = n_values
    X_barra = zeros(1, sample_number);
    
    for i = 1:sample_number
        X = grand(1, n, 'unf', a,b);  // Geração das observações X1, X2, ..., Xn
        X_barra(i) = sum(X) / n;
    end
    
    figure();
    histplot([0:0.2:10],X_barra);//Esboço do histograma de X barra para os diferentes valores de n
    
    xtitle(["Histograma de X barra para n =", string(n)]);
    
    //Calculo dos valores das medias e  desvios padroes dos diferentes valores de n
    mean_X = mean(X);  // Cálculo da média amostral
    std_X = stdev(X);  // Cálculo do desvio padrão amostral

    disp(["Para n =", string(n)]);
    disp(["Média:", string(mean_X)]);
    disp(["Desvio padrão amostral:", string(std_X)]);
    disp("----------------------------------");

end
