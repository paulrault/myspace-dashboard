# MySpace Universe V9 — Universe Intelligence

Application personnelle statique pour GitHub Pages. HTML, CSS et JavaScript, sans backend, sans compte, sans Supabase et sans synchronisation cloud.

## Installation
1. Téléchargez et décompressez `myspace-universe-v9.zip`.
2. Téléversez `index.html`, `style.css`, `app.js` et `README.md` à la racine de votre dépôt GitHub Pages.
3. Committez les fichiers puis ouvrez le site publié.

## Nouveautés V9
- Centre de notifications local : retards, échéances, projets à échéance, marquer comme lu et effacer.
- Tâches récurrentes quotidiennes, hebdomadaires et mensuelles. La prochaine occurrence est créée lorsque la tâche est terminée.
- Statistiques avancées : taux de réalisation, retards, priorités, récurrence, progression par projet et volumes des modules.
- Chronologie des projets, triée par échéance, avec statut et progression.
- Recherche globale, thème clair/sombre, tâches, projets, calendrier, notes, inventaire IT/SISR, carnet de football et base de connaissances.
- Export/import JSON et réinitialisation locale.

## Stockage et confidentialité
Les données sont conservées dans `localStorage` du navigateur sous la clé `myspace-universe-v9`. Elles ne sont pas transmises ni synchronisées. Exportez régulièrement vos données en JSON. L'import remplace les données présentes après confirmation.

## Migration depuis V8
Le stockage V8 et V9 utilise des clés différentes. Pour récupérer des données V8, exportez-les depuis V8, puis importez le JSON dans V9. Le format V9 accepte un objet de données brut ou un export V9 enveloppé dans `data`; les formats différents peuvent nécessiter une adaptation.

## Notes de validation
Le JavaScript doit être contrôlé avec `node --check app.js` et l'archive testée avant publication. Les interactions doivent ensuite être vérifiées dans un navigateur : ajout/modification/suppression, tâche récurrente terminée, alertes d'échéance, export/import, thème et rechargement de page. Les notifications d'échéance sont calculées à l'ouverture ou au rendu d'une vue, pas par un service tournant en arrière-plan.
