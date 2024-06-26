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
board = ["/","/","/"; "/","/","/"; "/","/","/"];

% A variable to keep track of whether it is Player 1 or 2's turn
player = 1;

% Variables to check if either player 1 or 2 won yet. 
player1Won = 0;
player2Won = 0;
movesMade = 0

%This loop will run indefinitely until we use a break statement to stop it
%It will first display the board for the user
%It will then ask the user which row and column they want to place their
%move in. 
%It will then check if it's player 1 or player 2 making the move
%Then it will check whether the position in which the user wants to place 
%Their move is empty and if it is, it will update the board
%Then it will check if there are any winners and if the last move has been
%made and there is no winner, it will declare a draw. 

while true
    displayBoard(board);
    
    row = input('Enter the row you want to put your move: ');
    column = input('Enter the column you want to put your move:');

    if player == 1
        if strcmp(board(row,column),"/") == 1
            board(row,column) = "X";
            movesMade = movesMade + 1;
            player = 2;
        end
    elseif player == 2
        if strcmp(board(row,column),"/") == 1
            board(row,column) = "O";
            movesMade = movesMade + 1;
            player = 1;
        end
    end

    player1Won = playerOneWon(board);
    player2Won = playerTwoWon(board);

    if player1Won == 1
        disp("Player 1 Won! Game Over!")
        break
    elseif player2Won == 1
        disp("Player 2 Won! Game Over!")
        break
    else
        if movesMade == 9
            disp("It's a draw! Game Over!")
            break
        end
    end
end

%Function that will display the board
function[] = displayBoard(x)
    disp(x);
end

%Two Functions to Check if Player 1 Won or Player 2 Won
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

function[result2] = playerTwoWon(j)
    row1 = j(1,:);
    row2 = j(2,:);
    row3 = j(3,:);
    column1 = j(:,1);
    column2 = j(:,2);
    column3 = j(:,3);

    diagonal1 = [];
    diagonal2 = [];

    for i = 1:3
        diagonal1 = [diagonal1 j(i,i)];
    end
    
    diagonal2 = [diagonal2 j(1,3)];
    diagonal2 = [diagonal2 j(2,2)];
    diagonal2 = [diagonal2 j(3,1)];

    if all(strcmp(row1,"O"))
        result2 = 1;
    elseif all(strcmp(row2,"O"))
        result2 = 1;
    elseif all(strcmp(row3,"O"))
        result2 = 1;
    elseif all(strcmp(column1,"O"))
        result2 = 1;
    elseif all(strcmp(column2,"O"))
        result2 = 1;
    elseif all(strcmp(column3,"O"))
        result2 = 1;
    elseif all(strcmp(diagonal1,"O"))
        result2 = 1;
    elseif all(strcmp(diagonal2,"O"))
        result2 = 1;
    else
        result2 = 0;
    end   
end

