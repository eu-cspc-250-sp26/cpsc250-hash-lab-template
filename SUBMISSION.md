# Lab Submission
## Hash It Out - Week 2

**Student Name**: _[Your name here]_  
**Date Completed**: _[Today's date]_

---

## 📸 Screenshot Checklist

I have saved the following screenshots in the `screenshots/` folder:

- [ ] `screenshot1-name-hash.png` - MD5 hash of my name
- [ ] `screenshot2-cracked.png` - John the Ripper cracking results
- [ ] `screenshot3-algorithms.png` - Four different hash algorithms comparison

---

## 📝 Written Questions

### Question 1: Avalanche Effect (4 points)

**When I changed one character in my name file (added "!"), what happened to the hash?**

**My answer**:
[Write your answer here - explain what you observed and what this demonstrates about hash functions. Should be 3-4 sentences.]

**Key concept**: This demonstrates the avalanche effect.

---

### Question 2: Shadow File Format (4 points)

**Looking at the user "karl" in data/shadow, answer these:**

**A) What hashing algorithm is used?**
[Your answer - hint: look at the format $y$...]

**B) What is the salt value?**
[Your answer - which part of the hash is the salt?]

**C) Why is the salt stored with the hash instead of being kept secret?**
[Your answer - explain the purpose of salts vs. keys]

---

### Question 3: Cracking Speed (4 points)

**A) How long did it take John the Ripper to crack karl's password?**
[Your answer - approximate time]

**B) Why was it so fast?**
[Your answer - explain dictionary attacks and why weak passwords are vulnerable]

**C) What does this tell you about password strength?**
[Your answer - what makes a password resistant to dictionary attacks?]

---

### Question 4: Hash Algorithm Comparison (3 points)

**A) Which algorithm produced the longest hash output?**
[Your answer]

**B) Why might longer hashes be more secure?**
[Your answer - think about collision resistance]

**C) Why is MD5 no longer recommended for security use?**
[Your answer - what vulnerabilities have been found in MD5?]

---

## 🤔 Lab Reflection (10 points)

**Write 150-200 words reflecting on this lab. Address these prompts:**

- What surprised you most about password cracking?
- How has this lab changed how you think about passwords?
- What real-world applications of hashing did you think about?
- What was the most challenging part of this lab?
- How will you apply what you learned?

**Your reflection**:

[Write your 150-200 word reflection here. Be thoughtful and specific. Connect concepts to real-world security.]





*(word count: ___)*

---

## ✅ Pre-Submission Checklist

**Before you commit and push, verify:**

- [ ] All 3 screenshots are saved in `screenshots/` folder
- [ ] All screenshots clearly show MY work (my name)
- [ ] All 4 questions are answered completely (not one-sentence answers)
- [ ] Reflection is 150-200 words
- [ ] Name and date are filled in at top
- [ ] I've reviewed my work for spelling/grammar
- [ ] I understand I'm submitting this under academic integrity policy

**To submit, run these commands in the terminal:**
```bash
git add .
git commit -m "Completed Hash It Out Lab"
git push
```

---

## 🎓 Self-Assessment (Optional but Recommended)

**Rate your understanding (1-5 scale, where 5 = fully understand):**

- Hash functions: __/5
- Password storage: __/5
- Password cracking techniques: __/5
- Salts and their purpose: __/5
- Ethical considerations: __/5

**What topics would you like to review more?**

[Your answer]

**What was your biggest "aha!" moment in this lab?**

[Your answer]

---

**Submission Date**: _[Date you pushed to GitHub]_  
**Repository URL**: _[Your repo URL]_
