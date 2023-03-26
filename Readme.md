# Rapport Docker
Léo Brossard


## Docker compose

dans le fichier /projetDockerLBrossard
''' docker compose up '''

# Travail atteint

## TP1
DockerFile et docker-compose disponible dans la racine de ce répo. Git

## Etape 1
Les deux Dockerfile affin d'exécuter le Back et le Front de l'application sont fonctionnels.

## Dockerfile Front

dans le fichier /front
''' docker build . -t fronttlc '''

''' docker run -p 8080:80 fronttlc '''


## Dockerfile Back

dans le fichier /api
''' docker build . -t backtlc '''

''' docker run -p 8081:8080 backtlc '''

## Etape 2
Le docker-compose a été fait mais n'est toujours pas fini, actuellement le front est capable de communiquer avec le back, le lancement de la db et d'etherpad ce fait correctement, etherpad est accessible et utilisable individuellement.

# Points forts et Problèmes rencontrés
J'ai rapidement fini les dockerfile et ai pus passé sur la création du docker-compose, après plus d'un mois de travail sur le docker-compose je n'ai toujours pas réussi à le faire fonctionner avec la communication entre le backend et etherpad. J'ai essayé de nombreuse solutions pour chercher à résoudre le problème existant:

- S'assurer de la présence des nom de domaine dans mon fichier /etc/hosts
- Fouiller la documentation et tout ce que j'ai pus trouver sur internet en rapport avec la connection à une image etherpad
- M'anipuler les externalPadUrl / internalPadUrl du fichier de configuration du backend "PollResourceEx.java" (et épelucher le fichier en générale)
- Modifier les fichiers de conf. nginx (en plus des urls qu'ils fallaient changer de base pour matcher le nom des images lancées)
- Modifier le Dockerfile du back pour s'assurer de séparer la phase de build avec la phase d'exécution
- Demander de l'aide à l'enseignent. Emma Chapuis et moi bloquions au même point et vous aviez conclue après une heure à nous aidé "rajoute moi sur le repo Git pour que je vois ça directement chez moi parceque c'est pas normal comme érreur".
- Demander de l'aide à des camarades qui ont réussi à aller beaucoup plus loin. Même en regardant et en proposant des modifications qu'ils avaient à leurs fichiers cela ne résoudait pas le problème de connection du backend avec etherpad
- Remodifier le fichier du docker-compose pour matcher les vidéos de support fournis
- Tester mon projet sur d'autre machine que la mienne
- Tester individullement les éléments (Backend, Frontend, etherpad, myadmin) pour s'assurer que l'erreur viennent bien de la communication

Je ne pensais pas tomber sur un point aussi bloquant, si j'avais su je me serait directement lance sur la partie déploiement continue (qui m'intéressait nettement plus) après avoir tenté de déployer sur ma machine virtuelle sans même avoir l'application entière qui marche (des mock/HttpIncterceptors aurait pu faire semblant d'avoir eu une application fonctionnelle pour au moins avancer sur les autres étapes du projet).

J'espère avoir été assés clair sur la quantité de travail fournis malgré le peut d'avancement obtenue sur ce TP
