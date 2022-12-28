#PSEDUO-CODE PRACTICE EXAMPLES 
#EX-1:a method that returns the sum of two integers
  #INFORMAL:
    #prompt the user with a welcome message
    #prompt the user for an input
    #take input (number) one form the user
    #prompt for second input 
    #take input (number) Two from the user 
    #add the two values together
    #display the final output
  #FORMAL:
    #START
    #PRINT : Welcome message to user
    
    #PRINT: prompt the user for input 1
    #GET Input one from user = num 1
    
    #PRINT: Prompt user for input 2
    #GET: Input form user =  num2

    #SET: total = num1(convert to int) + num2(convert to int)
    #PRINT: total 
    #END

#EX-2: a method that takes an array of strings, and returns a string that is all those strings concatenated together
  #INFORMAL
    #create an empty string
    #iterate over targeted array
    #append each value to the string
    #reassign string to value of sting in addition to nex iternation 
    #print string
  #FROMAL
    #START
    #SET s = empty string
    #WHILE iteratign array 
      #SET s to s + iteration 
    #END
    #PRINT S
    #END
#EX-3 
  #INFROMAL
    #create an array 
    #iterate over original array with index 
    #if Index % 2 is equals 0 put the element out the element if not move on 
  #FORMAL
    #START
    #SET create new empty array
    #WHILE Iterate over each element with index
        #IF index % 2 == 0 
          #push element to array
        #Else
          #next
        #END
      #END
    #PRINT new array 
    #END
#EX-4:
  #INFORMAL:
    #Ask the customer for an charater to target
    #read a targeted array 
    #count each occurance of a character in a targeted array 
    #print the current index position when count equals 3
    #stop
  #FORMAL
    #START
    #GET v value to look for in the string 

    #SET occurance = 0
    #SET arr = String split() map() 

      #WHILE occurance < 3
        #arr each() |s|
        #IF s == v 
          #occurance + 1
        #ELSE 
          #next
      #END
    #END

      

      



#EX-5: a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes
  #INFORMAL:
    #Arrays 1, 2 & 3(the last one should be empty)
    #set a method called merge that takes 3 arguments
    #create a variable to reresent the index at zero
    #create an until that breaks if your index variable is equal to the length of argument 1 or 2
    #use the loop to push each element in each argument 
    #increast the index by 1 on each iteration 
  #FORMAL
    #START
    #SET Array1
    #SET array2
    #SET Array 3
    
    #Define new method 
    #SET merge(a, b, c)
      #SET index = 0
      #WHILE(until) index == a length or index == b length
        #READ a push to c
        #READ b push to c
        #SET index = index + 1
      #END
    #PRINT Array 3 
    #END
