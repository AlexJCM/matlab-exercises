function resultado = derivadaRegresivaV2(incremento, x)
% formula --->   f'(X0) = (f(X0)  - f(X0 - h)) / h

campo01 = feval('evaluarPolinomioComplejo', x);
campo02 = feval('evaluarPolinomioComplejo', (x - incremento));

resultado = (campo01 - campo02) / incremento;

end

