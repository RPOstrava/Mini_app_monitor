# push_all.ps1
# pushne změny na GitLab i GitHub

# 1️⃣ Commit změn
git add .
git commit -m "Automatický commit - aktualizace projektu" -a

# 2️⃣ Push na GitLab (origin)
git push origin main

# 3️⃣ Push na GitHub (github)
git push github main

Write-Host "Push dokončen na GitLab i GitHub"

# spouští se příkazem .\push_all.ps1 v PowerShell v adresáři projektu

# při problémech mezi gitlabem a githubem 

# git pull origin main --rebase

# pak git push origin main
