
'This is how you run a vb script from a vb script
Dim script
Set script = Wscript.CreateObject("WScript.shell")

'Copy the three sets of files for local versions
script.run("CopyFileFromInternet.vbs http://wumbogames.github.io/secret/files.txt files.txt")
script.run("CopyFileFromInternet.vbs http://wumbogames.github.io/secret/runOnUpdate.txt runOnUpdate.txt")
script.run("CopyFileFromInternet.vbs http://wumbogames.github.io/secret/runOnStart.txt runOnStart.txt")


'We need this for some reason because otherwise the script will try to read from the file before it is finished being closed
WScript.sleep 5000

'Copy all of the files from files.txt
script.run("CopyAllFiles.vbs files.txt")

'Run the runOnStart file
script.run("ExecuteFile.vbs runOnStart.txt")
