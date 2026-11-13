name: CI

on:
  push:
  pull_request:

jobs:
 qualite:
   #runs-on: ubuntu-latest
   runs-on: ubuntu-26.04 #forcer la version de Ubuntu en 26.04 et la télécharge pour être cohérent avec la version du Github (notre environment de test et de prod par exemple)
   steps:
     - name: Récupérer le code
       uses: actions/checkout@v7

     - name: Installer Python 3.12
       uses: actions/setup-python@v7
       with:
        python-version: "3.12"
     - name: Vérifier la syntaxe
       run: python -m py_compile *.py

     - name: Installer ruff
       run: pip install ruff==0.16.8
     - name: Analyser le code avec ruff
       run: ruff check .
     - name : Correction automatique du code avec ruff
       run: ruff check --fix .   

