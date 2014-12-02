function systemTime()
 local t = textutils.formatTime(os.time(), true)
 return string.rep("0", 5-t:len())..t
end

function log(text)
 print("["..systemTime().."] "..tostring(text))
 f = fs.open("hexa.log", "a")
 f.writeLine("["..systemTime().."] "..tostring(text))
 f.close()
end
