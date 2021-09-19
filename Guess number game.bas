Cls
Dim pnt As Integer
Dim randum As Integer
Dim guess As Integer
Dim Chan As Integer


Sleep 1

Cls
Print
Print
Print
Print
Print
Print
Print
Print
Print
Print
Print , "This is a random number guessing game. Ready to play?"
Print
Do
    Sleep 1
    Print , , "          Y/N"
    k$ = Input$(1)
Loop Until UCase$(k$) = "Y" Or UCase$(k$) = "N"
If UCase$(k$) = "N" Then
    Cls
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print , , "Thanks for playing"
    Sleep 1

    Stop
End If
Cls

Do
    Chan = 5

    pnt = 0

    Start:


    Randomize Timer

    randum = Int(Rnd * 5) + 1

    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print , "Guess a random number from 1 - 5 | You have "; Chan; " Lives"
    Input "                                      "; guess

    Cls

    Check:
    Print

    If Chan > 0 Then
        If guess = randum Then
            pnt = pnt + 1
            Print
            Print , "You guessed the right number | You have "; pnt; "points"
            GoTo Start

        Else
            Print
            Print , "        You lost a live. Your guess was wrong."
            Print
            Print , , "The right number was "; randum
            Chan = Chan - 1
            If Chan > 0 Then
                GoTo Start
            ElseIf Chan = 0 Then
                GoTo Check
            End If
        End If
    ElseIf Chan = 0 Then
        Cls
        Print
        Print
        Print
        Print
        Print
        Print
        Print , , "You Are OUt Of Chances"
        Print
        Print , , "Your Total Points: "; pnt,
    End If

    Sleep 2

    Do
        Print
        Print
        Print
        Print
        Print
        Print
        Print
        Print
        Print
        Print

        Print , , "Do you want to play again"
        Sleep 1
        Print , , "           Y/N"
        rst$ = Input$(1)
        Cls
    Loop Until UCase$(rst$) = "N" Or UCase$(rst$) = "Y"
Loop Until UCase$(rst$) = "N"

If UCase$(rst$) = "N" Then
    Cls
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print
    Print

    Print , , "Thanks for playing"
    Sleep 1
    Stop
End If
End
