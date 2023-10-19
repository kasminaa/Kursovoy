type
School = class                    {объявление класса}
fam: string;                      {объявление полей}
name:string; 
klas: 1..11;
age:6..18; 

Constructor Create (fm: string; kl: 1..11; ag:6..18) ;{метод- конструктор с параметрами}
begin          
 fam := fm;
 klas := kl;
 age := ag;
end;

procedure Print ;{ метод- процедура вывод содержимого объекта на экран}
begin          
writeln(fam:8, name:4, klas:4,' класс',age: 4, ' лет');
end;

end;

var uchenik: School; // Объект УЧЕНИК ШКОЛЫ (экземпляр класса)
  f:string;
 kl,v:integer;
 
begin 
writeln('Введите фамилию'); readln(f);
 writeln('Введите класс'); readln( kl);
writeln('Введите возраст'); readln(v);
                                      // Создание 1 объекта( учащийся ШКОЛЫ)
uchenik := School.Create(f, kl, v) ; 
writeln('Сведения об учащихся'); // Вывод сведений об 1 учащемся
writeln(' Фамилия      Класс      Возраст');
uchenik .Print; 
end.
