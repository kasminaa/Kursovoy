var
n:integer; { число, факториал которого надо вычислить}
f:BigInteger; { факториал числа n }
function factorial ( k:integer): BigInteger; { Рекурсивная функция "Факториал" }
begin
if k = 1
then factorial:=1
else factorial:= k*factorial(k-1);
end;
begin { основная программа }
writeln ('Вычисление факториала с использованием рекурсивной ','функции.');
write ('Введите число, факториал которого надо вычислить ->');
readln(n);
f:=factorial (n);
writeln ('Факториал числа ',n,' равен ',f);
end.