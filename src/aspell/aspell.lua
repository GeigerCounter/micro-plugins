VERSION = "0.1"
--A no frills, not really integrated aspell wrapper

MakeCommand("aspell","aspell.aspell", 0)

function aspell()
	CurView().Buf:Save()
	local aspell = "aspell"
	if OS == "windows" then
		aspell = aspell .. ".exe"
	end
	local ft = CurView().Buf.Settings["filetype"]
	if ft == "html" or ft == "html4" or ft =="html5"  then
		aspell = aspell .. " -H"
	end
	aspell = aspell .. " -c "
	aspell = aspell .. CurView().Buf:GetName()
	HandleShellCommand(aspell, true, true)
	CurView().Buf:ReOpen()
	messenger:Message("Finished Spellchecking")
end
