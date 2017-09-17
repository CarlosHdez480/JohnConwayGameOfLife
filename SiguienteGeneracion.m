function Y = SiguienteGeneracion(X)

% Prealojamos e inicializamos
    Y = zeros(size(X));

% Para cada celda del mundo
% Contamos los vecinos "vivos" de cada celda
% Aplicamos las reglas para generar la
% la siguiente generación
    for i=2:size(X,1)-1
        for j=2:size(X,2)-1
        
        n=cuentavivos(X,i,j);
        
            if X(i,j)==1
       
                if n<2
                    Y(i,j)=0;
                end
                if n>=2 && n<=3
                     Y(i,j)=1;
                end
                if n>3
                    Y(i,j)=0;
                end
            else
                if n==3
                    Y(i,j)=1;
                end
            end
        end
    end   
end    
