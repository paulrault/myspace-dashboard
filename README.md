# MySpace Universe V10 — Universe Ultimate

Application personnelle statique, prête pour GitHub Pages. Aucun backend, aucun compte, aucune dépendance cloud et aucun Supabase.

## Installation
1. Décompressez `myspace-universe-v10.zip`.
2. Téléversez `index.html`, `style.css`, `app.js` et `README.md` à la racine du dépôt GitHub Pages.
3. Validez les changements (commit) puis ouvrez le site publié.

## Nouveautés V10
- Centre d'automatisations : activation/désactivation des alertes d'échéance, de risque projet et de revue hebdomadaire.
- Récurrences quotidiennes, hebdomadaires et mensuelles, avec correction du calcul des fins de mois.
- Centre de commandes (bouton ⌘ ou Ctrl+K) pour accéder rapidement aux actions courantes.
- Sauvegardes locales versionnées (jusqu'à cinq instantanés) et restauration avec confirmation.
- Statistiques enrichies, dont les tâches terminées sur les sept derniers jours lorsque leur date de fin est disponible.
- Migration automatique de la clé de stockage `myspace-universe-v9` vers `myspace-universe-v10` dans le même navigateur. L'ancienne clé reste intacte.
- Import JSON normalisé et export au schéma V10. Les données exportées de V9 sont prises en charge lorsqu'elles contiennent un objet de données compatible.
- Conservation des modules V9 : tâches, projets, calendrier, notes, notifications, inventaire IT/SISR, football, connaissances, statistiques, thème clair/sombre et recherche globale.

## Stockage et limites
Les données résident dans `localStorage` du navigateur, propre à l'origine du site et à l'appareil. Elles ne sont pas envoyées sur Internet. Les sauvegardes locales restent dans ce navigateur : utilisez aussi Export JSON pour conserver une copie sur votre ordinateur.

Les automatisations s'exécutent à l'ouverture ou au rendu d'une vue, ainsi que lorsque vous appuyez sur « Exécuter les règles ». Elles ne tournent pas lorsque la page est fermée et ne constituent pas des notifications système natives.

## Validation réalisée
- Syntaxe JavaScript contrôlée avec `node --check`.
- Intégrité ZIP contrôlée.
- Tests navigateur headless à réaliser/consulter selon le rapport de livraison : les tests automatisés ne couvrent pas nécessairement tous les cas d'utilisation.
