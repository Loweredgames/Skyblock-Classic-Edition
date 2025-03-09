import os
import shutil

# Ottieni il percorso della directory dello script
current_dir = os.path.dirname(os.path.abspath(__file__))

# Imposta e crea le cartelle import/lang se non esistono
import_dir = os.path.join(current_dir, 'import')
lang_dir = os.path.join(import_dir, 'lang')
if not os.path.exists(lang_dir):
    os.makedirs(lang_dir)
    print(f"Cartelle 'import/lang' create in: {current_dir}")

# Trova tutti i file JSON nella cartella import/lang
json_files = [f for f in os.listdir(lang_dir) if f.endswith('.json')]

# Se non ci sono file JSON, mostra un messaggio
if not json_files:
    print("Nessun file JSON trovato nella cartella import/lang")
    exit(1)

# Per ogni file JSON trovato
for filename in json_files:
    # Crea il nuovo nome del file in minuscolo
    new_filename = filename.lower()
    
    # Se il nome del file è già in minuscolo, salta
    if filename == new_filename:
        continue
        
    # Crea i percorsi completi
    old_path = os.path.join(lang_dir, filename)
    new_path = os.path.join(lang_dir, new_filename)
    
    try:
        # Rinomina il file
        os.rename(old_path, new_path)
        print(f'Rinominato: {filename} -> {new_filename}')
    except Exception as e:
        print(f"ERRORE durante la rinomina del file {filename}: {e}")

print('\nOperazione completata! Tutti i file sono stati rinominati.')
