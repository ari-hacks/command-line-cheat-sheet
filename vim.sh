# Vim Cheat Sheet
#https://devhints.io/vim 


#########
#Exiting 
########
:qa             #Close all files
:qa!            #Close all files, abandon changes
:w              #Save
:wq | :w        #Save and close file
:q              #Close file
:q!             #Close file, abandon changes
ZZ              #Save and quit
ZQ              #Quit without checking changes


#########
#Navigating 
########
h j k l	          #Arrow keys
<C-U> / <C-D>	    #Half-page up/down
<C-B> / <C-F>	    #Page up/down
0 (zero)	        #Start of line
^	                #Start of line (after whitespace)
$	                #End of line

#########
#Editing 
########
a             #Append
A             #Append from end of line
i	            #Insert
o	            #Next line
O	            #Previous line
s	            #Delete char and insert
S	            #Delete line and insert
C	            #Delete until end of line and insert
r	            #Replace one character
R	            #Enter Replace mode
u	            #Undo changes
<C-R>	        #Redo changes


#########
#Exiting insert mode  
########
Esc / <C-[>	  #Exit insert mode
<C-C>	        #Exit insert mode, and abort current command

#########
#Clipboard 
########
x	            #Delete character
dd	          #Delete line (Cut)
yy	          #Yank line (Copy)
p	            #Paste
P	            #Paste before
"*p / "+p	    #Paste from system clipboard
"*y / "+y	    #Paste to system clipboard
