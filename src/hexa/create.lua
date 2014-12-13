local image = paintutils.loadImage("hexa/gui/login")
paintutils.drawImage(image, 1, 1)
 
term.setCursorPos(1,13)
write("set username: ")
local name = read()
 
  file = fs.open("disk/data/.name","w")
    file.write(name)
  file.close()
 
paintutils.drawImage(image, 1, 1)
term.setCursorPos(1,13)
write("set password: ")
local pass = read("*")
 
term.setCursorPos(1,13)
sleep(0.3)
write("Repeat password: ")
local pass2 = read("*")
 
if pass == pass2 then
  file = fs.open("disk/data/.pass","w")
  file.write(pass)
  file.close()
  print("User Created! Please Login now.")
  sleep(1.5)
  shell.run("start")
 else
 print("Wrong password! Try again!")
 sleep(1)
 shell.run("clear")
 shell.run("create")
end
