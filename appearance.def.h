static char *fonts[] = {
	"Hack:size=12:antialias=true:autohint=true",
	"Terminus:size=12:antialias=false:autohint=false",
};

static const char *colorname[] = {

     [0] "#111111",
     [1] "#ff7970",
     [2] "#92d249",
     [3] "#f0c674",
     [4] "#7aa6da",
     [5] "#c397d8",
     [6] "#35b5a9",
     [7] "#dddddd",

     [8] = "#222222",
     [9] = "#ff6060",
    [10] = "#b9ca4a",
    [11] = "#ffaa00",
    [12] = "#99ccff",
    [13] = "#ed8df4",
    [14] = "#66eedd",
    [15] = "#eaeaea",

    [255] = 0,

    /* more colors can be added after 255 to use with DefaultXX */
    [256] = "#cccccc",
    [257] = "#555555",
    "#cccccc",
    "#232323",
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 7;
unsigned int defaultbg = 8;
static unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
