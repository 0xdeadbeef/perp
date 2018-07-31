local function Printthisshit()

print(_G.SH_SETCVAR);
print(_G.SH_SETNAME);
print(_G.SH_PURECC);
print(_G.SH_LUARUN);
print(_G.SH_SETSPEED);
print(_G.SH_COMMANDNUMBER);
print(_G.SH_ISDORMANT);
print(_G.SH_MODVER);
print(_G.SH_READFILE);
print(_G.SH_WRITEFILE);
print(_G.SH_SUPPRESSIPLOGS);
print(_G.SH_RUNSCRIPTS);
print(_G.SH_REGREAD);
print(_G.SH_REGWRITE);
print(_G.SH_hl2_ucmd_getprediction);

end
concommand.Add("test_print_globals", Printthisshit)