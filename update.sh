# Check if upstream is already added
if [ -z "$(git remote | grep upstream)" ]; then
    echo "Upstream not found. Adding..."
    git remote add upstream $1
else
    echo "Upstream already added. Set to $1"
    git remote set-url upstream $1
fi
# Fetch upstream
git fetch upstream
# Merge upstream
git merge upstream/master