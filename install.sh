#!/bin/bash
# =============================================================================
# Installateur RustDesk Helper
# Télécharge et installe RustDesk Helper depuis les releases publiques
# =============================================================================

set -e

REPO="demiton/vesta-releases"
VERSION="latest"
INSTALL_DIR="$HOME/Applications"

# Couleurs
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# Bannière
echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║         🔧 Installation RustDesk Helper                      ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Détection OS
OS=$(uname -s)
ARCH=$(uname -m)

print_info "Système détecté: $OS $ARCH"

# Linux uniquement pour l'instant
if [ "$OS" != "Linux" ]; then
    echo "❌ Ce script supporte uniquement Linux pour l'instant."
    echo "Pour Windows/macOS, téléchargez manuellement depuis:"
    echo "https://github.com/$REPO/releases"
    exit 1
fi

# Créer le dossier Applications
if [ ! -d "$INSTALL_DIR" ]; then
    print_info "Création du dossier $INSTALL_DIR..."
    mkdir -p "$INSTALL_DIR"
fi

# Télécharger
FILENAME="rustdesk-helper-linux.AppImage"
URL="https://github.com/$REPO/releases/$VERSION/download/$FILENAME"
DEST="$INSTALL_DIR/$FILENAME"

print_info "Téléchargement de RustDesk Helper..."
echo "   URL: $URL"
echo "   Destination: $DEST"
echo ""

if command -v curl &> /dev/null; then
    curl -L --progress-bar "$URL" -o "$DEST"
elif command -v wget &> /dev/null; then
    wget --progress=bar:force "$URL" -O "$DEST"
else
    echo "❌ curl ou wget requis"
    exit 1
fi

# Rendre exécutable
chmod +x "$DEST"
print_success "Fichier rendu exécutable"

# Créer un raccourci desktop
DESKTOP_DIR="$HOME/.local/share/applications"
mkdir -p "$DESKTOP_DIR"

cat > "$DESKTOP_DIR/rustdesk-helper.desktop" << EOF
[Desktop Entry]
Name=RustDesk Helper
Comment=Aide à distance simplifiée
Exec=$DEST
Icon=$DEST
Type=Application
Categories=Network;RemoteAccess;Utility;
Terminal=false
StartupNotify=true
EOF

chmod +x "$DESKTOP_DIR/rustdesk-helper.desktop"
print_success "Raccourci créé"

# Mettre à jour la base de données
if command -v update-desktop-database &> /dev/null; then
    update-desktop-database "$DESKTOP_DIR" 2>/dev/null || true
fi

# Fin
echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
print_success "Installation terminée !"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo "📍 Emplacement: $DEST"
echo ""
echo "🚀 Pour lancer:"
echo "   $DEST"
echo ""
echo "🗑️  Pour désinstaller:"
echo "   rm $DEST"
echo "   rm $DESKTOP_DIR/rustdesk-helper.desktop"
echo ""
