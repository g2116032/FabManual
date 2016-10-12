function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
tmp = Trim(src,0,19).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,20,39).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,40,59).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,60,79).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,80,99).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,100,119).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,120,139).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,140,159).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,160,179).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,180,199).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,200,219).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,220,239).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,240,259).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,260,279).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,280,299).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,300,319).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,320,339).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,340,359).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,360,379).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,380,399).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,400,419).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,420,439).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,440,459).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,460,479).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,480,499).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,500,519).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,520,539).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,540,559).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,560,579).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,580,599).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,600,619).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,620,639).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,640,659).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,660,679).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,680,699).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,700,719).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,720,739).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,740,759).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,760,779).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,780,799).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,800,819).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,820,839).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,840,859).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,860,879).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,880,899).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,900,919).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,920,939).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,940,959).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,960,979).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,980,999).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1000,1019).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1020,1039).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1040,1059).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1060,1079).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1080,1099).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1100,1119).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1120,1139).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1140,1159).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1160,1179).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1180,1199).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1200,1219).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1220,1239).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1240,1259).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1260,1279).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1280,1299).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1300,1319).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1320,1339).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1340,1359).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1360,1379).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1380,1399).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1400,1419).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1420,1439).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1440,1459).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1460,1479).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1480,1499).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1500,1519).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1520,1539).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1540,1559).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1560,1579).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1580,1599).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1600,1619).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1620,1639).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1640,1659).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1660,1679).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1680,1699).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1700,1719).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1720,1739).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1740,1759).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1760,1779).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("ŒJ‚è•Ô‚µ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1780,1799).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1800,1819).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1820,1839).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1840,1859).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1860,1879).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1880,1899).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1900,1919).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1920,1939).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1940,1959).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1960,1979).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,1980,1999).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2000,2019).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2020,2039).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2040,2059).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2060,2079).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2080,2099).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2100,2119).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2120,2139).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2140,2159).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2160,2179).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2180,2199).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2200,2219).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2220,2239).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2240,2259).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2260,2279).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2280,2299).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2300,2319).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2320,2339).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2340,2359).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(1)tmp = tmp.Subtitle("x1", align = 9)tmp = tmp.Subtitle("•¡G‚Èì‹Æ", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2360,2379).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2380,2399).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2400,2419).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2420,2439).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2440,2459).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2460,2479).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2480,2499).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2500,2519).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2520,2539).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2540,2559).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2560,2579).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2580,2599).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2600,2619).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2620,2639).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2640,2659).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2660,2679).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2680,2699).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2700,2719).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2720,2739).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2740,2759).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2760,2779).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2780,2799).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2800,2819).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2820,2839).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2840,2859).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2860,2879).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2880,2899).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2900,2919).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2920,2939).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2940,2959).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2960,2979).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,2980,2999).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3000,3019).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3020,3039).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3040,3059).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3060,3079).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3080,3099).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3100,3119).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3120,3139).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3140,3159).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3160,3179).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3180,3199).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3200,3219).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3220,3239).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3240,3259).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3260,3279).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3280,3299).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3300,3319).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3320,3339).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3340,3359).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3360,3379).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3380,3399).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3400,3419).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3420,3439).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3440,3459).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3460,3479).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3480,3499).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3500,3519).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3520,3539).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3540,3559).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‘g‚İ—§‚Ä‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3560,3579).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3580,3599).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(3)tmp = tmp.Subtitle("x3", align = 9)tmp = tmp.Subtitle("ƒp[ƒc‚ğ‚Á‚Ä‚­‚é", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3600,3619).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
tmp = Trim(src,3620,-1).ConvertToRGB32()tmp = tmp.ChangePlaySpeed(8)tmp = tmp.Subtitle("x8", align = 9)tmp = tmp.Subtitle("‰½‚à‚µ‚Ä‚¢‚È‚¢", font="‚l‚r ‚oƒSƒVƒbƒN")result = result ++ tmp
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
function ChangePlaySpeed(clip clip, float speed) {
	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)
	rate = clip.Framerate()
	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)
	return clip
}

src = DirectShowSource("C:\Users\Tsuka\Desktop\CinemaGazer\movie.mp4")
result = Trim(src,0,-1).ConvertToRGB32()
fps = src.Framerate
return result
