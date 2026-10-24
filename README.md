# MySpace Universe V7

Application personnelle unifiée, statique et compatible GitHub Pages. La synchronisation cloud et Supabase ont été retirés.

## Contenu
- `index.html` : structure de l'application.
- `style.css` : interface responsive bleu nuit / bleu clair, thèmes clair et sombre.
- `app.js` : navigation et fonctionnalités.
- `README.md` : guide d'installation et d'utilisation.

## Fonctionnalités
- Vue d'ensemble, tâches (statut, priorité, échéance, filtres), projets (progression), calendrier, notes et statistiques.
- Univers informatique SISR : inventaire manuel des machines, adresses IP, statuts et notes.
- Univers football : carnet de matchs, scores saisis manuellement et bilan victoires/nuls/défaites.
- Liens rapides, recherche de tâches, thème clair/sombre, création/modification/suppression.
- Stockage local du navigateur, export et import JSON.
- Mise en page responsive pour ordinateur, tablette et téléphone.

## Publication sur GitHub Pages
1. Décompressez l'archive.
2. Ouvrez le dossier `myspace-dashboard-v7`.
3. Téléversez `index.html`, `style.css`, `app.js` et `README.md` à la racine du dépôt GitHub (par exemple `paulrault/myspace-dashboard`).
4. Faites un commit.
5. Dans **Settings → Pages**, sélectionnez la branche `main` et le dossier `/ (root)` si ce n'est pas déjà configuré.
6. Ouvrez l'URL GitHub Pages du dépôt.

## Stockage et sauvegardes
Les données sont enregistrées dans `localStorage` du navigateur, sur l'appareil courant. Elles ne se synchronisent pas entre navigateurs ou appareils, même si le site est hébergé sur GitHub Pages.
Pour migrer, ouvrez **Paramètres → Données & sauvegardes → Exporter JSON** sur le premier appareil, puis utilisez **Importer JSON** sur le second. L'import remplace les données actuelles de cette application dans le navigateur : exportez d'abord une sauvegarde.
Les données de V6 ne sont pas automatiquement importées. Si vous souhaitez les conserver, exportez-les depuis la V6, puis vérifiez le format avant import dans la V7. Cette version attend les collections `tasks`, `projects` et `notes`; les autres données sont facultatives.

## Notes
- Les informations informatiques et sportives sont saisies manuellement. L'application ne vérifie pas l'état réel des machines ni les résultats officiels.
- Les liens rapides ouvrent des sites externes dans un nouvel onglet.
- La police Google Fonts est facultative; en cas d'absence de connexion, les polices système sont utilisées.
- N'incluez aucune clé secrète ou mot de passe dans le code du site.
