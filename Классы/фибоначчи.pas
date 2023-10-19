VAR
chf :longint;
n:byte;
procedure fib(k:byte; var chf :longint);
VAR
chf1, chf2 :longint;
begin
if k <=1 then chf:=1 else begin
fib(k-1,chf1); {рекурсивный вызов}
fib(k-2,chf2);
chf:=chf1 + chf2 end end;
BEGIN readln(n);
fib(n,chf); {вызов процедуры}
writeln(n, '-e число Фибоначчи-', chf)
end.