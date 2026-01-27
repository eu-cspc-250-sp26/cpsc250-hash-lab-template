#!/bin/bash

echo "🔍 Verifying lab environment setup..."
echo ""

# Check John the Ripper
if command -v john &> /dev/null; then
    echo "✅ John the Ripper is installed"
    john --version 2>&1 | head -n1
else
    echo "❌ John the Ripper is NOT installed"
    echo "   Run: sudo apt-get update && sudo apt-get install -y john"
fi

echo ""

# Check hash utilities
if command -v md5sum &> /dev/null; then
    echo "✅ md5sum is available"
else
    echo "❌ md5sum is NOT available"
fi

if command -v sha256sum &> /dev/null; then
    echo "✅ sha256sum is available"
else
    echo "❌ sha256sum is NOT available"
fi

echo ""

# Check test data directory and file
if [ -d "data" ]; then
    echo "✅ data/ directory exists"
    
    if [ -f "data/shadow" ]; then
        echo "✅ data/shadow file exists"
        echo "   Users in shadow file:"
        grep "^[^:]*:" data/shadow | cut -d: -f1 | sed 's/^/     - /'
    else
        echo "❌ data/shadow file NOT found"
    fi
else
    echo "❌ data/ directory NOT found"
    echo "   Creating it now..."
    mkdir -p data
    
    cat > data/shadow << 'EOF'
root:*:19219:0:99999:7:::
daemon:*:19219:0:99999:7:::
karl:$y$j9T$oR2ZofMTuH3dpEGbw6c/y.$TwfvHgCl4sIp0b28YTepJ3YVvl/3UyWKeLCmDV1tAd9:19255:0:99999:7:::
EOF
    
    echo "✅ Created data/shadow"
fi

echo ""

# Check screenshots directory
if [ -d "screenshots" ]; then
    echo "✅ screenshots/ directory exists"
    
    # Count files
    file_count=$(ls -1 screenshots 2>/dev/null | wc -l)
    echo "   Files in screenshots/: $file_count"
else
    echo "⚠️  screenshots/ directory missing"
    echo "   Creating it now..."
    mkdir -p screenshots
    echo "✅ Created screenshots/ directory"
fi

echo ""
echo "🎉 Environment check complete!"
echo ""
echo "📚 Next Steps:"
echo "  1. Read README.md for full lab instructions"
echo "  2. Start with Part 1, Activity 1.1"
echo "  3. Take screenshots as you work"
echo "  4. Fill out SUBMISSION.md with your answers"
echo ""
