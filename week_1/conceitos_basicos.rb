s = "\n---------------------"
# Aula 2

puts "**Tipos de dados**"

puts s

# Class and superclass (tipagem dinâmica)

num = 2
numclass = num.class, num.class.superclass, num.class.superclass.superclass, num.class.superclass.superclass.superclass, num.class.superclass.superclass.superclass.superclass

print "O uso do .superclass mostra também os outros dados dos elementos. Por exemplo todos esses dados são de um mesmo elemento #{numclass}."

puts s

# Integer
int = 10
int.class
print "Valor #{int} e classe #{int.class}"

puts s

# Float
float = 10.10
float.class
print "Valor #{float} e classe #{float.class}"

puts s

# Boolean
boo = true
boo.class
print "Valor #{boo} e classe #{boo.class}"

puts s

boo = false
boo.class
print "Valor #{boo} e classe #{boo.class}"

puts s

# String
string = "Olá, isso é uma string, para fazer uma string usamos aspas simples e dupla"
string.class
print "#{string} e essa é a sua classe #{string.class}"

puts s

# Array
array = ["position0", "position1", "position2"]
array.class
print "Este é um array indicando posições #{array} e essa é a sua classe #{array.class}"

puts s

# .object_id
puts "O .object_id serve para saber onde está determinado Symbol"
array.object_id
print "Por exemplo, o array.object_id está na posição da memória em #{array.object_id}"

puts s

# Hash

hash = {company: "Capim", from: "Brazil", state: "São Paulo"}
print "Aqui estamos usando a hash para fazer uma busca de elementos específicos, por exemplo: A #{hash[:company]} é uma empresa que fica no #{hash[:from]} especificamente em #{hash[:state]}."

puts s

# Operadores matemáticos: +, =, /, *, **(exponencial) e %(Retorna o resto de uma divisão)

a = 10
b = 10
a = a + 5
b += 5

print "Valor de a = #{a} e o valor de b = #{b} a forma que foi feita a soma em a é diferente de b mas eles imprimiram o mesmo resultado se fizer uma comparação booleana o valor retornado será true, formas diferentes resultados iguais. Existem duas formas de usar os operadores matemáticos a = a + 5 == a += 5. Com outros operadores também é possível como x -= y, x *= y, x /= y, x %= y, x **= y"

puts s