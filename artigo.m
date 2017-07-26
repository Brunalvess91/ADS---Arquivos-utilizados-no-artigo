%Slotted Aloha com n->infinito e p diferente de 1/n

%Normalização
clear all
clc
m = 30  %número de repeticoes do teste
n = 100 %número de nós
a = 2  %fator a
b = 2 %fator b

for k = 1:m  
rng('shuffle')          %semente com base no relogio do computador
r = betarnd(a,b,1,n);   %distribuição de probabilidade Beta aleatória
p = r/sum(r)            %obtenção da probabilidade já normalizada de cada nó transmitir
c = sum(p)              %mostra normalização das probabilidades
mult = 1;
   
        
%montando a nova matriz (1 - p(i))
    for i=1:n
        nao_sucesso(i) = 1 - p(i) %probabilidade do nó não transmitir
    end

    
    
%laço que calcula probabilidade de cada nó transmitir isoladamente
    for j=1:n
     posicao_atual = p(j); 
        for i=1:n
            if (i == j)
                ++i
            else mult = mult*nao_sucesso(i)  
            end
        end
        multiplicacao(j) = posicao_atual*mult;
        mfinal(k,j) = multiplicacao(j); %resultado do (pi* produtório (1-pn))
        
        
        
        %Mostra todos os resultados obtidos dos 30 testes gerados
        matriz_r (k,j) = r(j)                   %mostra todas as probabilidades aleatórias com base em beta geradas nos 30 testes 
        matriz_p(k,j) = p(j);                   %mostra todas as probabilidades geradas dos nós, normalizadas, nos 30 testes 
        um_menos_ps (k,j) = nao_sucesso(j);     % mostra todas as probabilidades de cada nó não transmitir nos 30 testes
        mult = 1;
        

    

    end  
end   


%Throughput
throughput = sum(mfinal,2);     %throughput de cada um dos 30 experimentos
media = mean(throughput);       %throughput medio


%Plota Throughput
plot(throughput)