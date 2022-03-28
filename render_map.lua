local txtColor = {r=1,g=0.2,b=0};
local playerName = 'hydrogen18';

local destX = 200;
local destY = 155;

local player = game.players[playerName];
local surface = player.surface;

player.teleport({x = destX, y = destY}, surface);
player.zoom = 0.33;

local font = {
[33]='   XX     XXXX    XXXX     XX      XX              XX           ',
[34]=' XX XX   XX XX                                                  ',
[35]=' XX XX   XX XX  XXXXXXX  XX XX  XXXXXXX  XX XX   XX XX          ',
[36]='  XX     XXXXX  XX       XXXX       XX  XXXXX     XX            ',
[37]='        XX   XX XX  XX     XX     XX     XX  XX XX   XX         ',
[38]='  XXX    XX XX    XXX    XXX XX XX XXX  XX  XX   XXX XX         ',
[39]=' XX      XX     XX                                              ',
[40]='   XX     XX     XX      XX      XX       XX       XX           ',
[41]=' XX       XX       XX      XX      XX     XX     XX             ',
[42]='         XX  XX   XXXX  XXXXXXXX  XXXX   XX  XX                 ',
[43]='          XX      XX    XXXXXX    XX      XX                    ',
[44]='                                          XX      XX     XX     ',
[45]='                        XXXXXX                                  ',
[46]='                                          XX      XX            ',
[47]='     XX     XX     XX     XX     XX     XX      X               ',
[48]=' XXXXX  XX   XX XX  XXX XX XXXX XXXX XX XXX  XX  XXXXX          ',
[49]='  XX     XXX      XX      XX      XX      XX    XXXXXX          ',
[50]=' XXXX   XX  XX      XX    XXX    XX     XX  XX  XXXXXX          ',
[51]=' XXXX   XX  XX      XX    XXX       XX  XX  XX   XXXX           ',
[52]='   XXX    XXXX   XX XX  XX  XX  XXXXXXX     XX     XXXX         ',
[53]='XXXXXX  XX      XXXXX       XX      XX  XX  XX   XXXX           ',
[54]='  XXX    XX     XX      XXXXX   XX  XX  XX  XX   XXXX           ',
[55]='XXXXXX  XX  XX      XX     XX     XX      XX      XX            ',
[56]=' XXXX   XX  XX  XX  XX   XXXX   XX  XX  XX  XX   XXXX           ',
[57]=' XXXX   XX  XX  XX  XX   XXXXX      XX     XX    XXX            ',
[58]='          XX      XX                      XX      XX            ',
[59]='          XX      XX                      XX      XX     XX     ',
[60]='   XX     XX     XX     XX       XX       XX       XX           ',
[61]='                XXXXXX                  XXXXXX                  ',
[62]=' XX       XX       XX       XX     XX     XX     XX             ',
[63]=' XXXX   XX  XX      XX     XX     XX              XX            ',
[64]=' XXXXX  XX   XX XX XXXX XX XXXX XX XXXX XX       XXXX           ',
[65]='  XX     XXXX   XX  XX  XX  XX  XXXXXX  XX  XX  XX  XX          ',
[66]='XXXXXX   XX  XX  XX  XX  XXXXX   XX  XX  XX  XX XXXXXX          ',
[67]='  XXXX   XX  XX XX      XX      XX       XX  XX   XXXX          ',
[68]='XXXXX    XX XX   XX  XX  XX  XX  XX  XX  XX XX  XXXXX           ',
[69]='XXXXXXX  XX   X  XX X    XXXX    XX X    XX   X XXXXXXX         ',
[70]='XXXXXXX  XX   X  XX X    XXXX    XX X    XX     XXXX            ',
[71]='  XXXX   XX  XX XX      XX      XX  XXX  XX  XX   XXXXX         ',
[72]='XX  XX  XX  XX  XX  XX  XXXXXX  XX  XX  XX  XX  XX  XX          ',
[73]=' XXXX     XX      XX      XX      XX      XX     XXXX           ',
[74]='   XXXX     XX      XX      XX  XX  XX  XX  XX   XXXX           ',
[75]='XXX  XX  XX  XX  XX XX   XXXX    XX XX   XX  XX XXX  XX         ',
[76]='XXXX     XX      XX      XX      XX   X  XX  XX XXXXXXX         ',
[77]='XX   XX XXX XXX XXXXXXX XXXXXXX XX X XX XX   XX XX   XX         ',
[78]='XX   XX XXX  XX XXXX XX XX XXXX XX  XXX XX   XX XX   XX         ',
[79]='  XXX    XX XX  XX   XX XX   XX XX   XX  XX XX    XXX           ',
[80]='XXXXXX   XX  XX  XX  XX  XXXXX   XX      XX     XXXX            ',
[81]=' XXXX   XX  XX  XX  XX  XX  XX  XX XXX   XXXX      XXX          ',
[82]='XXXXXX   XX  XX  XX  XX  XXXXX   XX XX   XX  XX XXX  XX         ',
[83]=' XXXX   XX  XX  XXX      XXX       XXX  XX  XX   XXXX           ',
[84]='XXXXXX  X XX X    XX      XX      XX      XX     XXXX           ',
[85]='XX  XX  XX  XX  XX  XX  XX  XX  XX  XX  XX  XX  XXXXXX          ',
[86]='XX  XX  XX  XX  XX  XX  XX  XX  XX  XX   XXXX     XX            ',
[87]='XX   XX XX   XX XX   XX XX X XX XXXXXXX XXX XXX XX   XX         ',
[88]='XX   XX XX   XX  XX XX    XXX     XXX    XX XX  XX   XX         ',
[89]='XX  XX  XX  XX  XX  XX   XXXX     XX      XX     XXXX           ',
[90]='XXXXXXX XX   XX X   XX     XX     XX  X  XX  XX XXXXXXX         ',
[91]=' XXXX    XX      XX      XX      XX      XX      XXXX           ',
[92]='XX       XX       XX       XX       XX       XX       X         ',
[93]=' XXXX      XX      XX      XX      XX      XX    XXXX           ',
[94]='   X      XXX    XX XX  XX   XX                                 ',
[95]='                                                        XXXXXXXX',
[96]='  XX      XX       XX                                           ',
[97]='                 XXXX       XX   XXXXX  XX  XX   XXX XX         ',
[98]='XXX      XX      XX      XXXXX   XX  XX  XX  XX XX XXX          ',
[99]='                 XXXX   XX  XX  XX      XX  XX   XXXX           ',
[100]='   XXX      XX      XX   XXXXX  XX  XX  XX  XX   XXX XX         ',
[101]='                 XXXX   XX  XX  XXXXXX  XX       XXXX           ',
[102]='  XXX    XX XX   XX     XXXX     XX      XX     XXXX            ',
[103]='                 XXX XX XX  XX  XX  XX   XXXXX      XX  XXXXX   ',
[104]='XXX      XX      XX XX   XXX XX  XX  XX  XX  XX XXX  XX         ',
[105]='  XX             XXX      XX      XX      XX     XXXX           ',
[106]='    XX              XX      XX      XX  XX  XX  XX  XX   XXXX   ',
[107]='XXX      XX      XX  XX  XX XX   XXXX    XX XX  XXX  XX         ',
[108]=' XXX      XX      XX      XX      XX      XX     XXXX           ',
[109]='                XX  XX  XXXXXXX XXXXXXX XX X XX XX   XX         ',
[110]='                XXXXX   XX  XX  XX  XX  XX  XX  XX  XX          ',
[111]='                 XXXX   XX  XX  XX  XX  XX  XX   XXXX           ',
[112]='                XX XXX   XX  XX  XX  XX  XXXXX   XX     XXXX    ',
[113]='                 XXX XX XX  XX  XX  XX   XXXXX      XX     XXXX ',
[114]='                XX XXX   XXX XX  XX  XX  XX     XXXX            ',
[115]='                 XXXXX  XX       XXXX       XX  XXXXX           ',
[116]='   X      XX     XXXXX    XX      XX      XX X     XX           ',
[117]='                XX  XX  XX  XX  XX  XX  XX  XX   XXX XX         ',
[118]='                XX  XX  XX  XX  XX  XX   XXXX     XX            ',
[119]='                XX   XX XX X XX XXXXXXX XXXXXXX  XX XX          ',
[120]='                XX   XX  XX XX    XXX    XX XX  XX   XX         ',
[121]='                XX  XX  XX  XX  XX  XX   XXXXX      XX  XXXXX   ',
[122]='                XXXXXX  X  XX     XX     XX  X  XXXXXX          ',
[123]='   XXX    XX      XX    XXX       XX      XX       XXX          ',
[124]='   XX      XX      XX              XX      XX      XX           ',
[125]='XXX       XX      XX       XXX    XX      XX    XXX             ',
[126]=' XXX XX XX XXX                                                  ',
};

function render(msg, font, player, destX, destY, itemNames)
  local existing = player.surface.find_entities({{destX,destY}, {destX * (8*#msg),destY + 8}});
  for i = 1, #existing do
    local exists = existing[i];
    if exists.can_be_destroyed() then
      exists.destroy();
    end
  end
  
  local nameIndex = 1;
  for i = 1, #msg do
    local c = msg:sub(i,i);
    local ord = string.byte(c);
    local glyph = font[ord];
    if glyph ~= nil then
      for x=0, 8 do
        for y=0, 8 do
          local pixelIndex = x * 8 + y;
          local pixel = glyph:sub(pixelIndex,pixelIndex);          
          if pixel == 'X' then
            local placeX = destX + (i*8) + y;
            local placeY = destY + x;

            local chest = player.surface.create_entity{name=itemNames[nameIndex], position={x=placeX,y=placeY}, force=game.forces['neutral']}
            nameIndex = nameIndex + 1;
            if nameIndex > #itemNames then
              nameIndex = 1;
            end
          end          
          y = y + 1;
        end
        x = x + 1;
      end
    end
  end
end

local itemNames = {'rail-chain-signal','wooden-chest', 'iron-chest', 'burner-inserter', 'transport-belt' , 'pipe', 'rail-signal'};
render("hydrogen18.com", font, player, player.position.x - 90, player.position.y - 34, itemNames);


