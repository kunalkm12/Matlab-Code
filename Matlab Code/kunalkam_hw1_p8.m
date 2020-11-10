%Prob A
A = [2 4 1 6
    -2 0 2 1
    -2 6 2 1
    -8 -2 1 1];
Y = [7 
    12 
    0 
    -11];
M = [A Y]; %Augmented matrix
disp('SolnA:')
disp(rref(M)); %Reduced Row Echelon Form

%Prob B
B = [2 4 1 6
    -2 0 2 1
    -2 6 2 1
    14 -14 -11 0];
Y = [7 
    12 
    0 
    -29];
M = [B Y]; %Augmented matrix
disp('SolnB:')
disp(rref(M)); %Reduced Row Echelon Form

%Prob C
C = [2 4 1 6
    -2 0 2 1
    -2 6 2 1
    14 -14 -11 0];
Y = [7 
    12 
    0 
    0];
M = [C Y]; %Augmented matrix
disp('SolnC:')
disp(rref(M)); %Reduced Row Echelon Form