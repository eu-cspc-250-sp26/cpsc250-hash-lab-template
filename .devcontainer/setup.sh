#!/bin/bash

echo "🔧 Setting up CSPC 250 Hash Lab environment..."
echo ""

# Update package list
echo "📦 Updating package list..."
sudo apt-get update -qq

# Install John the Ripper
echo "🔨 Installing John the Ripper..."
sudo apt-get install -y john > /dev/null 2>&1

# Install whois (provides mkpasswd)
echo "🔧 Installing password tools..."
sudo apt-get install -y whois > /dev/null 2>&1

# Create lab directories in the repo (not home directory)
echo "📁 Creating lab directories..."
mkdir -p /workspaces/$(basename $GITHUB_REPOSITORY)/screenshots
mkdir -p /workspaces/$(basename $GITHUB_REPOSITORY)/data

# Create test shadow file in repo's data directory
echo "📝 Creating test data..."
cat > /workspaces/$(basename $GITHUB_REPOSITORY)/data/shadow << 'EOF'
root:*:19219:0:99999:7:::
daemon:*:19219:0:99999:7:::
karl:$y$j9T$oR2ZofMTuH3dpEGbw6c/y.$TwfvHgCl4sIp0b28YTepJ3YVvl/3UyWKeLCmDV1tAd9:19255:0:99999:7:::
EOF

# Make the verification script executable
chmod +x /workspaces/$(basename $GITHUB_REPOSITORY)/setup.sh

echo ""
echo "✅ Setup complete! Verifying installations..."
echo ""

# Verify installations
if command -v john &> /dev/null; then
    echo "✓ John the Ripper: $(john --version 2>&1 | head -n1)"
else
    echo "✗ John the Ripper: NOT FOUND"
fi

if command -v md5sum &> /dev/null; then
    echo "✓ md5sum: Available"
else
    echo "✗ md5sum: NOT FOUND"
fi

if command -v mkpasswd &> /dev/null; then
    echo "✓ mkpasswd: Available"
else
    echo "✗ mkpasswd: NOT FOUND"
fi

# Check if data directory was created
if [ -d "/workspaces/$(basename $GITHUB_REPOSITORY)/data" ]; then
    echo "✓ data/ directory: Created"
else
    echo "✗ data/ directory: NOT FOUND"
fi

# Check if shadow file exists
if [ -f "/workspaces/$(basename $GITHUB_REPOSITORY)/data/shadow" ]; then
    echo "✓ data/shadow file: Created"
else
    echo "✗ data/shadow file: NOT FOUND"
fi

echo ""
echo "🎉 Your lab environment is ready!"
echo ""
echo "📚 Next steps:"
echo "  1. Read the README.md file"
echo "  2. Follow the lab activities in order"
echo "  3. Take screenshots as you work"
echo "  4. Answer questions in SUBMISSION.md"
echo ""
