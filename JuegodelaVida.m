
function X = JuegodelaVida(N,Semilla,Lapso)

% Prealojar la matriz del mundo como matriz escasa
    X = sparse(N,N);

% Colocar la Semilla en el mundo, aproximadamente
% en centro.

    t=size(Semilla,2);
    z=size(Semilla,1);

for i=1:z
    
    for j=1:t
        
        X(ceil(N/2)-ceil(t/2)+i,ceil(N/2)-ceil(z/2)+j)=Semilla(i,j);
        
    end
end

% Mostrar la configuraci�n inicial del mundo
% usando una imagen.

    image(255*X);
    title('Image1');
    colormap(flipud(gray));

% Hacer una pausa
    pause(Lapso);

% Bucle
    r=1;
        while(1)
%% Generar la siguiente generaci�n mediante
% la aplicaci�n de las reglas
        
                X=SiguienteGeneracion(X);
      

%% Mostrar la configuraci�n del mundo
% usando una imagen.
         r=r+1;
         image(255*X);

        title(['Image',num2str(r)]);
        colormap(flipud(gray));

%% Hacer una pausa

        pause(Lapso)

        end
end
