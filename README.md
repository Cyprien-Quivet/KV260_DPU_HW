# Projet DPU TRD pour la carte Kria KR260

Ce dépôt contient l’implémentation du **DPU TRD (Targeted Reference Design)** pour la carte **Kria KR260**, réalisé avec les outils **Vivado 2024.2 (64-bit)** et **Vitis AI 3.0**.  
Le projet illustre la création, la personnalisation et la génération du matériel pour un DPU dimensionné selon nos besoins applicatifs.

---

## 🧭 Aperçu du projet

Ce tutoriel détaille le processus de **création d’un DPU TRD pour la carte Kria KR260**, à l’aide des outils suivants :

- **Vivado v2024.2 (64-bit)**
- **Vitis AI 3.0**
- **Vitis AI 2022.2 tools**

> **Note :** Dans Vitis AI 3.0, la version du DPU IP utilisée est **V4.1**.  
> Cette même version est reconduite dans **Vitis AI 3.5**, car aucun nouveau DPU IP n’a été publié pour les plateformes MPSoC.

Le projet inclut la configuration, la génération et la **dimensionnement du DPU IP** pour notre cas d’usage spécifique sur la KR260.

---

## 📁 Contenu du dépôt

- `README.md` — Ce fichier  
- `design/` — Fichiers du projet Vivado pour le DPU TRD  
- `scripts/` — Scripts TCL pour automatisation de la synthèse et de l’implémentation  
- `docs/` — Documentation et notes supplémentaires  

---

## ⚙️ Outils requis

- **Vivado 2024.2 (64-bit)**  
- **Vitis AI 3.0** ou version supérieure  
- **Python 3.x** (pour l’exécution de scripts optionnels)  
- **Carte Kria KR260** (Zynq UltraScale+ MPSoC)

---

## 🚀 Utilisation

1. Ouvrir le projet Vivado dans le dossier `design/`.  
2. Configurer le bloc **DPU IP** selon les besoins de l’application cible.  
3. Lancer la **synthèse** puis l’**implémentation** du design matériel.  

### 📦 Fichiers générés

- Le **fichier bitstream (.bit)** est généré à l’emplacement suivant :
  ```
  KV260_DPU_HW\prj\Vivado\hw\prj\KV260.runs\impl_1_01
  ```

- Le **fichier matériel exporté (.xsa)** est disponible ici :
  ```
  KV260_DPU_HW\prj\Vivado\hw\pre-built
  ```

4. Importer le fichier `.xsa` dans **Vitis AI** ou **PetaLinux** pour la génération de la plateforme logicielle et l’intégration du DPU.  
5. Déployer ensuite le design et les modèles IA sur la carte **Kria KR260**.

---

## 🧩 Personnalisation

- Le **DPU IP** a été dimensionné spécifiquement pour nos besoins applicatifs.  
- Les paramètres tels que le nombre d’unités de calcul, la taille mémoire et les interfaces peuvent être ajustés dans Vivado.  
- Possibilité d’ajouter des blocs de **prétraitement matériel (PL)** avant le DPU pour optimiser le flux vidéo ou image en temps réel.

---

## 🔗 Références utiles

- [Documentation Vitis AI – Xilinx](https://www.xilinx.com/products/design-tools/vitis/vitis-ai.html)  
- [Produit Kria KR260 – AMD/Xilinx](https://www.xilinx.com/products/boards-and-kits/kria/kr260.html)  
- [Guide Vivado Design Suite User – UG893](https://docs.xilinx.com/)  

---

## 📜 Remarques

Ce projet constitue une **implémentation de référence** pour l’intégration du DPU sur la plateforme Kria KR260.  
Il peut servir de base pour des développements avancés, notamment l’ajout de traitements matériels complémentaires, la migration vers Vitis AI 3.5, ou l’intégration dans un environnement PetaLinux.

---

📅 **Outils utilisés :** Vivado 2024.2 | Vitis AI 3.0 | DPU V4.1  
