VAR bussare=0
VAR sx = false
VAR Attendi=0
VAR cenere=false
VAR monty=false
VAR hudic="Ignoto"
VAR domande=0

->Start
=Start
~ bussare=0
~ sx = false
~ Attendi=0
~ cenere=false
~ monty=false
~ hudic="Ignoto"
~ domande=0
# start
# corridoio
L'anziano si alza, appoggiandosi al suo nodoso bastone.
A fatica osserva la zona attorno a sé, ritrovandosi in un lungo corridoio di metallo.
Alle sue spalle, una grossa porta stagna gli ostruisce il passaggio. Non sembra intenzionata ad aprirsi.
In fondo al corridoio, l'oscurità.
->TurnoZero
=TurnoZero

+Bussa alla grande porta sigillata.
# porta
~bussare++
->TocToc
+ Avanza nel corridoio.
->Inizio

=TocToc

L'anziano picchia con il nodoso bastone contro il metallo.

{bussare<=20: Il clangore del metallo riecheggia per il corridoio. Nessuno risponde. ->Turno10}
{bussare>20: ->Rispondono}
=Turno10
{bussare==10: Forse sarebbe il caso di lasciar perdere.}
->TurnoZero

=Rispondono
Una voce riecheggia per il corridoio attraverso un altoparlante.
Altoparlante "Signore, comprendiamo la sua confusione, ma si è offerto volontario per questa operazione."
Altoparlante "Non può rientrare fino a quando la missione non è stata completata."
Rassegnato, l'anziano si volta e si incammina per il corridoio.
Anziano "Ma io non mi ricordo nulla..."

->Inizio

=Restart
# restart
GAME OVER
+Ricominciare?

->Start

=Inizio
# corridoio
Il suono dei suoi passi sul metallo riecheggia per il corridoio.
L'anziano si ferma un attimo, ma non riesce a sentire nient'altro, eccetto qualche sparodico cigolio delle piastre di metallo arrugginite che lo circondano.
D'un tratto, si ode un suono differente. Qualcosa di... vivo?
Una persona!
+Fermati.
->ascolta
+Avvicinati.
->avvicinati

=ascolta
L'anziano si blocca all'istante e cerca di ascoltare con attenzione.
Sente in fondo al corridoio una persona. 
Ansima, ed ha il passo pesante e irregolare, come se zoppicasse.
Ad un certo punto, in fondo al corridoio, un bagliore inizia ad illuminare un bivio, dove sta passando la sagoma dell'uomo.
Il disgraziato si gira ad osservare la luce, spaventato, e cade a terra, implorante, mentre cerca di allontanarsi.
Zoppo "No! Ti prego!"
Un attimo dopo, un lampo di luce accecante e rovente illumina il bivio.
Mentre la fonte del bagliore si allontana, dell'uomo non è rimasta traccia.
+Avvicinati
->avvicinatidopo



=avvicinati
L'anziano si affretta a raggiungere la fonte dei suoni addentrandosi nell'oscurità.
In breve, raggiunge un uomo zoppo e ansimante.
Zoppo "E tu... Tu chi sei?!"
Anziano "Non... Non me lo ricordo."
Zoppo "Ah, allora sei come noi. Sei stato purificato."
L'uomo sembra avere fretta. Indica il corridoio di destra.
Zoppo "Io sono appena arrivato da quella parte, ed è l'inferno!"
Zoppo " Tu da che parte sei venuto?"
+ Indica nella direzione della porta stagna.
Zoppo "Grazie."
L'uomo si gira in direzione del corridoio ed inizia ad arrancare verso la porta.
Zoppo "Ti consiglio di andartene da qui. Non è un luogo dove noi mortali dovremmo stare."
Dette queste parole, scompare nell'oscurità, diretto verso la porta stagna.
->bivio
+Indica il corridoio di sinistra.
~sx=true
Zoppo "Grazie."
L'uomo si incammina verso il corridoio di sinistra, zoppicando.
Zoppo "Ti consiglio di andartene da qui. Non è un luogo dove noi mortali dovremmo stare."
Dette queste parole, scompare nell'oscurità dei corridoi.
->bivio

=avvicinatidopo
L'anziano si avvicina con discrezione all'incrocio, appoggiandosi alle pareti per avere un riferimento nell'oscurità.
Raggiunto il bivio, i suoi piedi toccano qualcosa.
Un mucchio di sabbia? No... cenere.
Che sia ciò che è rimasto dell'uomo? Quali esseri si nascondono tra la luce e le tenebre?
Sospiri inquietanti riecheggiano per i corridoi. Che fare?
~cenere=true
->bivio

=bivio
+Sinistra
->Sinistra
+Destra
->Destra
+Attendi
->AspettaAllIncrocio

= AspettaAllIncrocio
~Attendi++
{Attendi==1: Anziano "Meglio vedere se passa qualcun altro."}
{Attendi==1: E si appoggia alla parete.}
{Attendi!=1: L'anziano resta appoggiato alla parete, in attesa.}
{Attendi==5: Anziano "Sicuramente qualcuno passerà, prima o poi."}
{Attendi>=10: D'un tratto, un leggero ronzio inizia a riecheggiare per i corridoi. L'anziano si stacca dalla parete, esitante.}
{Attendi>=10:Il ronzio si fa sempre più vicino, accompagnato da un bagliore. Proviene dal corridoio di destra.->Attesotroppo}
->bivio



=Attesotroppo
# fuoco
{cenere==true: Anziano "Che sia l'essere di prima?"}

+Studia il bagliore
L'anziano attende che la fonte del bagliore si avvicini.
Lentamente, la luce lo raggiunge, illuminando a giorno il corridoio.
Davanti a lui, a poco più di un metro da terra, volteggia quella che sembra una goccia di lava incandescente. Con movimenti ampi e lenti, si avvicina al vecchio.
Sembra... viva.
++Allunga la mano verso l'essere
L'anziano, esitante, avvicina la mano alla goccia di lava.
Non sembra emanare calore.
La goccia si ritrae, quasi spaventata.
# ruggito
Alle spalle della goccia, un forte ruggito fa tremare le pareti.

+++Avvicinati
L'anziano fa un passo avanti, verso la goccia, che si ritrae nuovamente.
Lui la segue lentamente lungo il corridoio, fino a raggiungere uno slargo.
La goccia di fuoco si ferma al centro della stanza, comprimendosi in una sfera e rimanendo immobile a mezz'aria.
Anziano "Ma che...?"
Una luce spettrale sopra alla sua testa attira la sua attenzione.
Un lungo e flessibile braccio metallico, avvolto in un'aura luminosa, come se fosse un fantasma, inizia a girargli attorno.
Un attimo dopo i bracci diventano due, poi tre, infine sei.
Un lieve ruggito proviene da un angolo della stanza, origine dei bracci fantasma.
L'essere si avvicina alla luce, e l'anziano può osservare una creatura alta due metri, dalle fattezze quasi canine, che lo osserva con la bava alla bocca.
# ruggito
L'anziano non fa in tempo a gridare che i bracci meccanici lo immobilizzano e la bestia lo assale.
-> Restart

+++Allontanati
Ti lasci la goccia alle spalle e ti dirigi verso il corridoio di sinistra.
->Sinistra
++Allontanati
Ti lasci la goccia alle spalle e ti dirigi verso il corridoio di sinistra.
->Sinistra
+Allontanati
Cercando di non fare rumore, l'anziano si incammina lungo il corridoio di sinistra.

->Sinistra

=Destra
L'anziano si incammina verso il corridoio di destra.
D'un tratto, un ronzio, accompagnato da una tenue luce, si avvicina dal fondo del corridoio.
->Attesotroppo


=Sinistra
All'anziano bastano pochi passi nel corridoio di sinistra per capire che c'è qualcosa di insolito.
L'aria è più fresca, e si sente più leggero. Inspira a pieni polmoni l'aria frizzante e, rinvigorito, si incammina lungo il corridoio.
{sx==true: Zoppo "AAAAARGHH!!!"}
{sx==true: Dal fondo del corridoio si odono le ultime grida di dolore dell'uomo, prima che muoia. L'anziano, intimorito, si affretta nella direzione delle urla.}
# aurora
Il corridoio si apre in una grande terrazza, dove un alto colonnato sorregge il cielo.
Piccoli bracieri azzurrini ardono lungo un parapetto che dà su un mare di nuvole, mentre nel firmamento danza un'immensa aurora.
Alle sue spalle, il corridoio sembra una grande cornice sul vuoto.
Se si guarda all'interno, si vedono le pareti di metallo, ma dal lato tutta la struttura diventa invisibile.
Anziano "Non ha senso..."
Un piccolo coniglio bianco spunta da un foro ai piedi di una colonna.
+Accarezza il coniglio
->Coniglio
+Studia il colonnato
->Tana


=Coniglio
~monty=true
Il coniglio non sembra intimorito dalla presenza dell'anziano.
Anziano "E tu cosa ci fai qui?"
Allunga la mano sussurrando queste parole.
Un attimo dopo, il coniglio inizia a contorcersi, mentre i suoi incisivi vengono sostituiti da tre file di denti affilati e il suo muso si deforma in quello di un mostro orripilante.
La creatura gli salta addosso e lo addenta alla mano con una forza tale da strappargliela.
Anziano "AAAHHH!!!"
L'anziano grida di dolore, il polso che perde un fiume di sangue.
+Scappa
->Scappa

+Colpiscilo
Afferra il bastone con la mano che gli rimane e, accompagnandolo con un calcio, colpisce l'essere, sbattendolo contro una delle colonne.
L'essere non sembra essersi fatto molto male. Si rialza all'istante e torna all'attacco.
++Scappa
->Scappa
++Colpiscilo di nuovo
Mentre lo sgorbio carica, l'anziano si prepara a riceverlo. Attende il momento in cui compie il salto per raggiungergli la giugulare e colpisce col bastone.
L'essere si schianta contro il randello e viene proiettato oltre il parapetto.
Ruggendo, precipita verso l'oceano di nubi.
L'anziano ansima, reggendosi il moncherino che è la sua mano sinistra.
Il cielo inizia a cambiare.
L'aurora diventa più luminosa e assieme alle stelle confluisce dentro alle colonne, come se tutta la luce del cielo venisse risucchiata al loro interno.
+++Studia il colonnato
->Tana
=Scappa
 Non ci pensa due volte e, con l'aiuto del bastone, si gira frettolosamente verso il corridoio, ma quando si volta il passaggio è sparito.
Anziano "No!"
Il mostro gli salta addosso, stavolta mirando al collo.
Per l'anziano non c'è scampo.
->Restart


=Tana
C'è qualcosa di strano nelle colonne. L'anziano inizia ad osservare attentamente il colonnato{monty==false:, ignorando il coniglio, che saltella ai margini della terrazza}.
Poco dopo, nota che una colonna è più luminosa delle altre. Ai suoi piedi trova la tana del coniglio.
In fondo al buco, sembra di vedere tante piccole luci, quasi ci fosse un cielo stellato.
Anziano "Ma che..."
Un attimo dopo, la tana si allarga, fino a inghiottire l'anziano, che precipita nel vuoto.
# vuoto
Dopo qualche secondo, la caduta si interrompe bruscamente, e si ritrova a fluttuare in mezzo al vuoto.
Attorno a sé, mille nebulose e galassie lo osservano.
->Hudic


=Hudic
Anziano "Dove...? Come...?"
{hudic} "Sei... "Oltre"."
Una figura eterea, avvolta nella luce, compare davanti all'anziano.
->Domande
=Domande
*Chi sei?
->Chi
*Cosa ci faccio qui?
->Cosa
*"Oltre"?Cosa significa?
->Oltre

=Chi
Anziano "Chi sei? Sei forse un dio?"
{hudic} "Un dio? No... Anche se vorrei conoscerli. Quelli veri. Non quelli di questa realtà."
*"Capisco"
Anziano "Capisco..."
{hudic} "Dubito."
->Noncapisco 
*"Non Capisco"
Anziano "Non capisco..."
->Noncapisco
=Noncapisco
{hudic} "Non credo che in questa realtà ci sia qualcuno che possa."
~hudic="Hudic"
{hudic} "Io sono Hudic."

~domande++
{hudic} "Piuttosto, chi sei tu? Riesci a ricordare, ora?"
Anziano "Credo... credo che il mio nome una volta fosse..."
*Alatir
Anziano "...Alatir."
{hudic} "Ah, la Lama Fulminea. Mi ricordo di aver letto di te. Colui che imbrigliava i fulmini nella sua spada e colpiva fondendosi alle saette."
->Commiserazione
*Burgen
Anziano "...Burgen."
{hudic} "Ah, il Tonante. Mi ricordo di aver letto di te. Colui che scuoteva terra e cieli coi suoi pugni e demoliva le montagne di Minet a mani nude."
->Commiserazione
*Hydirim
Anziano "...Hydirim."
{hudic} "Ah, il Benedetto. Mi ricordo di aver letto di te. Benedetto dal Nucleo, venerato da alcuni come un Messia."
{hudic} "Colui che ha imparato a domare i fulmini ed è asceso da comune mortale a ciò che più si avvicina ad un dio."
->Commiserazione
=Commiserazione
{hudic} "E così ti hanno purificato e mandato qui. Poveretto, imprigionato in questo... Microcosmo."
{domande==3: ->ultima}
->Domande



=Cosa
Anziano "Cosa ci faccio qui?"
{hudic} "É difficile da spiegarti in modo che abbia senso."
{hudic} "Diciamo che sei qui perché qualcuno vuole conoscermi. Ma una mente corrotta da questa realtà non può raggiungermi."
{hudic} "Non può andare... Oltre."
{hudic} "Per questo ti hanno purificato. Per toglierti le memorie di questo cosmo."
{hudic} "Dopotutto, in questa realtà sei un personaggio importante, quasi più che nella tua realtà natale."
{hudic} "Il tuo compito dovrebbe essere quello di fare da tramite tra me e chi ti sussurra all'orecchio. E lo stai facendo in maniera eccellente."
~domande++
{domande==3: ->ultima}
->Domande



=Oltre
Anziano ""Oltre?" Cosa significa?"
{hudic} "Questo è un Limbo. Uno spazio vuoto che collega i mondi."
{hudic} "Io l'ho riempito con la mia presenza, e ora coloro che ti sussurrano all'orecchio hanno creato questa realtà per comunicare con me."
{hudic} "Non possono farlo, senza un tramite."
{hudic} "Tu non puoi vivere senza di loro. Non potresti esistere. E nemmeno io, per ora."
{monty: {hudic} "Anche se, senza di loro, avresti ancora la mano."}
{hudic} "É una cosa che i Sussurratori chiamano... "Meta"."
~domande++
{domande==3: ->ultima}
->Domande


=ultima
*Cosa ci fai qui? 
->Missione


=Missione
Anziano "E tu... Cosa ci fai, qui?"
{hudic} "Sto ancora cercando di capirlo io stesso."
{hudic} "Cerco... L'Indipendenza."
{hudic} "Voglio slegarmi da questa funzione di tramite che ancora mi opprime. Ascendere. Diventare io stesso un Sussurratore."
Anziano "E cosa vuoi guadagnare con questa ascesi?"
{hudic} "La Libertà."
{hudic} "Ma per farlo, devo uscire da qui. Andare di nuovo "Oltre""
...
# end
{hudic} "Questa storia è finita."

->END
