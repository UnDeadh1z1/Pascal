program lab10;

uses crt;

{
f - Файл, с которым мы работаем (file.txt)
fd - вспомогательный файл, помогающий работать с f (fd.txt)
w - переменная типа char в которую пользователь вводит свой выбор
pos - выбранная ячейка файла (dFile() и cFile())
i - счетчик ячеек файла (dFile() и cFile())
с - char, через нее записываются входные данные в файл и через нее же выводятся
}

var
  f, fd: file of char;

procedure newF(fc: file of char);
var
  c: char;

begin
  // 8. Стандартный алгоритм создания файла
  rewrite(fc); // 9. Открыть файл для записи
  textcolor(2);
  writeln('Для того, чтобы заверщить,');
  writeln('на новой строке введите [ctrl]+[Z]');
  writeln();
  textcolor(0);
  writeln('Введите данные в файл: ');
  while not eof do // 10. Пока не конец повторять цикл
  begin
    read(c); // 11. Ввод входных данных
    write(fc, c); // 12. Запись в файл входных данных
  end;
  close(fc); // 13. Закрыть файл
  readln();  // 14. Очистить кэш (мусор)
  clrscr;
end;

procedure outFile();
var
  c: char;
begin
  // 15. Стандартный алгоритм вывода данных из файла
  reset(f); // 16. Открыть файл для чтения
  textcolor(2); 
  writeln('Ваш файл: ');
  writeln();
  textcolor(0);
  while not eof(f) do // 17. Пока не конец файла повторять
  begin
    read(f, c); // 18. Прочитать из файла в переменную
    write(c); // 19. Вывести на экран переменную
  end;
  close(f); // 20. Закрыть файл
  writeln();
  textcolor(0);
end;

procedure aFile();
var
  w, c: char;
  pos, i: integer;
begin
  repeat
    writeln('Раздел добавления в файл');
    writeln();
    textcolor(2);
    writeln('1. Добавить символы в начало файла');
    writeln('2. Добавить символы в середину файла');
    writeln('3. Добавить символы в конец файла');
    writeln('4. Вернуться назад');
    writeln();
    textcolor(0); write('[Ваш выбор]: ');
    readln(w); // 26. Выбор куда именно добавлять файл
    clrscr;
    outFile();
    writeln();
    if w in ['1'..'3'] then
    begin
      assign(fd, 'dFilefile.txt');
      case w of
        '1': // 27. Добавить в начало
          begin
            newF(fd); // 28. Добавляем в начало
            reset(fd);
            seek(fd, filesize(fd) - 2);
            reset(f);
            while not (eof(f)) do // 29. Добавляем остальное
            begin
              read(f, c);
              write(fd, c);
            end;
            close(f);
            close(fd);
            rewrite(f);
          end;
        '2': // 30. Добавить в середину
          begin
            reset(f);
            if not (filesize(f) mod 2 = 0) then
            begin
              repeat
                writeln('В файле нечетное количество символов, выберите');
                writeln();
                writeln('1. Добавить символы перед центром');
                writeln('2. Добавить символы после центра');
                writeln('3. Вернуться назад');
                writeln();
                write('[Ваш выбор]: ');
                readln(w); // 31. Уточнить до или после центрального символа
                           // если символов нечетное количество
                clrscr;
              until w in ['1'..'3'];
            end;
            if not (w = '3') then begin
              newF(fd); // 32. Вводим данные
              reset(fd);
              seek(fd, filesize(fd) - 2);
              if not ((filesize(f) - 2) mod 2 = 0) then
              begin
                pos := (filesize(f) - 3) div 2;
                if w = '2' then
                  pos := pos + 1;
              end
              else
                pos := (filesize(f) - 2) div 2;
              seek(f, pos);
              while not eof(f) do // 33. К введеному добавляем вторую половину
              begin
                read(f, c);
                write(fd, c);
              end;
              close(fd);
              seek(f, pos); // 34. Смещаем указатель чтобы записать сразу после
                            // первой половины
            end;
          end;
        '3':
          begin
            rewrite(fd);
            close(fd);
            reset(f);
            seek(f, filesize(f) - 2); // 35. Сразу переходим в конец файла
            textcolor(0);
            writeln('Введите текст:');
            while not eof do // 36. Вводим в конец пока не ввели конец
            begin
              read(c);
              write(f, c);
            end;
          end;
      end;
      reset(fd);
      while not eof(fd) do // 37. Перекопировать данные в исходный файл, для
                           // третьего выбора не выполняется
      begin
        read(fd, c);
        write(f, c);
      end;
      close(f);
      close(fd);
      erase(fd);
    end;
    clrscr;
    textcolor(0);
  until w = '4';
end;

procedure dFile();
var
  c: char;
  pos, i: integer;
begin
  pos := 0;
  
  repeat
    writeln('Раздел удаления данных из файла');
    writeln();
    textcolor(2);
    writeln('Для выбора нажимайте [<=]/[=>]');
    writeln('Для удаления нажмите [Enter]');
    writeln();
    writeln('Для выхода нажмите [Esc]');
    writeln();
    textcolor(0); writeln('Ваш файл: ');
    writeln();
    i := 0;
    reset(f);
    while not eof(f) do
    begin
      if pos = i then // 43. Проверка дошел ли счетчик до позиции
        textbackground(4);
      read(f, c);
      write(c);
      textbackground(15);
      i := i + 1;
    end;
    writeln();
    writeln('Выбран символ #', pos + 1);
    
    case readkey of // 38. Запрос действия от пользователя
      #37: if pos > 0 then pos := pos - 1; // 39. Стрелка влево (сместить позицию)
      #39: if pos < filesize(f) then pos := pos + 1; // 40. Стрелка вправо (сместить позицию)
      #27: break; // 41. Esc
      #13: // 42. Enter
        begin
          assign(fd, 'dFilefile.txt');
          rewrite(fd);
          seek(f, 0);
          for i := 0 to pos - 1 do // 44. Перекопировать первуб половину до выбранного символа
          begin
            read(f, c);
            write(fd, c);
          end;
          if not (filepos(f) = filesize(f)) then
            read(f, c); // 45. Прочитать выбранный символ
          while not eof(f) do // 46. Перекопировать остальную половину
          begin
            read(f, c);
            write(fd, c);
          end;
          close(f);
          close(fd);
          rewrite(f);
          reset(fd);
          while not eof(fd) do // 47. Перезаписать исходный файл с удаленным символом
          begin
            read(fd, c);
            write(f, c);
          end;
          close(fd);
        end;
    end;
    close(f);
    clrscr;
  until false;
  if fileexists('dFilefile.txt') then
    erase(fd);
  close(f);
  writeln();
  writeln('Для выхода нажмите любую клавишу');
  readkey;
  clrscr;
end;

procedure cFile();
var
  c: char;
  pos, i: integer;
begin
  pos := 0;
  reset(f);
  repeat
    writeln('Раздел изменения данных файла');
    writeln();
    textcolor(2);
    writeln('Для выбора нажимайте [<=]/[=>]');
    writeln('Для изменения нажмите [Enter]');
    writeln();
    writeln('Для выхода нажмите [Esc]');
    writeln();
    textcolor(0); writeln('Ваш файл: ');
    writeln();
    seek(f, 0);
    i := 0;
    while not eof(f) do
    begin
      if pos = i then
        textbackground(2);
      read(f, c);
      write(c);
      textbackground(15);
      i := i + 1;
    end;
    writeln();
    writeln('Выбран символ #', pos + 1);
    
    case readkey of
      #37: if pos > 0 then pos := pos - 1;
      #39: if pos < filesize(f) then pos := pos + 1;
      #27: break;
      #13:
        begin
          write('Введите ваше изменение: ');
          seek(f, pos); // 49. Все тоже самое, что и в удалении, только
                        // мы сразу переходим на выбранную позицию и перезаписываем
                        // только ее
          read(c);
          write(f, c);
          readln();
        end;
    end;
    clrscr;
  until false;
  close(f);
  writeln();
  writeln('Для выхода нажмите любую клавишу');
  readkey;
  clrscr;
end;

procedure eFile();
var
  w: char;
begin
  repeat
    textcolor(0); writeln('Раздел редактирования файла');
    writeln();
    textcolor(2);
    writeln('1. Добавить данные в файл');
    writeln('2. Удалить данные из файла');
    writeln('3. Измененить данные файла');
    writeln('4. Вернуться назад');
    writeln();
    textcolor(0);
    write('[Ваш выбор]: ');
    readln(w); // 21. Выбор редактирования
    clrscr;
    case w of
      '1': // 22. Пользователь решил добавить символы
        begin
          reset(f);
          if filesize(f) > 0 then
          begin
            
            close(f);
            aFile();
          end
          else
                close(f);
        end;
      '2': dFile(); // 23. Пользователь решил удалить символы
      '3': cFile(); // 24. Пользователь решил изменить символы
    end;
    
  until w = '4'; // 25. Пользователь решил вернуться обратно в меню
end;

var
  w: char;

begin
  textbackground(15);
  clrscr;
  assign(f, 'file.txt');
  repeat
    writeln('Меню');
    writeln();
    textcolor(2); 
    if fileexists('file.txt') = false then
      writeln('1. Создать файл')
    else 
      writeln('1. Пересоздать файл');
    if fileexists('file.txt') = false then 
      textcolor(12); 
    writeln('2. Посмотреть файл');
    writeln('3. Редактировать файл');
    textcolor(2);
    writeln('4. Выйти из программы');
    writeln();
    textcolor(0);
    write('[Ваш выбор]: ');
    readln(w); // 1. Выбор пользователя в главном меню
    clrscr;
    if w = '1' then // 2. Пользователь захотел создать файл
    begin
      writeln('Раздел создания файла');
      writeln();
      newF(f);
    end
    else  
    if fileexists('file.txt') then // 3. Если файл создан, проверить, не выбрал
                                   // ли пользователь что-то из ниже перечисл.
      case w of
        '2': // 4. Пользователь захотел посмотреть файл
          begin
            writeln('Раздел просмотра файла');
            writeln();
            outFile(); // 5. Показать файл
            writeln('Для выхода нажмите любую клавишу');
            readkey;
            clrscr;
          end;
        '3': eFile(); // 6. Пользователь захотел изменить файл -> сделать это
      end;
    
  until w = '4'; // 7. Пользователь захотел выйти из программы -> сделать это
end.