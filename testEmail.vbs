dim args : set args = WScript.Arguments

Set emailObj      = CreateObject("CDO.Message")

emailObj.From     = "fakeemailasdf4@gmail.com"
emailObj.To       = "fakeemailasdf4@gmail.com"

emailObj.Subject  = "Message"
emailObj.TextBody = args(0)

Set emailConfig = emailObj.Configuration

emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing")    = 2  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl")      = true 
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername")    = "fakeemailasdf4@gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword")    = "davidblue"

emailConfig.Fields.Update

emailObj.Send

If err.number = 0 then Msgbox "Done"

