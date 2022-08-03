local pixels = {}

function pixels.drawPIxel(x,y,monitor,color)
    monitor.setCursorPos(x,y)
    monitor.setBackgroundColor()
    monitor.write("")
end

function pixels.fillScreen(color)
    x,y = monitor.getSize
    for j = 1,y,1
    do
        for i = 1,x,1
        do
            pixels.drawPixel(i,j,monitor,color)
        end
    end
end

return pixels