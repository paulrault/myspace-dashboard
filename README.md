# MySpace Universe V11 — SISR Edition

Application statique pour GitHub Pages : HTML, CSS et JavaScript. Pas de cloud, pas de Supabase, aucun backend.

## Nouveautés V11
- Centre IT/SISR renforcé : inventaire des serveurs, machines virtuelles, postes, équipements réseau, hostname, IP, VLAN, système/version, rôles et services.
- Documentation des VLAN, réseaux CIDR, passerelles et usages.
- Registre d’incidents avec priorité, état, date, actions et résolution/réouverture.
- Procédures locales de dépannage pour réseau, Windows Server, Active Directory, DNS/DHCP, Debian, virtualisation, sauvegarde et sécurité.
- Horloge numérique en direct (HH:MM:SS) et date locale dans la barre supérieure. L’heure suit l’horloge du système et se met à jour chaque seconde.
- Migration automatique des clés V10 puis V9 vers V11 dans le même navigateur/origine. Les données anciennes ne sont pas supprimées.
- Les modules V10 restent présents : tâches récurrentes, projets/chronologie, calendrier, notes, notifications, automatisations, football, connaissances, statistiques, thème, recherche, sauvegardes locales, import/export JSON.

## Installation GitHub Pages
1. Décompressez le ZIP.
2. Téléversez `index.html`, `style.css`, `app.js` et `README.md` à la racine du dépôt GitHub Pages.
3. Faites un commit puis ouvrez le site publié.

## Données et limites
Les données sont stockées dans `localStorage`, propre à ce navigateur et à cette origine. Pour changer d'appareil ou de domaine, exportez un JSON depuis Paramètres & données puis importez-le dans V11. Les nouveaux tableaux `vlans`, `incidents` et `procedures` sont normalisés automatiquement.

L’inventaire est documentaire : il ne réalise pas de ping, de scan IP, de supervision, de connexion à Active Directory ou de modification de configuration réseau.

## Contrôles effectués pour cette livraison
- Syntaxe JavaScript contrôlée avec `node --check`.
- Intégrité ZIP vérifiée.
- Les tests d’interaction dans un vrai navigateur restent à réaliser ; aucune certification complète des interactions n’est revendiquée.
