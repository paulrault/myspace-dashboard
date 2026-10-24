# MySpace Dashboard V6 — application unifiée

## Contenu
- `index.html` : structure de l'application
- `style.css` : interface responsive et thèmes clair/sombre
- `app.js` : tâches, projets, calendrier, notes, statistiques, liens, espace SISR, carnet football, import/export JSON et synchronisation Supabase
- `supabase-setup.sql` : table privée et politiques de sécurité (RLS)

## Lancer en local
1. Décompresse l'archive.
2. Ouvre `index.html` dans un navigateur récent.
3. Les données locales sont conservées dans le navigateur. Pour la synchronisation cloud, déploie de préférence le site en HTTPS (GitHub Pages convient).

## Mettre à jour GitHub Pages
1. Dans ton dépôt, remplace les anciens fichiers par les fichiers de ce dossier.
2. Garde `index.html`, `style.css` et `app.js` à la racine du dépôt.
3. Fais un commit, puis vérifie `Settings > Pages` (branche `main`, dossier `/ (root)`).
4. Avant la mise à jour, exporte une sauvegarde JSON depuis V5. V6 tente de reprendre automatiquement les données locales V5 depuis le même navigateur.

## Synchronisation multi-appareils avec Supabase
La synchronisation n'est **pas active par défaut**. Il faut créer ton projet Supabase et configurer les identifiants. Ne partage jamais ta clé `service_role` ou une clé secrète. Le site doit utiliser uniquement la clé publique `anon` / `publishable`.

1. Crée un projet sur https://supabase.com/ et ouvre le SQL Editor.
2. Copie-colle puis exécute le contenu de `supabase-setup.sql`. La table utilise RLS : chaque compte ne peut lire et modifier que sa propre ligne.
3. Dans `Project Settings > API`, récupère l'URL du projet et la clé publique (`anon` ou `publishable`).
4. Dans MySpace V6 > Paramètres > Synchronisation multi-appareils, renseigne l'URL et la clé puis clique sur « Enregistrer la configuration ».
5. Crée un compte avec une adresse e-mail et un mot de passe. Selon les réglages Supabase, il peut être nécessaire de confirmer l'adresse avant de se connecter.
6. Connecte-toi sur chaque appareil avec le même compte. À la première connexion, si le cloud est vide, les données de cet appareil initialisent l'espace cloud. Les appareils suivants récupèrent les données cloud.

### Important sur les conflits
V6 synchronise un document JSON complet par compte, et non chaque élément individuellement. Évite de modifier simultanément le même espace sur plusieurs appareils. Fais régulièrement un export JSON. La version ne fournit pas de résolution automatique des modifications concurrentes ni de chiffrement applicatif supplémentaire ; la sécurité repose sur HTTPS, Supabase Auth et les politiques RLS.

## Modules inclus
- **Tableau de bord** : compteurs, prochaines tâches, projets, échéances et liens rapides.
- **Tâches** : ajout/modification/suppression, recherche, filtres, catégories, priorités, échéances et statut.
- **Projets** : suivi de progression.
- **Calendrier** : navigation mensuelle et tâches par date.
- **Notes** : création, modification et suppression.
- **Statistiques** : catégories et priorités.
- **Informatique SISR** : inventaire manuel des équipements et journal des incidents. Ce n'est pas de la supervision en direct.
- **Football** : carnet personnel des matchs et scores saisis manuellement ; aucune donnée officielle n'est inventée ou récupérée.
- **Paramètres** : thème, liens rapides, export/import JSON, réinitialisation et configuration cloud.

## Dépannage rapide
- Si les données semblent absentes, vérifie que tu utilises le même navigateur/profil ou importe une sauvegarde JSON.
- Si Supabase renvoie une erreur 401/403, vérifie l'URL, la clé publique, la session, le SQL exécuté et les politiques RLS.
- Si la confirmation d'e-mail est activée, confirme le compte avant de te connecter.
- Les données locales ne sont pas envoyées au cloud tant qu'une session n'est pas active.
