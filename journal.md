
Cette ligne doit rester après correction.

# Journal de bord du projet encadré
## Travail effectué: 01-git-intro exercices
J'ai créé un dépôt et j'ai synchronisé mon dépôt local avec le dépôt distant en utilisant la commande `git fetch`. J'ai créé un fichier appelé `journal.md` sur GitHub, puis j'ai utilisé `git pull` pour synchroniser le commit. J'ai vérifié l'état du dépôt avec `git status` pour m'assurer que les changements ont été détectés. J'ai ensuite modifié le fichier pour ajouter cette sous-section décrivant le travail effectué.  Ensuite, je vais utiliser `git add` pour préparer les modifications, `git commit` pour les valider, et `git push` pour les envoyer au dépôt distant sur GitHub.

# Séance 3

## Exercices git
If you like piña coladas
And gettin' caught in the rain
If you're not into yoga
If you have half a brain
If you like makin' love at midnight
In the dunes on the cape
Then I'm the love that you've looked for
Write to me and escape

Ceci est une erreurrrrr

Cette ligne sera mise de côté.

## Exercices git correction d’erreurs3

Journal des actions effectuées pour la séance 3
Exercice 2.a : Créez un commit erroné au milieu d’autres
J'ai commencé par ouvrir nano journal.md. Ensuite, j'ai sauvegardé et ajouté les modifications avec git add journal.md.
Pour visualiser le contenu du journal, j'ai utilisé la commande cat journal.md. Après avoir effectué d'autres modifications, j'ai de nouveau utilisé nano pour éditer le fichier, suivi de git add journal.md
Exercice 2.b: Défaire le commit
J'ai récupéré l’identifiant SHA du commit "I AM ERROR" avec la commande git log (--oneline), ce qui m'a permis d'identifier le SHA suivant : ed41f4a. Ensuite, j'ai utilisé la commande git revert pour annuler ce commit : git revert ed41f4a, suivie de git revert --continue pour compléter le processus.
Regarder l’historique des commits après avoir défait ce commit a révélé qu'il déclenchait un conflit de fusion. Cela signifie que Git ne savait pas quelles modifications conserver, et j'ai donc dû ouvrir manuellement le fichier journal.md pour résoudre le conflit.
L’historique après l'annulation du commit montrait que l’erreur restait visible dans l’historique, mais était corrigée par un nouveau commit de type "Revert". Cette approche non destructive permet de préserver la traçabilité.
Exercice 2.c Créez un nouveau tag
J'ai créé un tag nommé git-seance3-defaire avec la commande : git tag -a git-seance3-defaire -m "Git : apprendre à défaire un commit, séance 3".
Exercice 3 : Défaire des changements avant de pousser
J'ai créé le fichier oups.md avec touch oups.md et j'y ai ajouté du texte à l'aide de nano oups.md. Après cela, j'ai ajouté et commis les modifications avec git add oups.md et git commit -m "Ajout d'un texte de la chanson piña colada" et git commit -m "Ajout d'une erreur dans oups.md" Ensuite, j'ai fait git push origin main 
Exercice 3a.
J'ai utilisé git reset --soft git-seance3-defaire pour revenir à l’état précédent, puis git reset --mixed git-seance3-defaire pour désynchroniser les fichiers suivis. J’ai vérifié avec git status.
Exercice 3b.
nano oups.md
nano journal.md
rm oups.md
git status
git add journal.md
git add -u   
git add -u: Met en place la suppression de oups.md parce qu'il a déjà été supprimé manuellement mais qu'il est toujours suivi dans le référentiel.
git commit -m "Déplacement des modifications de oups.md vers journal.md et suppression de oups.md"
J'ai essayé de supprimer oops.md depuis le terminal mais j'ai supprimé le fichier localement avant de le supprimer de git avec rm oops.md donc je n'ai pas pu résoudre ce problème dans le terminal et j'ai dû le faire à distance.
Comparaison des deux méthodes utilisées (utilisation de Git pour gérer les modifications vs manipulation manuelle des fichiers) 
Avec Git, j'avais plus de contrôle sur les versions, tandis que la manipulation manuelle était plus directe mais moins flexible.Git automatise la gestion des fichiers, ce qui est plus efficace pour les modifications complexes.Git permet de mieux suivre l'historique des changements, tandis que la manipulation manuelle cache certains détails des étapes intermédiaires. 
Exercice 4a : 
je suis allé dans le dépôt distant et j'ai localisé le fichier journal.md
nano journal.md dans le référentiel local

Exercice 4b : 
Vérifier l'état de vos modifications locales : git status
Vérifier si la version locale est à jour :
git fetch
git status
git pull origin main
À ce stade, le fichier local rencontre un conflit de fusion. Git me demande de résoudre le conflit manuellement:
Votre branche et 'origin/main' ont divergé,
et ont respectivement 1 et 3 commits différents.

J'ai utilisé la commande git stash push -m "Conservation des changements séance 3" pour conserver les modifications locales avant de tenter de synchroniser avec la version distante. J'ai vérifié la liste des stashs avec git stash list, et j'ai appliqué ces modifications plus tard avec git stash apply, avant de finalement les supprimer avec git stash drop.
J'ai eu beaucoup de problèmes avec le problème de divergence et le fait que j'avais supprimé les oups localement mais pas à distance, j'ai donc fini par devoir fusionner les changements à distance avec les changements locaux, en créant un commit de fusion. Avec la commande : git pull origin main --no-rebase
J'ai dû résoudre manuellement le conflit dans journal.md en supprimant les marqueurs de conflit.
git add journal.md
git commit -m "Conflit de fusion résolu dans journal.md" 
git push origin main
Exercice 5 : Créer un tag final
À la fin, j'ai créé un tag git-seance3-fin avec la commande git tag -a git-seance3-fin -m "séance 3, version finale des exercices de git" et l'ai poussé avec git push origin git-seance3-fin.

## Seance 4

**Date**: 2024-10-21

J'ai travaillé sur le script comptes.sh, qui permet de compter les occurrences de "Location" dans les fichiers .ann pour les années 2016, 2017 et 2018. Le script itère sur les années et utilise grep pour rechercher et compter les occurrences de "Location". J'ai ajouté la variable base_dir car les fichiers .ann n'étaient pas dans le même dossier que le script.

Étapes suivies :

Utilisation de nano pour créer/modifier le fichier.
Ajout des permissions d'exécution avec chmod +x comptes.sh.
Exécution du script, qui a affiché :
Année 2016: 3144 lieux trouvés
Année 2017: 2466 lieux trouvés
Année 2018: 3110 lieux trouvés
Ajout du script au dépôt Git (git add, git commit, git push).
Exercice 2:

Exercice 2.a: J'ai créé un script compte_par_type.sh qui prend deux arguments : une année et un type d'entité (par exemple, "Location"). Ce script compte les occurrences de l'entité donnée dans les fichiers .ann et affiche seulement le nombre. Il inclut une validation des arguments pour s'assurer que l'utilisateur fournit bien une année valide (4 chiffres ou *) et un type d'entité non vide.

Ensuite, j'ai écrit compte_par_type_par_an.sh, qui appelle compte_par_type.sh pour chaque année de 2016 à 2018. Ce script affiche le nombre d'entités par année et vérifie que l'utilisateur passe bien un type d'entité valide.

J'ai rendu ces scripts exécutables et les ai testés avec les arguments appropriés.

Exercice 2.b: Pour le script compte_lieux.sh, j'ai implémenté un système qui prend trois arguments : une année, un mois et un nombre de lieux à afficher. Le script peut utiliser * pour itérer sur toutes les années et/ou mois, et il compte et classe les lieux les plus mentionnés dans les fichiers .ann. Le script fonctionne, mais j'ai rencontré un problème avec la gestion du joker * lors de la recherche sur plusieurs années/mois, que je dois corriger.

Les scripts modifiés ont été ajoutés et synchronisés avec Git.

Exercice 3:

J'ai modifié mes scripts pour valider leurs arguments sans créer de nouveaux scripts. La validation vérifie que le nombre d'arguments est correct et que l'année et le type d'entité sont valides. J'ai utilisé une approche simple avec les conditions Bash pour vérifier que les arguments sont bien fournis.

Les scripts ont été mis à jour et synchronisés avec Git :

git add Exercices/compte_par_type.sh Exercices/compte_par_type_par_an.sh Exercices/compte_lieux.sh
git commit -m "Ajoute la validation des arguments aux scripts"
git push origin main
Exercice 4:

J'ai expliqué le fonctionnement de la boucle dans le script comptes.sh. La boucle itère sur les années 2016, 2017, et 2018, utilisant grep pour rechercher le mot "Location" dans les fichiers .ann, puis compte le nombre de lignes contenant ce mot avec wc -l. Le script affiche ensuite le nombre de lieux trouvés pour chaque année.

# Séance 6

## Mini-projet 

Questions :
1. Pourquoi ne pas utiliser cat ?                                                                 Cat produit simplement le contenu du fichier tel quel, sans aucun traitement tandis que read vous permet de traiter chaque ligne séparément, ce qui vous donne plus de contrôle. Vous pouvez appliquer des transformations, ajouter des numéros de ligne et traiter chaque ligne individuellement par exemple.

3. Comment transformer "urls/fr.txt" en paramètre du script ?
   Vous pouvez passer le fichier comme argument de ligne de commande pour rendre le script plus flexible. Cela signifie que vous pouvez utiliser n'importe quel fichier en le spécifiant lors de l'exécution du script. On remplace "urls/fr.txt » par $1, qui représente le premier argument de ligne de commande transmis au script.

2.1 Valider l’argument : ajouter le code nécessaire pour s’assurer qu’on donne bien un argument au script, sinon on s’arrête
  Ajouter une instruction if qui vérifie si $1 est vide pour confirmer que le script a reçu un argument, un nom de fichier, lorsqu'il est exécuté. 

if [ -z "$1" ]; then
    echo "Erreur : aucun fichier fourni. Veuillez spécifier un fichier."
    exit 1
fi

while read -r line; do
    echo "${line}"
done < "$1"

3. Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?
• Bien séparer les valeurs par des tabulations
  Pour les numéros de ligne, on peut utiliser une variable compteur qui s'incrémente à chaque ligne lue. Pour séparer les valeurs par des tabulations, utilisez \t dans l'instruction echo.

# Check if the argument is provided
if [ -z "$1" ]; then
    echo "Error: No input file provided."
    echo "Usage: $0 <file>"
    exit 1
fi

# Validate the file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

