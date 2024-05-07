// // 3.1.1 Hello World
// println "Hello World"


// //3.1.2 Variables
// x = 1
// println x

// x = new java.util.Date()
// println x

// x = false
// println x

// x = "HI"
// println x 


//3.1.3 Lists


// myList =  [1776, -1, 33, 99, 0, 58923458345]
// println myList
// println myList[0]
// println myList.size()



//3.1.4 Maps
scores = [ "Brett":100, "Pete":"Did not finish", "Andrew":86.87934 ]
println scores["Pete"]
scores["Pete"] = 3

// To add data  or modifiy the map
scores["Cedric"] = 120
println scores["Pete"]



//3.1.5 Multiple assignment
/*
 * Demonstrating multiple assignment in a Nextflow script.
 */

// Multiple assignment from a list
(a, b, c) = [10, 20, 'foo']

// Assertion to ensure that the assignment works as expected
assert a == 10 && b == 20 && c == 'foo'

// Correct way to print multiple variables in one line using string interpolation
println "${a}, ${b}, ${c}"

println "${a}\n${b}\n${c}" // add newline 

// 3.1.6 Conditional Execution 

x = Math.random()
println x
if (x < 0.5 ) {
    println "You lost"
}
else{
    println "You won"
}


// 3.1.7 Strings
println "he said 'cheese' once" 
println 'he said "cheese!" again'

a = "world"
println "hello " + a + "\n" 
//Or
println "hello $a \n" 


// 3.1.8 String interpolation

foxtype = 'quick'
foxcolor = ['b', 'r', 'o', 'w', 'n']
println "The $foxtype ${foxcolor.join()} fox"
x = 'Hello'
println '$x + $y'


// 3.1.9 Multi-line strings


// text = """
// hello there James
// how are you today?
// """

// // println $text



// myLongCmdline = """ blastp \
// -in $input_query \
// -out $output_file \
// -db $blast_database \
// -html
// """
// result = myLongCmdline.execute().text

// println $result 


// 3.2 Closures

square = { it * it }

println square(9)

println([ 1, 2, 3, 4 ].collect(square))


printMapClosure = { key, value -> println "$key = $value"
}
[ "Yue" : "Wu", "Mark" : "Williams", "sudha" : "Kumari" ].each(printMapClosure)



process perlStuff {
"""
#!/usr/bin/perl
print 'Hi there!' . '\n';
"""
}
process pyStuff {
"""
#!/usr/bin/python
x = 'Hello'
y = 'world!'
print "%s - %s" % (x,y)
"""
}



printMapClosure = { key, value ->
println "$key = $value"
}
[ "Yue" : "Wu", "Mark" : "Williams", "sudha" : "Kumari" ].each(printMapClosure)



myMap = ["China": 1 , "India" : 2, "USA" : 3]
result = 0
myMap.keySet().each( { result+= myMap[it] } )
println result