tick++;

colCurrent = floor(tick / (120*5)) % 3;

// Animation progress
percent[0] += (1/20) / 2;
percent[1] += (1/50) / 2;
//if (percent[0] > 0.4) { percent[1] += (1/(35*0.8)) / 2; }
if (percent[0] > 1) { percent[0] = 1; }
if (percent[1] > 1) { percent[1] = 1; }