duration = 450;
frequency = 40;
timeLeft = duration;

// Difficulty: 0 = Easy, 1 = Normal, 2 = Hard (Deltarune style progression)
difficulty = 2; 

if (difficulty == 0) {
    duration = 360;
    frequency = 60;
} else if (difficulty == 1) {
    duration = 450;
    frequency = 40;
} else if (difficulty >= 2) {
    duration = 540;
    frequency = 25;
}

timer = 0;
