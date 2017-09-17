function cont=cuentavivos(X,i,j)
    %Contamos vivos
     cont=X(i-1,j-1)+ X(i-1,j)+ X(i-1,j+1)+X(i,j-1)+X(i,j+1)+X(i+1,j-1)+X(i+1,j)+X(i+1,j+1);
           
end
    


