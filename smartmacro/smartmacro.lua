VERSION = "0.1"

if GetOption("smartmacro0") == nil then AddOption("smartmacro0","") end
if GetOption("smartmacro1") == nil then AddOption("smartmacro1","") end
if GetOption("smartmacro2") == nil then AddOption("smartmacro2","") end
if GetOption("smartmacro3") == nil then AddOption("smartmacro3","") end
if GetOption("smartmacro4") == nil then AddOption("smartmacro4","") end
if GetOption("smartmacro5") == nil then AddOption("smartmacro5","") end
if GetOption("smartmacro6") == nil then AddOption("smartmacro6","") end
if GetOption("smartmacro7") == nil then AddOption("smartmacro7","") end
if GetOption("smartmacro8") == nil then AddOption("smartmacro8","") end
if GetOption("smartmacro9") == nil then AddOption("smartmacro9","") end

MakeCommand("smartmacro0","smartmacro.smartmacro0",0)
MakeCommand("smartmacro1","smartmacro.smartmacro1",0)
MakeCommand("smartmacro2","smartmacro.smartmacro2",0)
MakeCommand("smartmacro3","smartmacro.smartmacro3",0)
MakeCommand("smartmacro4","smartmacro.smartmacro4",0)
MakeCommand("smartmacro5","smartmacro.smartmacro5",0)
MakeCommand("smartmacro6","smartmacro.smartmacro6",0)
MakeCommand("smartmacro7","smartmacro.smartmacro7",0)
MakeCommand("smartmacro8","smartmacro.smartmacro8",0)
MakeCommand("smartmacro9","smartmacro.smartmacro9",0)
MakeCommand("setmacro","setmacro.setmacro",0)

function construct_macro()

end

function smartmacro0()
	local mc = construct_macro(GetOption("smartmacro0"))
end

function smartmacro1()
	local mc = construct_macro(GetOption("smartmacro1"))
end

function smartmacro2()
	local mc = construct_macro(GetOption("smartmacro2"))
end

function smartmacro3()
	local mc = construct_macro(GetOption("smartmacro3"))
end

function smartmacro4()
	local mc = construct_macro(GetOption("smartmacro4"))
end

function smartmacro5()
	local mc = construct_macro(GetOption("smartmacro5"))
end

function smartmacro6()
	local mc = construct_macro(GetOption("smartmacro6"))
end

function smartmacro7()
	local mc = construct_macro(GetOption("smartmacro7"))
end

function smartmacro8()
	local mc = construct_macro(GetOption("smartmacro8"))
end

function smartmacro9()
	local mc = construct_macro(GetOption("smartmacro9"))
end

function setmacro()

end

BindKey("Alt-0","smartmacro0")
BindKey("Alt-1","smartmacro1")
BindKey("Alt-2","smartmacro2")
BindKey("Alt-3","smartmacro3")
BindKey("Alt-4","smartmacro4")
BindKey("Alt-5","smartmacro5")
BindKey("Alt-6","smartmacro6")
BindKey("Alt-7","smartmacro7")
BindKey("Alt-8","smartmacro8")
BindKey("Alt-9","smartmacro9")

AddRuntimeFile("smartmacro","help","help/smartmacro.md")
