type
    Human=class
      public
            Name:string;
            Age:integer;
            Height:integer;
    end;
 var h:Human;
    begin
          h:=Human.Create;
          writeln ('Привет, я хочу немного узнать о себе');
          writeln ('Как тебя зовут?');
          readln(h.Name);
          writeln('Отлично, ',h.Name,', а сколько тебе лет?');
          readln(h.Age);
          if (h.Age>17)then writeln ('Отлично ',h.Name,' похоже, что Вы уже совершеннолетний!' )   
          else writeln('похоже, что Вы еще не совершеннолетний');
          writeln('Последний вопрос, ',h.Name,' какой ваш рост(см)?');
          readln(h.Height);
          writeln('Спасибо, ',h.Name,', теперь мы собрали всю информацию:');
          writeln('Вас зовут: ',h.Name);
          writeln('Вам ' ,h.Age,' лет и ваш рост составляет ',h.Height);
          writeln('До свидания, ',h.Name,'!');
    end.
