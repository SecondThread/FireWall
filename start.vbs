Dim script
Set script = Wscript.CreateObject("WScript.shell")

script.run "update.vbs", 0, TRUE

script.run "helperScripts\ExecuteFile.vbs files\runOnStart.txt", 0, TRUE