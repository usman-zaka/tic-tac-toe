clc; %Clears command window

%Welcome Message and Introduction on How to Play
disp("Hello! Welcome to Tic Tac Toe!");
pause(1);
disp("You will be playing against another human! So bring a friend!");
pause(1);
disp("Player 1 is X and Player 2 is O!");
pause(1);
disp("You can make move by first indicating which row you want the move and then which column!");
pause(1);
disp("A forward slash means that spot is empty and you can place a move there!");
pause(1);
disp("Player 1 can start the game by making a move!");

%Our board that the players will make moves on
board = ["/", "/", "/"; "/", "/", "/"; "/", "/", "/";];

displayBoard(board);

%Function that will display the board
function[] = displayBoard(x)
    disp(x);
end

