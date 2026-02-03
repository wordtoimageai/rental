#!/bin/bash

echo "🔍 MOLTBOT INSTALLATION VERIFICATION"
echo "===================================="
echo ""

# Check if installation completed
echo "✓ Checking installation log..."
if grep -q "Services started" /tmp/moltbot_install.log; then
    echo "  ✅ MoltBot installation completed successfully"
else
    echo "  ❌ Installation may not be complete"
fi
echo ""

# Check services
echo "✓ Checking services..."
sudo supervisorctl status | grep -E "(backend|frontend|mongodb)"
echo ""

# Check backend
echo "✓ Checking backend..."
if curl -s http://localhost:8001/api/health > /dev/null 2>&1; then
    echo "  ✅ Backend is running"
else
    echo "  ⚠️  Backend may not be responding"
fi
echo ""

# Check frontend
echo "✓ Checking frontend..."
if curl -s http://localhost:3000 > /dev/null 2>&1; then
    echo "  ✅ Frontend is running"
else
    echo "  ⚠️  Frontend may not be responding"
fi
echo ""

# Check MongoDB
echo "✓ Checking MongoDB..."
if pgrep -x "mongod" > /dev/null; then
    echo "  ✅ MongoDB is running"
else
    echo "  ⚠️  MongoDB may not be running"
fi
echo ""

# Check landing page
echo "✓ Checking landing page file..."
if [ -f "/app/rentalai-production.html" ]; then
    echo "  ✅ Landing page ready: /app/rentalai-production.html"
    echo "  📊 Size: $(du -h /app/rentalai-production.html | cut -f1)"
else
    echo "  ❌ Landing page not found"
fi
echo ""

# Check deployment guide
echo "✓ Checking deployment guide..."
if [ -f "/app/deployment-guide.md" ]; then
    echo "  ✅ Deployment guide ready: /app/deployment-guide.md"
else
    echo "  ❌ Deployment guide not found"
fi
echo ""

# Check launch checklist
echo "✓ Checking launch checklist..."
if [ -f "/app/LAUNCH_CHECKLIST.md" ]; then
    echo "  ✅ Launch checklist ready: /app/LAUNCH_CHECKLIST.md"
else
    echo "  ❌ Launch checklist not found"
fi
echo ""

echo "===================================="
echo "🎯 NEXT STEPS:"
echo ""
echo "1. Configure MoltBot at: https://app.emergent.sh/home"
echo "2. Read: /app/LAUNCH_CHECKLIST.md"
echo "3. Deploy landing page"
echo "4. Test everything"
echo "5. Launch!"
echo ""
echo "🔑 Your LLM Key: sk-emergent-554BaB2F3394cE4Cc8"
echo ""
