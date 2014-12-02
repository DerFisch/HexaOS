local osroot = fs.getDir(fs.getDir(shell.getRunningProgram()))
local apidir = osroot.."/.hexa/apis"
os.loadAPI(osroot.."/.hexa/hexa")

hexa.log("System boot in root \"/"..osroot.."\"")
hexa.log("Loading APIs")
