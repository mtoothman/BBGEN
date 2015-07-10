--this macro enters all passwords incrementally, beginning with AAAAA, and records the output (valid/invalid, result if any.)
while true do

  --gui.text(50,50,"Hello world!");

  --[[emu.speedmode(string mode)

Set the emulator to given speed. The mode argument can be one of these:
       - "normal"
       - "nothrottle" (same as turbo on fceux)
       - "turbo"
       - "maximum"]]

  --starting array 
  char_array = [0, 0, 0, 0, 0]

  --increment positions 1-5 by X digits
  alter_1 = 0
  alter_2 = 0
  alter_3 = 0
  alter_4 = 0
  alter_5 = 0

  

  while alter_1 = 0 do
    joypad.set(1, {UP=1})
    alter_1 += 1
    emu.frameadvance()
  
  end



--[[pinball example
while true do
  inpt  = input.get();

  gui.line(inpt['xmouse'] - 2, inpt['ymouse'], inpt['xmouse'] + 2, inpt['ymouse'], "white");
  gui.line(inpt['xmouse'], inpt['ymouse'] - 2, inpt['xmouse'], inpt['ymouse'] + 2, "white");

  ball  = { x = memory.readbyte(0x0016), y = memory.readbyte(0x0018) };

  gui.line(ball['x'] - 2, ball['y'], ball['x'] + 2, ball['y'], "white");
  gui.line(ball['x'], ball['y'] - 2, ball['x'], ball['y'] + 2, "white");

  if inpt['leftclick'] then
    memory.writebyte(0x0016, inpt['xmouse']);
    memory.writebyte(0x0018, inpt['ymouse']);
  end
  emu.frameadvance();
end--]]

