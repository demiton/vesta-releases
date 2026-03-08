# 🔧 Vesta

**Suite d'outils pour assistance à distance et administration système**

Vesta est une application graphique qui simplifie l'installation et la gestion d'outils d'aide à distance, avec une interface intuitive et accessible à tous.

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

### Windows

1. Téléchargez `vesta-windows.exe`
2. Double-cliquez pour installer
3. Suivez l'assistant d'installation

### macOS

1. Téléchargez `vesta-macos.dmg`
2. Ouvrez le fichier DMG
3. Glissez Vesta dans le dossier Applications

---

## 📥 Téléchargements

| Plateforme | Fichier | Taille |
|------------|---------|--------|
| **Linux** | [vesta-linux.AppImage](https://github.com/demiton/vesta-releases/releases/latest/download/vesta-linux.AppImage) | ~100 MB |
| **Windows** | [vesta-windows.exe](https://github.com/demiton/vesta-releases/releases/latest/download/vesta-windows.exe) | ~100 MB |
| **macOS** | [vesta-macos.dmg](https://github.com/demiton/vesta-releases/releases/latest/download/vesta-macos.dmg) | ~100 MB |

---

## 🎯 Fonctionnalités

### 🙋 Mode "Recevoir de l'aide"
- Installation automatique d'outils d'aide à distance
- Génération d'un mot de passe sécurisé
- Affichage de l'ID et du mot de passe
- Boutons "📋 Copier" pour partager facilement

### 🖥️ Mode "Aider quelqu'un"
- Téléchargement automatique des outils
- Barre de progression en temps réel
- Instructions de connexion pas à pas
- Support multi-plateforme

---

## 🛠️ Technologies supportées

Actuellement, Vesta prend en charge :
- **RustDesk** : Outil d'aide à distance open-source

*D'autres outils seront ajoutés dans les futures versions.*

---

## 📄 Licence

MIT
