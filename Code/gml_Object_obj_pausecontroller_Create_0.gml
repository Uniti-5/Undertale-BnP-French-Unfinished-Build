global.paused = 0;
global.interact = 0;
lastinteract = global.interact;
tp = 0;
tpy = 30;
bp = 0;
bpy = 40;
drawpause = 0;
textlength = 0;
tickersiner = -320;
tickermax = 400;
alpha = 0;
select = 0;
os_canquit = 1;
timeofday = 0;

if (global.osflavor > 2 || obj_time.canquit == 0)
    os_canquit = 0;

maxx = 3 + os_canquit + global.debug;
btninfo = ["Sortir du Menu de Pause\net revenir au Jeu.", "Retour au Menu Principal.\nN'oubliez pas d'ENREGISTRER avant de quitter.", "Configurez le jeu selon vos Préférences.\nLes Paramètres sont enregistrés lorsque vous Quittez.", "Quittez le programme.\n(Vous Pouvez aussi Pressez [ECHAP] pour sortir.)", "See additional information for debug mode."];
btnno = "Il est interdit de partir de cette\nzone!";
stateinfo = ["Bepis", "Êtes-vous sûr de vouloir revenir au\nMenu Principal ?", "Êtes-vous sûr de vouloir quitter ?"];
truezero = 0;
xx = __view_get(0, 0);
yy = __view_get(1, 0);
depth = -999999999;
forceclose = 0;
mute = 0;
noticker = 0;
ss = -4;
state = 0;
buffer = 0;
temphide = 0;
state = 0;
select_opt[0] = 0;
select_opt[1] = 0;
select_opt[2] = 0;
fakepause = 0;
unpersist = 0;
dayofweek = current_day;
murder = 0;
choosething = 0;
textchosen = 0;
dogchosen = 0;
dogchoosething = 0;
dogsiner = 0;
currenthour = current_hour;

if (currenthour >= 0 || currenthour < 12)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT IN THE MORNING!";
else if (currenthour >= 12 || currenthour <= 18)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT IN THE AFTERNOON!";
else if (currenthour > 18 || currenthour <= 24)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT LATE AT NIGHT!";
else
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT AT BEPIS O' CLOCK!";

month = current_month;

if (month == 12 || (month < 3 && month < 0))
    weather = 1;
else if (month < 6)
    weather = 2;
else if (month < 9)
    weather = 3;
else if (month < 12)
    weather = 4;
else
    weather = 0;

switch (weather)
{
    case 1:
        weathermessage = "STAY INSIDE AND PLAY MORE UNDERTALE!";
        break;
    
    case 2:
        weathermessage = "DON'T FORGET TO PLANT SOME FLOWERS!";
        break;
    
    case 3:
        weathermessage = "COOL OFF AND GAME ON!";
        break;
    
    case 4:
        weathermessage = "BECOME RULER OF THE LOCAL LEAF PILE!";
        break;
    
    default:
        weathermessage = "LOOK AT THE BEPIS!";
        break;
}

if (global.allowinternet == 0)
    internetmessage = "THE WI-FI HERE SUCKS.";
else
    internetmessage = "SUCCESSFULLY CONNECTED TO THE UNDERNET!";

bottommessage = ["ESSAYEZ AUSSI DELTARUNE!", "7,8/10, PAS ASSEZ DE CHIENS.", "APPROUVÉ PAR LA MARQUE MTT!", "MOD UNDERTALE N° 1 [[201X]]!!", "JE CROIS QUE J'AI LAISSÉ MON FOUR À TEMPORISATION COMÉDIQUE ALLUMÉ...", "...Quelqu'un m'entend-il ?... À l'aide... ", "IL N'Y A RIEN QUE JE DÉTESTE PLUS QUE LES TEXTES D'AMBIANCE GÉNÉRÉS AU HASARD LORS DU DÉFILEMENT.", "UN GRAND MERCI À SIMPLEFLIPS.", "HÉ, REGARDE ÇA.                                     PLUTÔT COOL, NON ?", "SI VOUS LISEZ CECI, C'EST QUE ÇA MARCHE.", "C'EST UNE CHAÎNE DE CARACTÈRES CERTIFIÉE.", "ÉCOUTEZ LA BANDE ORIGINALE SUR SOUNDCLOUD!", "REJOIGNEZ LE SERVEUR DISCORD OFFICIEL!", "ESSAYEZ AUSSI RIBBIT!", "ON N'A JAMAIS ASSEZ DE BEPIS.", "APPAREMMENT, CE TEXTE DE PRÉSENTATION EST UNE VRAIE BÊTISSE.", "ÇA A LE GOÛT D'UN TEXTE DE PRÉSENTATION.", "MOD DE L'ANNÉE, TOUTES LES ANNÉES, BÉBÉ!", "EXPLOREZ AUTANT QUE VOUS LE POUVEZ; VOUS POURRIEZ DÉCOUVRIR QUELQUE CHOSE DE NOUVEAU!", "COMBIEN FAIT 9 + 10?", "APPUYEZ SUR [ECHAP] POUR OUVRIR LE MENU DE PAUSE!", "ATTENDEZ... C'EST QUI, CE TYPE BIZARRE…?", "UN PROJET EN COURS!", hourmessage, "EN RETARD, MAIS AVEC STYLE!", "NE MANQUEZ PAS L'OCCASION DE VOUS LANCER DANS UNE RENCONTRE AU DÉPÔT!", internetmessage, "TU N'AS RIEN DE MIEUX À FAIRE?", weathermessage, "TU JOUES À UNDERTALE : BITS AND PIECES!", "QUICK! DEPOSIT YOUR KROMER FOR ANOTHER 30 MINUTES OF EUPHORIA!!!", "ARE YOU WAITING FOR SOMETHING TO HAPPEN?", "NOW, WHERE DID THOSE KEYS GO...?", "SALÉ? SUCRÉ? SALÉ-SUCRÉ?                         ÉPICÉ?", "LOOK OUT FOR FUTURE UPDATES FOR UNDERTALE: BITS AND PIECES!", "WHY DO THEY CALL IT BITS AND PIECES WHEN YOU BITS THE PIECES OF PIECES BITS THE PIECES?", "SMILE! THE GHOST OF A CHILD MIGHT BE NARRATING YOUR EVERY MOVE.", "LOOK OUT FOR UNTITLED...                    WHENEVER THAT GETS WORKED ON...?", "100% GUARANTEED TO PROVOKE SOME KIND OF REACTION OUT OF USERS!", "ALSO TRY OFF!", "ALSO TRY YUME NIKKI!", "ALSO TRY UNDERTALE II!", "ALSO TRY CAVE STORY!", "ESSAYEZ AUSSI DELTARUNE+!", "IF YOU'RE OVER 23 AND HAVE A COMPUTER, THIS MOD IS A MUST HAVE!", "ALSO TRY CAVE STORY ENCORE!", "CHECK OUT TOBY FOX'S SECRET BASE ON FAMITSU!", "INSCRIVEZ-VOUS À LA NEWSLETTER D'UNDERTALE/DELTARUNE !", "UNDERTALE: BITS AND PIECES, THE FRIENDLY RPG MOD WHERE NOBODY HAS TO DIE!        ...MOSTLY."];
