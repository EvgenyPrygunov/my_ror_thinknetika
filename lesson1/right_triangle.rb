print 'Введите первую сторону: '
a = gets.to_f
if (a < 0)
  print 'Значение должно быть больше 0. Введите еще раз: '
  a = gets.to_f
end

print 'Введите вторую сторону: '
b = gets.to_f
if (b < 0)
  print 'Значение должно быть больше 0. Введите еще раз: '
  b = gets.to_f
end

print 'Введите третью сторону: '
c = gets.to_f
if (c < 0)
  print 'Значение должно быть больше 0. Введите еще раз: '
  c = gets.to_f
end

if (( a ** 2 == b ** 2 + c ** 2 ) || ( b ** 2 == a ** 2 + c ** 2) || ( c ** 2 == a ** 2 + b ** 2))
  puts 'Треугольник прямоугольный.'
end 

if (( a == b) && ( a == c))
  puts 'Треугольник равносторонний'
  elsif (( a == b) || ( a == c) || ( b == c))
    puts 'Треугольник равнобедренный.'
end
