VERSION = "0.1"

MakeCommand("spellcheck","spellcheck.spellcheck", 0)

if GetOption("highlightmisspell") == nil then
	AddOption("highlightmisspell",true)
end

if GetOption("keyboardlayout") == nil then
	AddOption("keyboardlayout","qwerty")
	SetOption("keyboardlayout","qwerty")
end

function GetMicroDict()
	--Creates an aspell dictionary in the plugin directory if one is not found
	return
end

function GetaspellConf(ft)
	local confstring = ""
	if ft == "html" or ft == "html4" or ft == "html5" then confstring = confstring .. " -H"
	elseif then confstring .. ""
	else confstring = confstring .. ""
	end
	if GetOption("keyboardlayout") then
		if GetOption("keyboardlayout") == "qwerty" then confstring = confstring .. "-keyboard"
		elseif GetOption("keyboardlayout") == "qwertz" then confstring = confstring .. "-keyboard"
		elseif GetOption("keyboardlayout") == "dvorak" then confstring = confstring .. "-keyboard"
		else messenger:Error("Warning: invalid keyboard layout. Ignored.")
		end
	end
	confstring = confstring .. " pipe"
	return confstring
end

function strsplit(str,delim)
	for i=1, #str do
	end
end 

function showsuggestions(word) 
	local prompt - ""
	CurView().HSplit(NewBuffer("spellcheck"))
	CurView().Type = 3
	while do
		prompt, canceled = messenger:LetterPrompt()
		if canceled then
			
		end
		if prompt == "a" then addtodict(word)
		elseif prompt == "1" then 
		elseif prompt == "2" then
		elseif prompt == "3" then
		elseif prompt == "4" then
		elseif prompt == "5" then
		elseif prompt == "6" then
		elseif prompt == "7" then
		elseif prompt == "8" then
		elseif prompt == "9" then
		elseif prompt == "0" then
		elseif prompt == "i" then
		elseif prompt == "r" then
		elseif prompt == "q" then
		else 
			messenger:Error("Please select a valid option!")
		end
	end
	CurView().Quit()
end

function spellcheck()
	local spellexec = GetaspellConf(CurView().Buf.Settings["filetype"])
	if spellexec == "error 1" then
		messenger:Error("Aspell required, but not found. Is it installed?")
		return
	end
	if spellexec == "error 2" then
		messenger:Error("Dictionary not found: Check aspell configuration.")
		return
	end
	local linecount = CurView().Buf.NumLines
	local curword = ""
	local suggestions = ""
	if CurView().Cursor.HasSelection()
		local haystack = CurView().Cursor:GetSelection()
		messenger:Message("Finished spellchecking selection")
		showsuggestions()
		return
	end
	for i=0, i<=linecount, i++ do
		CurView().Buf.Line(i)
		suggestions = HandleShellCommand("echo \"" .. curword .. "\" | " .. spellexec,false,false) 
		suglist = strsplit(suggestions,"")
	end
	messenger:Message("Finished spellchecking")
	return 
end

function spellhighlight()
	if then
		return
	end
end

function editdictionary()
	return
end

function onOpenFile(view)
	if GetOption("highlightmisspell")
		spellhighlight()
	end
end

AddRuntimeFile("spell","help","help/spell.md")
BindKey("F5","spell")
