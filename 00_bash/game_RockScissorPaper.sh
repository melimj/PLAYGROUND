#/bin/bash
#
#----------------------------------------------------
#
# Copyright: 20240427,0509,0511
# Written by meli_mj
#
# This Program is "Rock Paper Scissors game"
#
#----------------------------------------------------
# VAR

playerScore=0
myScore=0

resultWin=`echo "You win! :)"`
resultLose=`echo "You Lose :("`
resultDraw=`echo "Draw :|"`

#ps=playerselect
ps=0
#as=aiSelect
as=0

#1=Rock
#2=Paper
#3=Scissors
#0=Exit

###AI select by random
#as=`echo "($RANDOM % 3) + 1 " | bc`
#----------------------------------------------------
#
# Hello
#
#
#
echo "This program is "ROCK PAPER SCISSORS" game. 
Do you want to play game?
.
.
You need select 1(ROCK), 2(PAPER), 3(SCISSORS), and 0(EXIT).
.
.
"
read -n 1 -p "Enter or any key to LET'S START@@@@@@!!!" start
if [ -n $start ]; then
        echo "
        OK, Let's go@@@@@@!!!!"
fi
#
#
#
##----------------------------------------------------
# Function

game() {
                
        ###AI select by random
        as=`echo "($RANDOM % 3)+1" |bc`

        #ai selected 1(ROCK)
        if [ $as = 1 ]; then
                echo "I'm Rock@@@"

                #player selected 1(ROCK)
                if [ $ps = 1 ]; then
                        echo $resultDraw
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 2(PAPER)
                if [ $ps = 2 ]; then
                        echo $resultWin
                        playerScore=`echo "$playerScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 3(SCISSORS)
                if [ $ps = 3 ]; then
                        echo $resultLose
                        myScore=`echo "$myScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi
        fi

        #ai selected 2(PAPER)
        if [ $as = 2 ]; then
                echo "I'm PAPER###"

                #player selected 1(ROCK)
                if [ $ps = 1 ]; then
                        echo $resultLose
                        myScore=`echo "$myScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 2(PAPER)
                if [ $ps = 2 ]; then
                        echo $resultDraw
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 3(SCISSORS)
                if [ $ps = 3 ]; then
                        echo $resultWin
                        playerScore=`echo "$playerScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi
        fi

        #ai selected 3(SCISSORS)
        if [ $as = 3 ]; then
                echo "I'm SCISSORS!"

                #player selected 1(ROCK)
                if [ $ps = 1 ]; then
                        echo $resultWin
                        playerScore=`echo "$playerScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 2(PAPER)
                if [ $ps = 2 ];then
                        echo $resultLose
                        myScore=`echo "$myScore +1" |bc`
                        echo "Your score is $playerScore, my score is $myScore."
                fi

                #player selected 3(SCISSORS)
                if [ $ps = 3 ];then
                        echo $resultDraw
                        echo "Your score is $playerScore, my score is $myScore."
                fi
        fi

}



##----------------------------------------------------
#
#Game start
#
while [ : ]; do
        read -n 1 -p "Input key [1(ROCK), 2(PAPER), 3(SCISSORS), 0(EXIT)]" ps

        if [ -n $ps ]; then
                clear
                
                #player want to out game
                if [ $ps = 0 ];then 
                        echo "

                        Good bye!

                        "
                        exit 0
                fi

                #player selected 1(ROCK)
                if [ $ps = 1 ]; then
                        echo "
                        You selected 1(ROCK).
                        "

                        #read game function
                        game
                fi

                #player selected 2(PAPER)
                if [ $ps = 2 ]; then
                       echo "
                        You selected 2(PAPER).
                        "

                        #read game function
                        game
                fi

                #player selected 3(SCISSORS)
                if [ $ps = 3 ]; then
                        echo "
                        You selected 3(SCISSORS).
                        "

                        #read game function
                        game
                fi
        fi
done

#
#
#
