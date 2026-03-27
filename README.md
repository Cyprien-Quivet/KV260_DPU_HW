# README – SmartCam KV260 avec Raspberry Pi Camera et DPU

## Description

Ce projet est une adaptation du tutoriel **Xilinx Kria KV260 SmartCam** (version 2022.1) visant à :

1. Remplacer le pipeline MIPI ISP et audio par un pipeline compatible **Raspberry Pi Camera V2**.
2. Ajouter un **DPU (Deep Processing Unit) overlay** pour la détection faciale sur SmartCam.
3. Tester la plateforme avec le Raspberry Pi Camera et l’accélérateur DPU sur la **Kria KV260**.

Le projet permet à l’application SmartCam de capturer et traiter les images provenant de la Raspberry Pi Camera connectée sur **J9**, au lieu du capteur AP1305 d’origine.

---

## Matériel requis

- Kria KV260 SOM
- Raspberry Pi Camera V2 (élément14)
- Carte SD avec Ubuntu 22.04 et SmartCam Docker container
- Version Vivado / Vitis 2022.1
- Accès au dépôt `kria-vitis-platforms` version 2022.1

---

## Étapes réalisées

### 1. Préparation de la plateforme

- Clonage et génération de la plateforme SmartCam KV260 (`kv260_ispMipiRx_vcu_DP`).
- Copie et intégration de l’IP `isp_single_kv260` du pipeline Raspberry Pi.
- Importation et création du pipeline Raspberry Pi via `capture_pipeline_raspi.tcl`.

### 2. Mise à jour du Block Design

- Remplacement du `capture_pipeline` par `raspi_pipeline`.
- Connexion des signaux AXI et des interruptions.
- Ajustement du port AXI HP0 FPD de 128 bits à 64 bits.
- Suppression des blocs audio non utilisés.
- Ajout du signal `raspi_enable` et configuration des contraintes dans le fichier `.xdc`.

### 3. Génération du bitstream

- Regénération du HDL wrapper et des output products.
- Génération du bitstream `.bit` et conversion en `.bit.bin` pour `xmutil`.

### 4. Device Tree

- Modification du `.dtsi` pour refléter les changements (adresses, périphériques, GPIO, I2C, AFI ports, horloge).
- Compilation en `.dtbo` avec `dtc`.

### 5. Installation et test sur cible

- Copie des fichiers `.bit.bin` et `.dtbo` vers `/lib/firmware/xilinx/kv260-raspi`.
- Chargement de la plateforme via :

```bash
xmutil loadapp kv260-raspi
