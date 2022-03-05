local gfx <const> = playdate.graphics

function time()
  return 16.6 --FIXME
end

function btn(id)
  return false --FIXME
end

function btnp(id)
  return false --FIXME
end

function key(code)
  return false --FIXME
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