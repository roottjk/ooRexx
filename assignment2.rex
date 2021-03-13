secretNumber = RANDOM(100)
tries = 5
SAY ""
SAY ""
SAY "Bet you wont guess the number in my silicon brain! Hint: Its between 0 and 100"
SAY "You have 3 tries till i 'del *.*' myself. Your turn to guess!"

DO WHILE (tries > 0)
    PULL guess
    IF (guess = secretNumber) THEN DO
        SAY "WOW Congrats! You guessed the right number. Its indeed " guess
        RETURN
    END

    ELSE IF (guess > secretNumber & tries > 0)  THEN DO
        SAY ""
        SAY "Na, you're wrong. You have" tries "tries left. HINT: The number I am thinking of is smaller than your guess. Take another shot!"
        tries -= 1
    END

    ELSE IF (guess < secretNumber & tries > 0)  THEN DO
        SAY ""
        SAY "Na, you're wrong. You have" tries " tries left. HINT: The number I am thinking of is bigger than your guess. Take another shot!"
        tries -= 1
    END
END
    


IF (tries = 0) THEN DO
    SAY ""
    SAY "GAME OVER! You have no tries left. The number I was thinking of was:"
    SAY ""
    SAY secretNumber
    SAY ""
    SAY "Better luck next time."
END

