## Chinese characters "Happy New Year" scrolling on the screen
## original code by Yixuan Qiu <yixuan.qiu@cos.name>
## modified by Taiyun Wei <taiyun.wei@cos.name>
## URL: http://cos.name/bbs/read.php?tid=13595
y = c(11, 8, 2, 11, 10, 8, 5, 3, 11, 9, 8, 5, 1, 12, 
    11, 8, 7, 6, 5, 4, 3, 2, 1, 11, 9, 8, 5, 11, 10, 8, 5, 3, 
    1, 8, 2, 11, 10, 9, 8, 7, 6, 5, 4, 3, 11, 8, 11, 8, 7, 6, 
    5, 4, 3, 2, 1, 12, 8, 8, 50, 8, 4, 9, 4, 12, 11, 10, 7, 6, 
    5, 4, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 9, 8, 7, 6, 5, 4, 
    3, 2, 1, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 4, 50, 
    9, 8, 7, 50, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 9, 1, 
    8, 6, 2, 10, 6, 3, 10, 6, 4, 12, 11, 10, 9, 8, 7, 6, 5, 10, 
    6, 4, 10, 6, 3, 10, 9, 8, 7, 6, 2, 6, 1, 50, 50, 7, 2, 11, 
    10, 9, 8, 7, 3, 11, 7, 5, 4, 11, 7, 11, 7, 1, 11, 9, 8, 7, 
    6, 5, 4, 3, 2, 1, 12, 7, 12, 7, 5, 12, 7, 4, 7, 3, 2, 7, 
    50, 50, 50, 50, 10, 9, 8, 7, 6, 5, 4, 2, 50, 50, 50, 50)
r = c(3, 5, 5, 10, 4, 6, 2, 9, 2, 9, 2, 1, 1, 2, 2, 
    7, 3, 3, 3, 10, 3, 3, 3, 3, 2, 1, 3, 1, 12, 2, 3, 3, 3, 8, 
    3, 3, 6, 2, 1, 1, 2, 6, 4, 2, 3, 10, 2, 3, 3, 3, 1, 1, 1, 
    1, 1, 8, 1, 1, 1, 1)
x = rep(1:60, r)
plot(x, y, asp = 1, pch = "#", type = "n", xlim = c(0, 
    60), ylim = c(-20, 30))
for (i in 1:10000) {
    points(x, y, asp = 1, pch = "#", col = rainbow(length(x))[1:length(x)])
    Sys.sleep(0.2)
    points(x, y, asp = 1, pch = "#", col = "white")
    x = ifelse(x == 1, x * 60, x - 1)
    points(x, y, asp = 1, pch = "#")
} 
