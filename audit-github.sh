#!/bin/bash

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║     🚨 GITHUB REPOSITORY AUDIT - CRITICAL ISSUES 🚨       ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 CHECKING REPOSITORIES..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "Checking: https://github.com/wordtoimageai/rentalai"
HTTP_CODE1=$(curl -s -o /dev/null -w "%{http_code}" https://github.com/wordtoimageai/rentalai 2>/dev/null)
if [ "$HTTP_CODE1" == "404" ]; then
    echo -e "${RED}❌ NOT FOUND (404)${NC}"
else
    echo -e "${GREEN}✅ Found (HTTP $HTTP_CODE1)${NC}"
fi
echo ""

echo "Checking: https://github.com/bdstudio-hub/rentalai"
HTTP_CODE2=$(curl -s -o /dev/null -w "%{http_code}" https://github.com/bdstudio-hub/rentalai 2>/dev/null)
if [ "$HTTP_CODE2" == "404" ]; then
    echo -e "${RED}❌ NOT FOUND (404)${NC}"
else
    echo -e "${GREEN}✅ Found (HTTP $HTTP_CODE2)${NC}"
fi
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 DIAGNOSIS:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if [ "$HTTP_CODE1" == "404" ] && [ "$HTTP_CODE2" == "404" ]; then
    echo -e "${RED}❌ CRITICAL: Both repositories return 404${NC}"
    echo ""
    echo "This means:"
    echo "  • Repositories don't exist OR"
    echo "  • Repositories are private OR"
    echo "  • Wrong repository URLs"
    echo ""
    echo -e "${YELLOW}This is why Vercel shows DEPLOYMENT_NOT_FOUND${NC}"
    echo ""
else
    echo -e "${YELLOW}⚠️  At least one repository is accessible${NC}"
    echo ""
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SOLUTION:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "You need to:"
echo ""
echo "  1. CREATE a new public repository on GitHub"
echo "  2. PUSH your files from /app/rentalai-vercel-deploy/"
echo "  3. CONNECT Vercel to your new repository"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📁 YOUR FILES ARE READY:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

cd /app/rentalai-vercel-deploy
ls -lh
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 NEXT STEPS:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "OPTION A: Push from this environment"
echo "  cd /app/rentalai-vercel-deploy"
echo "  git init"
echo "  git add ."
echo "  git commit -m 'Initial commit'"
echo "  git remote add origin https://github.com/YOUR-USERNAME/rentalai.git"
echo "  git push -u origin main"
echo ""
echo "OPTION B: Create files on GitHub manually"
echo "  1. Go to https://github.com/new"
echo "  2. Create 'rentalai' repository (PUBLIC)"
echo "  3. Add files: index.html, vercel.json"
echo "  4. Connect to Vercel"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📖 FULL REPORT:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Read: /app/GITHUB_AUDIT_REPORT.md"
echo ""
echo "This contains:"
echo "  • Complete diagnosis"
echo "  • Step-by-step fix instructions"
echo "  • All file contents"
echo "  • Troubleshooting guide"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Ready to fix? Tell me your GitHub username and I'll help!"
echo ""
