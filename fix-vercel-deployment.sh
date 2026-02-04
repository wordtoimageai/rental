#!/bin/bash

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║        🔧 VERCEL DEPLOYMENT FIX - AUTO SCRIPT 🔧          ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "🔍 DIAGNOSING ISSUE..."
echo ""

# Check current deployment
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://rentalai-inia.vercel.app 2>/dev/null)

if [ "$HTTP_CODE" == "404" ] || [ "$HTTP_CODE" == "000" ]; then
    echo -e "${RED}❌ CONFIRMED: Deployment returning 404${NC}"
    echo "   URL: https://rentalai-inia.vercel.app"
    echo "   Status: $HTTP_CODE"
    echo ""
else
    echo -e "${GREEN}✅ Site is responding with HTTP $HTTP_CODE${NC}"
    echo "   Your site might be working now!"
    echo ""
    exit 0
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 ROOT CAUSE:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Your GitHub repo is missing or has incorrect files."
echo "Vercel expects an 'index.html' in the root directory."
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SOLUTION PREPARED:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "I've created a proper deployment folder:"
echo "📁 /app/rentalai-vercel-deploy/"
echo ""
echo "Contains:"
echo "  ✅ index.html (your landing page)"
echo "  ✅ vercel.json (Vercel configuration)"
echo "  ✅ README.md (documentation)"
echo "  ✅ .gitignore (Git ignore file)"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 CHOOSE YOUR FIX METHOD:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "OPTION 1: Fix via GitHub (Recommended)"
echo "  1. Push correct files to your GitHub repo"
echo "  2. Vercel will auto-deploy (1-2 minutes)"
echo "  3. Test and verify"
echo ""
echo "OPTION 2: Deploy directly from CLI (Faster)"
echo "  1. Use Vercel CLI to deploy from local"
echo "  2. Skips GitHub completely"
echo "  3. Takes 2-3 minutes"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📖 DETAILED INSTRUCTIONS:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Read the complete fix guide:"
echo "  cat /app/VERCEL_FIX_GUIDE.md"
echo ""
echo "Or view your ready-to-deploy files:"
echo "  ls -la /app/rentalai-vercel-deploy/"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⚡ QUICK FIX - OPTION 2 (Deploy from CLI):"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Run these commands:"
echo ""
echo "  cd /app/rentalai-vercel-deploy"
echo "  vercel --prod"
echo ""
echo "When prompted:"
echo "  • Link to existing project? → Yes"
echo "  • Select project → rentalai"
echo "  • Confirm settings → Yes"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📁 YOUR FILES ARE READY:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# List files
cd /app/rentalai-vercel-deploy
ls -lh

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 READY TO FIX!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Choose your method and execute!"
echo ""
echo "For detailed instructions: cat /app/VERCEL_FIX_GUIDE.md"
echo ""
