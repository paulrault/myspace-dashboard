# MySpace Universe V13 — SISR Edition

## Fichiers
- `index.html` : structure de l’interface
- `style.css` : thème et mise en page
- `app.js` : modules, données et interactions

## Nouveautés V13
- Laboratoire interactif documentaire
- Relations entre équipements (connectivité, hébergement, dépendances DNS/DHCP, passerelle, sauvegarde)
- Scénarios de validation SISR avec étapes et statut
- Journal de contrôles de santé avec résultats OK / À vérifier / Échec
- Migration automatique depuis V12, V11, V10 et V9 si les données existent dans le même navigateur et sur la même origine

## Installation
Décompressez l’archive et téléversez les quatre fichiers à la racine de votre dépôt GitHub Pages. Exportez d’abord un JSON depuis la version précédente pour garder une sauvegarde.

## Limites et confidentialité
Les données restent dans le stockage local du navigateur. La V13 ne se connecte pas aux serveurs, ne lance pas de ping, ne scanne pas les IP et ne supervise pas automatiquement le réseau. Les relations et contrôles sont saisis manuellement.
