
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

