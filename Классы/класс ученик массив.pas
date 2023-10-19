type
School = class                    {объявление класса}
fam: string;                      {объявление полей} 
klas: 1..11;
age:6..18; 

Constructor Create (fm: string; kl: 1..11; ag:6..18) ;

begin          {конструктор с параметрами}
 fam := fm;
 klas := kl;
 age := ag;
end;

procedure Print ;
begin          {описание метода- процедуры}
writeln(fam:4,  klas:4,' класс',age: 4, ' лет');
end;
end;

const n=3; // количество учащихся
var spisok: array[1..n] of School; // массив объектов типа ШКОЛА
 i,c: integer;
 f, fio:string;
 kl,v:integer;
 
begin 
{создание экземпляров класса, присваивание и вывод значений }
for i:=1 to n do 
begin
writeln('Введите фамилию'); readln(f);
writeln('Введите класс'); readln( kl);
writeln('Введите возраст'); readln( v);
// Создание массива объектов (формирование списка учащихся)
spisok[i] := School.Create(f, kl, v) ; 
end;
writeln('Сведения об учащихся');
writeln(' Фамилия      Класс      Возраст');
for i := 1 to n do // Вывод списка учащихся 
spisok [i] .Print;
end.
