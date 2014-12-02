setfenv(loadstring(http.get("https://raw.github.com/DerFisch/HexaOS/master/src/updater.lua").readAll()), getfenv())()
