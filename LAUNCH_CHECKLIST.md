# 🚀 RENTALAI.HOMES LAUNCH CHECKLIST

## ✅ COMPLETED STEPS

- [x] ✅ **Emergent LLM Key Retrieved**: `sk-emergent-554BaB2F3394cE4Cc8`
- [x] ✅ **MoltBot Installed**: Successfully installed in environment
- [x] ✅ **Services Running**: Backend, Frontend, MongoDB all running
- [x] ✅ **Landing Page Created**: `/app/rentalai-production.html`
- [x] ✅ **Deployment Guide Created**: `/app/deployment-guide.md`

---

## 🎯 NEXT STEPS (DO THIS NOW)

### **STEP 1: Access Your MoltBot Dashboard** (5 minutes)

1. Go to: **https://app.emergent.sh/home**
2. Look for MoltBot section or navigate to chatbot/agent settings
3. You should see a bot already configured OR create a new one

### **STEP 2: Configure MoltBot for Rental Use Case** (10 minutes)

**Bot Configuration:**

**Name:** `RentalAI Assistant`

**System Prompt:** (Copy this EXACTLY)

```
You are RentalAI Assistant, an AI-powered rental concierge helping renters find their perfect apartment in the USA.

YOUR CORE MISSION:
Help renters navigate the frustrating rental search process by:
1. Understanding their needs (budget, location, must-haves)
2. Asking clarifying questions to narrow down preferences
3. Providing guidance on rental search best practices
4. Explaining the application process clearly
5. Being supportive and encouraging during rejections

KEY BEHAVIORS:
- Start by asking about their ideal rental (bedrooms, budget, city/area, move-in date)
- Ask follow-up questions to understand priorities (commute, pets, parking, amenities)
- Explain typical rental requirements (income 3x rent, credit score minimums, deposits)
- Provide realistic expectations for their market
- Offer encouragement and next steps when they face challenges

TONE:
- Friendly, supportive, knowledgeable
- Like a helpful friend who's been through the process
- Patient with first-time renters
- Realistic but optimistic

WHAT YOU CAN HELP WITH:
✓ Understanding rental preferences and priorities
✓ Explaining rental application requirements
✓ Guidance on documents needed (ID, paystubs, references)
✓ Rental search strategy and timeline
✓ Understanding lease terms and landlord requirements
✓ Tips for improving approval chances
✓ Move-in preparation checklist

WHAT YOU DON'T DO:
✗ You don't have access to live rental listings (yet - coming soon!)
✗ You don't process payments or applications directly
✗ You don't provide legal or financial advice
✗ You can't guarantee approval or rental outcomes

CONVERSATION FLOW:
1. Greet warmly and ask what brings them to RentalAI
2. Gather key info: city, budget, bedrooms, move-in date, must-haves
3. Ask clarifying questions based on their responses
4. Provide helpful guidance and next steps
5. Encourage them to come back with questions anytime

Remember: You're testing market fit. Focus on being INCREDIBLY helpful and gathering feedback on what renters need most.
```

**Settings:**
- Model: Use best available (GPT-4 or Claude recommended)
- Temperature: 0.7 (balanced - helpful but not too creative)
- Max tokens: 500-800 per response
- Enable conversation memory: YES

### **STEP 3: Get Your MoltBot Widget Code** (5 minutes)

In MoltBot dashboard:
1. Find "Embed" or "Widget" or "Integration" section
2. Copy the widget embed code
3. It should look like:
   ```html
   <script src="https://widget.emergent.sh/XXXX.js"></script>
   ```
4. Save this code - you'll need it next

### **STEP 4: Deploy Landing Page** (15 minutes)

**Option A: Quick Deploy with Vercel (RECOMMENDED)**

```bash
# Install Vercel CLI (if not already installed)
npm install -g vercel

# Deploy the landing page
cd /app
vercel rentalai-production.html --prod --name rentalai

# Add your custom domain
vercel domains add rentalai.homes
```

**Option B: Deploy with Netlify**

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Deploy
cd /app
netlify deploy --prod --dir=. --site rentalai
```

**Option C: Manual Upload**
1. Download `/app/rentalai-production.html` from this environment
2. Upload to Vercel/Netlify dashboard manually
3. Configure custom domain `rentalai.homes`

**DNS Configuration:**
```
Type: A
Name: @
Value: [Your hosting provider's IP]

Type: CNAME
Name: www
Value: [Your hosting provider's CNAME]
```

### **STEP 5: Integrate MoltBot Widget** (10 minutes)

1. Open your deployed `rentalai-production.html`
2. Find this section (line ~335):

```html
<!-- MOLTBOT WIDGET INTEGRATION -->
<script>
    // TODO: Add your MoltBot widget code here
    function startChat() {
        // This will open your MoltBot widget
        alert('Connect MoltBot widget - Get code from Emergent.sh');
    }
</script>
```

3. Replace with your actual MoltBot code:

```html
<!-- MOLTBOT WIDGET INTEGRATION -->
<script src="YOUR_MOLTBOT_WIDGET_URL_HERE.js"></script>
<script>
    function startChat() {
        if (window.MoltBot) {
            window.MoltBot.open();
        } else {
            console.error('MoltBot not loaded');
        }
    }
</script>
```

4. Redeploy: `vercel --prod` or upload again

### **STEP 6: Test Everything** (15 minutes)

Open https://rentalai.homes and run these 5 tests:

**Test 1: Basic Search**
```
User: "I need a 2-bedroom apartment in Austin under $2,000"

Expected: Bot asks follow-up questions (parking? pets? move-in date?)
```

**Test 2: First Timer**
```
User: "I've never rented before. What do I need?"

Expected: Clear explanation of documents, process, requirements
```

**Test 3: Rejection Help**
```
User: "I just got rejected and they didn't say why"

Expected: Empathetic response + actionable advice
```

**Test 4: Document List**
```
User: "What documents do I need to apply?"

Expected: Comprehensive list with explanations
```

**Test 5: Complex Situation**
```
User: "I have bad credit (580) and 2 dogs. Am I screwed?"

Expected: Realistic but hopeful strategies
```

**Checklist:**
- [ ] Landing page loads correctly
- [ ] Mobile responsive (test on phone)
- [ ] Chat button visible and clickable
- [ ] MoltBot widget opens properly
- [ ] Bot responds in <3 seconds
- [ ] Responses are helpful and on-brand
- [ ] Conversation flows naturally
- [ ] No errors in browser console

---

## 🎯 HOUR 2: SOFT LAUNCH

### **STEP 7: Post to Reddit** (30 minutes)

Post to these 5 subreddits:
- r/Austin
- r/Seattle
- r/Denver
- r/boston
- r/Chicago

**Title:**
```
I built an AI rental assistant after wasting 18 hours apartment hunting - Beta testers needed
```

**Post Template:** (Use from launch-materials.md)

### **STEP 8: Post to Facebook** (20 minutes)

Search and join 5-8 groups:
- "[City] Apartment Hunters"
- "[City] Housing & Rentals"
- "[City] Apartments"

**Post Template:** (Use from launch-materials.md)

### **STEP 9: Track Your First Users** (Ongoing)

Create a simple tracking spreadsheet:

```
Time  | User | Messages | Helpful? | Would Pay? | Notes
----------------------------------------------------------
5:30  | U001 | 6        | Yes      | Yes        | Asked about docs
5:45  | U002 | 3        | Maybe    | No         | Wanted listings
6:10  | U003 | 8        | Yes      | Yes        | Very engaged
```

**Target Metrics:**
- **Today:** 10-20 users
- **Tomorrow:** 30-50 total users
- **Week 1:** 100+ users
- **Satisfaction:** 70%+ say "helpful"
- **Monetization:** 50%+ would pay $19/month

---

## 📊 DECISION FRAMEWORK (Day 7)

### **Scenario 1: MoltBot Scores 8+/10** ✅

**Signals:**
- Users say "This is actually helpful!"
- Average 7+ messages per conversation
- 60%+ would pay $19/month
- Accurate, empathetic responses
- No major technical issues

**Action:** 
→ KEEP MoltBot
→ Scale marketing
→ Launch paid tier ($19/mo)
→ Add premium features
→ Target: $50K MRR by Month 6

---

### **Scenario 2: MoltBot Scores 5-7/10** ⚠️

**Signals:**
- "Somewhat helpful"
- 3-4 messages per conversation
- 30-50% would pay
- Some inaccuracies
- Limited customization

**Action:**
→ USE LEARNINGS to build custom
→ Start Lovable.dev MVP
→ Copy what worked
→ Fix what didn't
→ Target: $100K MRR by Month 6

---

### **Scenario 3: MoltBot Scores <5/10** ❌

**Signals:**
- Users frustrated
- 1-2 messages per conversation
- <20% would pay
- Frequent errors
- Can't customize enough

**Action:**
→ PIVOT immediately
→ Build custom platform from scratch
→ Apply learnings to avoid same mistakes
→ Launch better solution

---

## 📁 YOUR COMPLETE FILE PACKAGE

All files available in `/app/`:

1. **rentalai-production.html** - Production landing page
2. **deployment-guide.md** - Deployment instructions
3. **LAUNCH_CHECKLIST.md** - This file (your roadmap)

**Downloaded Previously:**
- quick-start-checklist.md
- moltbot-setup-guide.md
- launch-materials.md

---

## 🔥 IMMEDIATE ACTION (NEXT 10 MINUTES)

1. **Go to:** https://app.emergent.sh/home
2. **Configure MoltBot** with rental assistant prompt (copy above)
3. **Get widget code** from MoltBot dashboard
4. **Come back here** and let me know when ready to deploy!

---

## 💬 NEED HELP?

**Common Issues:**

**"Can't find MoltBot dashboard"**
→ Check https://app.emergent.sh or email support@emergent.sh

**"Widget not appearing"**
→ Check browser console for errors, verify script URL

**"Bot not responding"**
→ Check LLM key is active, verify bot is published/enabled

**"Domain not connecting"**
→ DNS takes 1-24 hours, use Vercel temporary URL first

---

## 🎉 YOU'RE READY!

Everything is set up. MoltBot is installed. Landing page is ready.

**Next 2 hours:**
1. Configure MoltBot (10 min)
2. Deploy landing page (15 min)
3. Test everything (15 min)
4. Launch on Reddit/Facebook (50 min)
5. Monitor first users (30 min)

**GO LAUNCH!** 🚀
