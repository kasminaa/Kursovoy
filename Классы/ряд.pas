Var n: integer;
S: real;
Procedure sumset(n:integer;var sum:real);
Var i: integer;
Begin
Sum := 0;
For i:=1 to n do sum:=sum+1/i;
End;
Procedure recursuon ( n : integer; var sum: real);
Begin
If n=1 then sum:=sum+1
Else
Begin
Sum:=sum+1/n;
Recursuon ( n-1, sum ) { рекурсивный вызов }
End;
End;
BEGIN
Writeln ('Вычисление частичной суммы ряда 1+1/2+1/3+...');
Write ( ' Введите кол-во суммируемых членов ряда- '); read (n);
sumset ( n, S);
Writeln ( ' Сумма первых ', n:3, ' членов ряда ( цикл) равна : ',s:7:3 );
S:=0;
Recursuon( n, s );
Writeln ( ' Сумма первых ', n:3, ' членов ряда ( рекурсия) равна : ',s:7:3 );
END.