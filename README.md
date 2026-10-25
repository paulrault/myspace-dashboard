# MySpace Universe V15 — SISR Edition

Application personnelle statique compatible avec GitHub Pages. Elle utilise HTML, CSS et JavaScript natifs, sans dépendance externe, serveur, compte cloud ou Supabase.

## Fichiers
- `index.html` : structure de l’application
- `style.css` : thème clair/sombre et mise en page responsive
- `app.js` : modules, formulaires, stockage et logique
- `README.md` : documentation

## Nouveautés V15
- Vue de supervision documentaire : états déclarés de l’inventaire, incidents ouverts, contrôles en échec et maintenances en retard.
- Enregistrement manuel des contrôles de santé, avec date, équipement, résultat et observations.
- Plan de maintenance : échéance, catégorie, équipement, fréquence, statut, notes et historique de complétion.
- Journal local des opérations liées aux contrôles et à la maintenance.
- Les modules existants V14 sont conservés : tâches, projets, calendrier, notes, notifications, automatisations, inventaire IT, VLAN, incidents, procédures, tickets, opérations, connaissances, laboratoire et carte réseau.

## Installation GitHub Pages
1. Décompresser l’archive.
2. Copier les quatre fichiers à la racine du dépôt GitHub Pages (ou dans le dossier publié par Pages).
3. Commit/push puis attendre la publication.
4. Ouvrir le site et vérifier les données importées.

## Migration et sauvegardes
Au premier lancement, l’application cherche les données locales de V14 puis V13 à V9 sur la même origine, les normalise et les enregistre sous la clé V15. Avant de remplacer les fichiers, exporter un JSON depuis la version précédente. Le navigateur ne partage pas automatiquement `localStorage` entre différentes URL, navigateurs ou appareils. L’import JSON remplace les données ouvertes : effectuer une sauvegarde avant import.

## Stockage et limites
- Toutes les données sont conservées dans `localStorage` du navigateur.
- Pas de synchronisation entre appareils, pas de cloud et pas de serveur.
- La supervision est documentaire : l’application ne ping pas les équipements, ne scanne pas le réseau, n’interroge pas Active Directory, Docker, Zabbix ou Prometheus, et ne mesure pas réellement CPU/RAM/disque. Les états sont saisis par l’utilisateur.
- Les fréquences de maintenance sont des métadonnées : l’application ne lance pas d’opération ni de rappel système lorsque le site est fermé.
- Le stockage du navigateur peut être effacé ou saturé. Utiliser régulièrement Exporter JSON.

## Validation
La syntaxe JavaScript peut être contrôlée avec `node --check app.js`; l’intégrité de l’archive avec `unzip -t myspace-universe-v15.zip`. Les interactions complètes doivent encore être validées dans un navigateur réel.
