import os

root_dir = '/home/cheese/web'

def rename_content():
    for subdir, dirs, files in os.walk(root_dir):
        if any(x in subdir for x in ['.git', 'node_modules', '.gemini', '.cache', 'dist']):
            continue
        for file in files:
            if file in ['rename_orangopus.py', 'package-lock.json']:
                continue
            path = os.path.join(subdir, file)
            if any(x in path for x in ['.git', 'node_modules', '.gemini', '.cache', 'dist']):
                continue
            try:
                with open(path, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                new_content = content.replace('ORANGOPUS', 'OPUS')
                new_content = new_content.replace('Orangopus', 'Opus')
                new_content = new_content.replace('orangopus', 'opus')
                
                if new_content != content:
                    with open(path, 'w', encoding='utf-8') as f:
                        f.write(new_content)
                    print(f"Updated content in: {path}")
            except Exception as e:
                pass

def rename_files():
    for subdir, dirs, files in os.walk(root_dir, topdown=False):
        if any(x in subdir for x in ['.git', 'node_modules', '.gemini', '.cache', 'dist']):
            continue
        
        for name in files + dirs:
            if name == 'rename_orangopus.py':
                continue
            path = os.path.join(subdir, name)
            if any(x in path for x in ['.git', 'node_modules', '.gemini', '.cache', 'dist']):
                continue
                
            if 'orangopus' in name.lower():
                old_path = os.path.join(subdir, name)
                
                new_name = name.replace('ORANGOPUS', 'OPUS')
                new_name = new_name.replace('Orangopus', 'Opus')
                new_name = new_name.replace('orangopus', 'opus')
                
                new_path = os.path.join(subdir, new_name)
                
                print(f"Renaming {old_path} to {new_path}")
                os.rename(old_path, new_path)

if __name__ == "__main__":
    rename_content()
    rename_files()
