﻿ {Измените код в файле time.pas так,
 чтобы по номеру года программа печатала
 количество дней в этом году. Добавьте новый файл timer.pas.
 Программа должна читать с клавиатуры количество часов, минут
 и секунд, и возвращать суммарное количество секунд
 . Сделайте коммит и запушьте изменения.

Замечание. Чтобы не делать git add для каждого файла по отдельности,
 используйте команду, добавляющую в индекс все файлы в директории:

git add .}
 begin
  var (hours, minutes, seconds) := (ReadInteger('Введите кол-во часов:'), ReadInteger('Введите кол-во минут:'), ReadInteger('Введите кол-во секунд:'));
  Assert((hours >= 0) and (minutes >= 0) and (seconds >= 0));
  var res : integer;
  res := hours * 3600 + minutes * 60 + seconds;
  Println($'{res} - секунд');
 end.
 
 {
 Введите кол-во часов: 10
Введите кол-во минут: 15
Введите кол-во секунд: 23
36923 - секунд

Введите кол-во часов: 12
Введите кол-во минут: 12
Введите кол-во секунд: 12
43932 - секунд

Введите кол-во часов: 1
Введите кол-во минут: 15
Введите кол-во секунд: 17
4517 - секунд

Введите кол-во часов: 0
Введите кол-во минут: 0
Введите кол-во секунд: 0
0 - секунд

Введите кол-во часов: 0
Введите кол-во минут: 15
Введите кол-во секунд: 0
900 - секунд

Введите кол-во часов: 1
Введите кол-во минут: 0
Введите кол-во секунд: 0
3600 - секунд

Введите кол-во часов: 0
Введите кол-во минут: 0
Введите кол-во секунд: 15
15 - секунд

 }