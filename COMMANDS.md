# Quick Command Reference
## CSPC 250 Hash Lab

Use these commands while working through the lab.

---

## Hash Commands
```bash
# MD5 hash
md5sum filename.txt

# SHA-1 hash
sha1sum filename.txt

# SHA-256 hash
sha256sum filename.txt

# SHA-512 hash
sha512sum filename.txt

# Hash a string directly (pipe it)
echo "text to hash" | md5sum
```

---

## John the Ripper Commands
```bash
# Crack passwords using dictionary
john --format=crypt --wordlist=/usr/share/john/password.lst data/shadow

# Show cracked passwords
john --show data/shadow

# Get help
john --help
```

---

## File Commands
```bash
# Create a file with content
echo "content here" > filename.txt

# View file contents
cat filename.txt

# List files
ls
ls -la  # detailed listing including hidden files

# Check if file exists
test -f filename.txt && echo "exists" || echo "not found"
```

---

## Git Commands (For Submission)
```bash
# Check status (what's changed?)
git status

# Add all changes
git add .

# Commit with message
git commit -m "Completed Hash It Out Lab"

# Push to GitHub
git push

# View commit history
git log --oneline
```

---

## Taking Screenshots

**On Windows**: Press `Windows + Shift + S` (Snipping Tool)
**On Mac**: Press `Cmd + Shift + 4` (Screenshot tool)
**In Codespace**: Take screenshot of your terminal/browser

Save as: `screenshot1-name-hash.png`, etc. in the `screenshots/` folder

---

## Need Help?
```bash
# Run the verification script
./setup.sh

# Check if John is installed
which john

# Check version
john --version
```
