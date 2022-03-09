local gfx <const> = playdate.graphics
local snd <const> = playdate.sound

function btn(id)
  return playdate.buttonIsPressed(id)
end

function circb(x,y,radius,color)
  playdate.graphics.drawCircleAtPoint(x,y,radius)
end

function key(code)
  return false --FIXME
end

function line(x0,y0,x1,y1,color)
  playdate.graphics.drawLine(x0,y0,x1,y1)
end

function map(x,y,w,h,sx,sy)
  --FIXME
end

function mouse()
  return 0,0,false,false,false --FIXME
end

function pix(x,y,color)
  gfx.fillRect(x, y, 1, 1)
end

function print_txt(x,y,col,fixed,scale)
  return 100 --FIXME:text width
end

function rect(x,y,width,height,color)
  gfx.fillRect(x, y, width, height)
end

--setup sounds
local sample={}
for i in pairs({2,3,4,5,6,7,8,9,10,11}) do
  local n=string.format("sfx %d",i)
  sample[i]=snd.sampleplayer.new(n)
end
function sfx(id,note,duration,channel)
  sample[id]:play()
end

local img = gfx.image.new('sprites')
function spr(id,x,y,colorkey,scale,flip,rotate,w,h)
  local row = id % 16;
  local col = id // 16;
  img:draw(x,y,playdate.graphics.kImageUnflipped,row*8,col*8,8,8)
end

function textri(x1,y1,x2,y2,x3,y3,u1,v1,u2,v2,u3,v3,use_map,trans)
  --FIXME
end

function time_seconds()
  return playdate.getElapsedTime()
end
