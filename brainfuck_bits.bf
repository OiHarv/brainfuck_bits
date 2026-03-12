# prints all the letters A-Z#

+++++[>+++++++++++++<-] get the 2nd set up as A
++[>>+++++++++++++<<-]>>- get a 25 counter we are looking at 3 0 null 1 A 2 25
<.>[<+.>-]

############################################################

#makes an 8x8 checkerboard pattern of x and o#

++++++++++ newline pos 0
>++++++++[>+++++++++++<-] 88 pos 3
>>+++++++[<<+++++++++++>>-]<<++ 79 pos 2
>>++++ 4 is now 4
>++++ 5 is now 4 
looking at 5
[ while 5 isn't 0
   <[ while 4 isn't 0 starting with x
        <.<.>>-
    ]
    <<<.>>>++++
    [ while 4 isn't 0 starting with o
        <<.>.>-
    ]
    <<<.>>>++++
    >-
]

simplified version: ++++++++++>++++++++[>+++++++++++<-]>>+++++++[<<+++++++++++>>-]<<++>>++++>++++
[<[<.<.>>-]<<<.>>>++++[<<.>.>-]<<<.>>>++++>-]

better visualised:
++++++++++ #0i10
>++++++++[>+++++++++++<-] #3i88
>>+++++++[<<+++++++++++>>-]<<++ #LA3 #2i79
>>++++>++++ #LA5 4tr5i4 
[
   <[#(x loop)
        <.<.>>-
    ]
    <<<.>>>++++
    [#(o loop)
        <<.>.>-
    ]
    <<<.>>>++++
    >-
]

######################################
#IN PROGRESS: binary string to number
input is i.e. "01001101" and it should spit out "077"
currently, I only have it to it putting everything in cell 10, not dividing by 10 to get units, tens and hundreds but
any brainfuck projects will be continued later.

>,>,>,>,>,>,>,>,                                          == LA 9 #1i0 2tr9iINP
[---------- ---------- ---------- ---------- --------<]   == LA 1 #2tr9i(m 48)
>>>>>>>>                                                  == LA 9
cell 10 is going to be the number
[>+<-]                                                    == LA 9 #10i(p 1)if9i1
<[>>++<<-]                                                == LA 8 #10i(p 2)if8i1
<[>>>++++<<<-]                                            == LA 7 #10i(p 4)if7i1
<[>>>>++++++++<<<<-]                                      == LA 6 #10i(p 8)if6i1
<[>>>>>++++++++++ ++++++++<<<<<-]                         == LA 5 #10i(p 16)if5i1
<[>++++[>>>>>++++++++<<<<<-]<-]                           == LA 4 #10i(p 32)if4i1
<[>++++++++[>>>>>>++++++++<<<<<<-]<-]                     == LA 3 #10i(p 64)if3i1
<[>++++++++++ ++++++[>>>>>>>++++++++++ ++++++<<<<<<<-]<-]
