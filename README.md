# ruby_devops2017
#TASK 1

#Task1_1: Обработка строк

* Description:

На вход подается переменная строки.

Написать однострочную инструкцию, которая поменяет порядок букв на противоположный и понизит все буквы в регистре кроме первой.

Вернуть значение результата. Оригинальный объект, на который ссылается переменная, должен быть изменен.

* Пример:

a = "dniMyMdegnahCybuR"

a.object_id # => 12345

Важно! Сигнатура метода (имя, количество аргументов) должно совпадать с примером

def test(value)

 < ваш код тут >
 
end

test(a) # => "Rubychangedmymind"

test(a).class # => String

test(a).object_id # => 12345

puts a # => "Rubychangedmymind"

* Решение:

[task1_1.rb](scripts/task1_1.rb)

