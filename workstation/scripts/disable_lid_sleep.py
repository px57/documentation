import os
import shutil
from pathlib import Path

CONFIG_FILE = "/etc/systemd/logind.conf"
BACKUP_FILE = "/etc/systemd/logind.conf.bak"

def update_logind_conf():
    if os.geteuid() != 0:
        print("❌ Ce script doit être exécuté avec les droits administrateur (sudo).")
        return

    # Sauvegarde du fichier original
    if not os.path.exists(BACKUP_FILE):
        shutil.copy(CONFIG_FILE, BACKUP_FILE)
        print(f"✅ Sauvegarde créée : {BACKUP_FILE}")

    with open(CONFIG_FILE, "r") as f:
        lines = f.readlines()

    new_lines = []
    found_lid = found_lid_docked = False

    for line in lines:
        if line.strip().startswith("HandleLidSwitch="):
            new_lines.append("HandleLidSwitch=ignore\n")
            found_lid = True
        elif line.strip().startswith("HandleLidSwitchDocked="):
            new_lines.append("HandleLidSwitchDocked=ignore\n")
            found_lid_docked = True
        else:
            new_lines.append(line)

    # Ajouter les lignes si elles n'existent pas
    if not found_lid:
        new_lines.append("HandleLidSwitch=ignore\n")
    if not found_lid_docked:
        new_lines.append("HandleLidSwitchDocked=ignore\n")

    # Écriture du fichier modifié
    with open(CONFIG_FILE, "w") as f:
        f.writelines(new_lines)

    print("✅ Fichier modifié avec succès.")

    # Redémarrage du service systemd-logind
    os.system("systemctl restart systemd-logind")
    print("🔁 Service systemd-logind redémarré.")

if __name__ == "__main__":
    update_logind_conf()

