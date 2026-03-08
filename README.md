# 🔧 Vesta

**Suite d'outils pour assistance à distance et administration système**

Vesta est une application graphique qui simplifie l'installation et la gestion d'outils d'aide à distance, notamment RustDesk, avec une interface intuitive et accessible à tous.

---

## 🚀 Installation rapide

### Linux

```bash
curl -fsSL https://raw.githubusercontent.com/demiton/vesta-releases/main/install.sh | bash
```

Ou manuellement :

```bash
# Télécharger
curl -LO https://github.com/demiton/vesta-releases/releases/latest/download/vesta-linux.AppImage

# Rendre exécutable
chmod +x vesta-linux.AppImage

# Lancer
./vesta-linux.AppImage
```

---

## 📥 Téléchargements

| Plateforme | Fichier | Taille |
|------------|---------|--------|
| **Linux** | [vesta-linux.AppImage](https://github.com/demiton/vesta-releases/releases/latest/download/vesta-linux.AppImage) | ~100 MB |

---

## 🎯 Fonctionnalités

### 🙋 Mode "Recevoir de l'aide"
- Installation automatique de RustDesk
- Génération d'un mot de passe sécurisé
- Affichage de l'ID et du mot de passe
- Boutons "📋 Copier" pour partager facilement
- Activation/Désactivation du service à volonté

### 🖥️ Mode "Aider quelqu'un"
- Téléchargement automatique des outils dans `~/Applications/`
- Barre de progression en temps réel
- Instructions de connexion pas à pas
- Support multi-plateforme (Linux, Windows, macOS)

---

## 🛠️ Technologies supportées

Actuellement, Vesta prend en charge :
- **RustDesk** : Outil d'aide à distance open-source

*D'autres outils seront ajoutés dans les futures versions.*

---

## 📄 Licence

MIT

---

## 📝 Notes

Cette application est distribuée sous forme de binaires pré-compilés. Pour toute question ou suggestion, utilisez les Issues de ce repository.
