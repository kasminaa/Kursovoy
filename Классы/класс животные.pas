type   Животное = class   
public  
    Имя: string;  
    constructor(Имя: string) :=Self.Имя := Имя;   
    procedure Голос; virtual:=Println('...'); 
    end;
 
Кошка = class(Животное) 
public   
 procedure Голос; 
 override :='Мяу!'.Println;
 end;
 
Собака = class(Животное) 
public    
Порода: string;  
 constructor(Имя, Порода: string);  
 begin     
 inherited Create(Имя);     
 Self.Порода := Порода   
 end;   
 procedure Голос; override;  
 begin     'Гав!'.Println  
 end; 
 end;
Корова = class(Животное) 
public    procedure Голос; 
override :='Му-у-у'.Println; 
end; 
 
begin   
var Хозяйство := new List<Животное>;  
 Хозяйство.Add(new Собака('Шарик','Двортерьер'));   
 Хозяйство.Add(new Кошка('Мурка'));  
 Хозяйство.Add(new Животное('Жорик'));  
 Хозяйство.Add(new Корова('Милка'));  
 Println('У нас в хозяйстве весело!');  
 foreach var Зверушка in Хозяйство do   
   begin     Print(Зверушка.GetType.Name,Зверушка.Имя+':');   
   Зверушка.Голос   end end.
