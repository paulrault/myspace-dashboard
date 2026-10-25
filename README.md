# MySpace Universe V8

Application personnelle unifiée, conçue pour GitHub Pages et le stockage local du navigateur. Aucun compte, serveur ou service cloud n'est requis.

## Installation GitHub Pages
1. Décompressez l'archive.
2. Téléversez `index.html`, `style.css`, `app.js` et `README.md` à la racine du dépôt.
3. Effectuez un commit sur la branche publiée par GitHub Pages.
4. Ouvrez le site publié et testez les actions principales.

## Modules
- Vue d'ensemble et recherche globale
- Tâches, priorités, statuts et échéances
- Projets et progression
- Calendrier des échéances
- Notes
- Inventaire IT / SISR
- Carnet de matchs de football (saisie manuelle)
- Base de connaissances
- Statistiques, liens rapides et thèmes clair/sombre
- Export/import JSON, impression et réinitialisation

## Données et confidentialité
Les données sont enregistrées dans `localStorage` du navigateur. Elles ne sont pas synchronisées entre appareils. Exportez régulièrement un fichier JSON. L'import remplace les collections présentes; faites une sauvegarde avant de l'utiliser. Les données de V7 ne sont pas automatiquement reprises; exportez-les depuis V7 puis importez le JSON si le format est compatible.

## Limites
- Les statistiques football reflètent uniquement les résultats saisis manuellement.
- Le statut d'un équipement IT est manuel, ce n'est pas de la supervision réseau en temps réel.
- L'application ne dépend pas de Supabase ni d'un backend.
