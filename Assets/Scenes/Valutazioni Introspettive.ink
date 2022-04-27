->Quesito
===Quesito===
Ignoto "Sei scemo o mangi i sassi?

+ [Sono scemo.]
...
Ignoto "Ah ecco, mi sembrava.
-> Sei_Scemo
+ [Mangio i sassi.]
...
Ignoto "Mangi i sassi? Ma questo non significherebbe che sei scemo?
    
    ++Riproviamo, allora...
    ->Quesito
    ++Ma i sassi sono buoni...
    ->Sassi_Buoni
    
    
=Sassi_Buoni 
Ignoto "...
Ignoto "Ma ti rendi conto di quello che stai dicendo?

+[Mangio un sasso per dimostrare la mia superiorità.]
...
Ignoto "Hai mangiato un sasso? Seriamente?
Ignoto "Ne riparliamo quando caghi.
->END


+Beh dai, forse è un po' esagerato...
Ignoto "Ah, ecco. Allora riproviamo...
->Quesito


===Sei_Scemo===
Ignoto "Tuttavia, solo gli scemi si definiscono intelligenti.
+Ma quindi... non sono scemo!
    Ignoto "Ne sei sicuro?
    ++[Assolutamente!]
    ...
    Ignoto "Il fatto che solo gli scemi si definiscano intelligenti non significa che non esistano altri idioti che pensano di essere scemi. Ti sei appena definito intelligente?
        +++No, no...
        ->Ammissione
        +++Sì!
        ->Definitivo
    ++Non molto...
    ->Ammissione
    
    
=Ammissione
Ignoto "Allora forse c'è ancora speranza per te. Forse hai il diritto di definirti intelligente.
->Sei_Scemo
+No, no, fidati, sono proprio scemo.
Ignoto "Esatto! Forse non sei così scemo.
->Sei_Scemo


=Definitivo
Ignoto "Eh però sei proprio un imbecille, ti ho dato un sacco di possibilità per darti il beneficio del dubbio...
+[Quindi... Sono scemo?]
...
    Ignoto "Sì, amico mio. Sei un completo imbecille.
    Ignoto "Hai raggiunto la verità.





-> END
