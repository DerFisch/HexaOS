local image = paintutils.loadImage("hexa/gui/login")
paintutils.drawImage(image, 1, 1)
term.setCursorPos(1,13)
write("Please enter your username: ")
local name = read()
file = fs.open("/disk/data/.name","r")
file.readLine()
--file.close() --the file handle will coklose before it can read it.othxka y
if name == file.readLine() then -- i'll fix
write("Password: ")
local pass = read("*")
file2 = fs.open("/disk/data/.pass","r")
file2.readLine()
if pass == file.readLine2() then
print("Correct!")
end
end
file.close() -- put everything u want to do with ".name" above here.
file2.close()
