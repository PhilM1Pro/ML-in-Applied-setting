# Setup Guide - Fake Review Detection

Falls du komplett bei null anfaengst, installiere diese 3 Programme in dieser Reihenfolge:

| # | Programm | Wofuer | Download |
|---|----------|--------|----------|
| 1 | **Git** | Code herunterladen | https://git-scm.com/download/win |
| 2 | **Miniconda** | Python + Pakete verwalten | https://docs.anaconda.com/miniconda/install/ |
| 3 | **VS Code** | Notebooks bearbeiten | https://code.visualstudio.com/download |

Bei allen Installationen: einfach durchklicken, Standard-Einstellungen belassen.

Nach der Installation **PC einmal neustarten**, dann:

## 1. Projekt herunterladen

Terminal oeffnen (Windows: Startmenue -> "Anaconda Prompt" suchen) und eingeben:

```bash
git clone https://github.com/PhilM1Pro/ML-in-Applied-setting.git
cd ML-in-Applied-setting
```

## 2. Python Environment erstellen

```bash
conda create -n fake-review python=3.11
```

Mit `y` bestaetigen, dann aktivieren:

```bash
conda activate fake-review
```

## 3. Pakete installieren

```bash
pip install -r requirements.txt
```

## 4. Jupyter Kernel einrichten

```bash
python -m ipykernel install --user --name=fake-review --display-name="Fake Review"
```

## 5. In VS Code oeffnen

1. VS Code starten
2. Ordner oeffnen: `File -> Open Folder -> ML-in-Applied-setting`
3. Beliebiges `.ipynb` Notebook oeffnen
4. Oben rechts auf den Kernel klicken -> **Fake Review** auswaehlen
5. Zellen mit dem Play-Button ausfuehren

## Projektstruktur

```
data_generation/   ← Daten laden & generieren
  1. Reviews test.ipynb       Menschliche Reviews laden
  2. LLM_API_test_2.ipynb     AI-Reviews generieren
  3. Combined df.ipynb         Datensaetze zusammenfuegen & splitten

models/            ← Modelle trainieren
  TF-IDF_LR.ipynb

notebooks/         ← Analyse
  EDA.ipynb

Data/              ← Datensaetze (CSVs)
```

Notebooks in der nummerierten Reihenfolge ausfuehren.
