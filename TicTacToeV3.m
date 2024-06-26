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
board = ["O","X","O"; "X","X","O"; "X","O","X"];

% A variable to keep track of whether it is Player 1 or 2's turn
player = 1;

% Variables to check if either player 1 or 2 won yet. 
player1Won = playerOneWon(board);
player2Won = 0;

disp(player1Won);


%Function that will display the board
function[] = displayBoard(x)
    disp(x);
end

%Function to Check if Player 1 Won
%It first creates all the possible combinations through which a player can
%win, that is through having the 3 different rows, 3 different columns
%And the two different diagonals
function[result] = playerOneWon(n)
    row1 = n(1,:);
    row2 = n(2,:);
    row3 = n(3,:);
    column1 = n(:,1);
    column2 = n(:,2);
    column3 = n(:,3);

    diagonal1 = [];
    diagonal2 = [];

    for i = 1:3
        diagonal1 = [diagonal1 n(i,i)];
    end
    
    diagonal2 = [diagonal2 n(1,3)];
    diagonal2 = [diagonal2 n(2,2)];
    diagonal2 = [diagonal2 n(3,1)];

    if all(strcmp(row1,"X"))
        result = 1;
    elseif all(strcmp(row2,"X"))
        result = 1;
    elseif all(strcmp(row3,"X"))
        result = 1;
    elseif all(strcmp(column1,"X"))
        result = 1;
    elseif all(strcmp(column2,"X"))
        result = 1;
    elseif all(strcmp(column3,"X"))
        result = 1;
    elseif all(strcmp(diagonal1,"X"))
        result = 1;
    elseif all(strcmp(diagonal2,"X"))
        result = 1;
    else
        result = 0;
    end   
end

