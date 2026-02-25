*** Test Cases ***
Hello World
	Log To Console   Hello, World!
Another Test
	${msg}=   Set Variable   Hello
	Should Be Equal   ${msg}  Hello
Check List
	${list}=   Create List   A   B   C
	#Append To List   ${list}   D
	Log To Console   ${list}   
