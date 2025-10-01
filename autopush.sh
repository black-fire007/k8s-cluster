# #!/bin/bash

# # Commit & push submodules first
# git submodule foreach '
#   echo "🚀 Committing in submodule $name"
#   git add .
#   git commit -m "Update submodule $name" || true
#   git push origin $(git branch --show-current) || true
# '

# # Commit & push main repo
# git add .
# git commit -m "$1" || true
# git pull --rebase origin master
# git push origin master


#!/bin/bash

message="$1"
if [ -z "$message" ]; then 
    echo "usage: bash $0 <commit-message>" 
    exit 1 
fi 
git add . 
git commit -m "$message" 
git push -u origin $(git branch --show-current)