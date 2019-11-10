clc, clear;
seguir_operando ="true";
disp("*** CALCULADORA B�SICA ***");

while seguir_operando=="true"
    num_a = input('Ingrese n�mero A: ');
    num_b = input('Ingrese n�mero B: ');
    % Las comillas dobles indican que la matriz es tipo strong, mientras
    % que comillas simples indican que es matriz tipo char. Puede convertir 
    % matriz de cadenas a una de caracteres utilizar la funci�n char().    
    disp("(S)uma");
    disp("(R)esta");
    disp("(M)ultipicaci�n");
    disp("(D)ivisi�n");
    
    resultado = "";
    opc_valida = "true";
    
    while opc_valida=="true"
        operacion = input('Escoga la letra de la operaci�n deseada: ','s');
        opc_valida="false";     
        switch lower(operacion)
            case 's'
                resultado = num_a+num_b;
            case 'r'
                resultado = num_a-num_b;
            case 'm'
                resultado = num_a*num_b;
            case 'd'
                if num_b == 0
                    disp("Imposible dividir para cero");
                else
                    resultado = num_a/num_b;
                end
            otherwise
                disp('Opcion incorrecta! Seleccione de nuevo: ');
                opc_valida="true";
        end
    end 
       
    if int2str(resultado) ~= ""
        disp('Respuesta:');
        display(resultado);
    end
    
    aux=input('Desea seguir operando? Y/n: ','s');
    if lower(aux) == 'y'
        seguir_operando ="true";
    elseif lower(aux) == 'n'
        seguir_operando ="false";
    else
        disp("Ha seleccionado una opci�n incorrecta.");
    end
    
end 

