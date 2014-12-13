shell.run("clear")
 
local image = paintutils.loadImage("hexa/gui/login")
paintutils.drawImage(image, 1, 1)
term.setCursorPos(1,11)
print("1.Login")
term.setCursorPos(1,13)
print("2.Create Account")
term.setCursorPos(1,15)
print("3.Shutdown")
 
while true do
 local ev = {os.pullEvent()}
 if ev[1] == "char" then
  if ev[2] == "1" then
   shell.run("login")
  elseif ev[2] == "2" then
   shell.run("create")
  elseif ev[2] == "3" then
   print("Bye!")
   sleep(1.5)
   os.shutdown()
  end
 end
end
