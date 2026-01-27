# Hash It Out Lab
## CSPC 250: Computer Systems Security - Week 2

**Student Name**: _[Your name here]_  
**Date**: _[Date]_  
**Due**: Sunday, Week 2, 11:59 PM

---

## 🎯 Lab Objectives

By completing this lab, you will:
- Understand cryptographic hashing (MD5, SHA family)
- Learn how Linux stores password hashes
- Use John the Ripper to crack weak passwords
- Understand the importance of password salts
- Practice using security tools responsibly

---

## 🚀 Getting Started

### Launch Your Codespace

1. Click the green **"<> Code"** button above
2. Click the **"Codespaces"** tab
3. Click **"Create codespace on main"**
4. Wait 30-60 seconds for environment to build

**✅ Your environment will have John the Ripper pre-installed!**

### Verify Setup

Once your Codespace loads, open the terminal (bottom panel) and run:
```bash
./setup.sh
```

This verifies all tools are installed correctly.

---

## 📝 Lab Activities

### Part 1: Understanding Hashes

#### Activity 1.1: Create Your Name File
```bash
# Replace "Your Name" with YOUR actual name
echo "Your Name" > name.txt

# Generate MD5 hash
md5sum name.txt
```

**📸 Screenshot 1 Required**: Save this output showing YOUR name's hash.

#### Activity 1.2: Observe Avalanche Effect
```bash
# Create slightly different file
echo "Your Name!" > name2.txt

# Compare hashes - notice how different they are!
md5sum name.txt name2.txt
```

**💡 Question 1**: How different are these hashes? What does this tell you about hash functions?

---

### Part 2: Linux Password Hashing

#### Activity 2.1: Examine Shadow File
```bash
# Look at the test shadow file
cat data/shadow
```

You'll see user entries including one named "karl".

**💡 Question 2**: Find the user "karl". Identify:
- What hashing algorithm is used? (hint: look at the `$y$`)
- What is the salt value?
- Why is the salt stored with the hash?

---

### Part 3: Password Cracking

#### Activity 3.1: Crack the Password
```bash
# Use John the Ripper to crack karl's password
john --format=crypt --wordlist=/usr/share/john/password.lst data/shadow
```

Watch as John tries passwords from the wordlist. This should complete in seconds!

**📸 Screenshot 2 Required**: Capture the output showing the cracked password.

#### Activity 3.2: View Results
```bash
# Show cracked passwords
john --show data/shadow
```

**💡 Question 3**: 
- How long did this take? 
- Why was it so fast?
- What does this tell you about dictionary attacks?

---

### Part 4: Compare Hash Algorithms
```bash
# Try different hash algorithms on your name
echo "Your Name" | md5sum
echo "Your Name" | sha1sum
echo "Your Name" | sha256sum
echo "Your Name" | sha512sum
```

**📸 Screenshot 3 Required**: Capture all four hash outputs.

**💡 Question 4**: 
- Which algorithm produces the longest hash? 
- Why might longer hashes be more secure?
- Why is MD5 no longer recommended for password hashing?

---

## 📤 Submission Instructions

### What to Submit

1. **Three Screenshots** (save in `screenshots/` folder):
   - `screenshot1-name-hash.png` - Your name's MD5 hash
   - `screenshot2-cracked.png` - John the Ripper results  
   - `screenshot3-algorithms.png` - Four different hash algorithms

2. **Written Responses** (edit `SUBMISSION.md` file):
   - Answer all 4 questions thoroughly
   - Complete the reflection section (150-200 words)

3. **Commit and Push Your Work**:
```bash
   git add .
   git commit -m "Completed Hash It Out Lab"
   git push
```

### Grading Rubric (40 points)

- **Screenshots** (15 points): 5 points each
  - Must show YOUR unique work
  - Must be clear and readable
  - Must show the complete command and output

- **Written Questions** (15 points): 
  - Complete, thoughtful answers
  - Demonstrates understanding
  - Uses proper terminology

- **Reflection** (10 points): 
  - 150-200 words
  - Thoughtful analysis
  - Addresses all prompts

**Due Date**: Sunday, 11:59 PM (end of Week 2)

---

## 🐛 Troubleshooting

### Codespace Won't Start?
- Wait a full 60 seconds (sometimes slow to build)
- Refresh your browser
- Try Chrome (works best with Codespaces)

### Tools Not Working?
Run the setup script again:
```bash
./setup.sh
```

### Can't Find Screenshot Folder?
Create it:
```bash
mkdir -p screenshots
```

### Need Help?
- Post in Canvas Discussion Forum: "Week 2 Lab Help"
- Come to office hours: [Professor's hours]
- Email: [Professor's email]

---

## ⚖️ Academic Integrity

**✓ Allowed**:
- Discussing concepts with classmates
- Getting help with technical issues
- Using lab instructions and course materials
- Helping classmates troubleshoot Codespaces

**✗ Not Allowed**:
- Sharing screenshots (must be YOUR name/work)
- Copying answers to questions
- Submitting someone else's work
- Using someone else's hash values

**Remember**: Screenshots must show YOUR unique work (your name in hashes).

---

## 🔒 Ethical Reminder

The skills you learn in this lab are powerful. Use them:
- ✓ To understand security concepts
- ✓ To test your own systems
- ✓ To build better defenses
- ✓ In your future career as a security professional

**Never** use them:
- ✗ On systems you don't own
- ✗ Without explicit written permission
- ✗ To harm others or gain unauthorized access
- ✗ To crack passwords you don't have authorization to test

**"With great power comes great responsibility."**

Unauthorized computer access is a federal crime under the Computer Fraud and Abuse Act (CFAA).

---

## 📚 Additional Resources

Want to learn more? Check out:

- **Tolboom Textbook**: Chapter 2, Section 2.11 (pages 24-28)
- **John the Ripper Documentation**: https://www.openwall.com/john/
- **OWASP Password Storage Cheat Sheet**: https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html
- **How Hashing Works (Video)**: https://www.youtube.com/watch?v=b4b8ktEV4Bg
- **Computerphile - Password Cracking**: https://www.youtube.com/watch?v=7U-RbOKanYs

---

**Good luck with your lab! 🔐**

*Remember: Every password you crack teaches you how to create stronger ones.*
