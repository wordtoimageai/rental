# 🚀 RENTALAI.HOMES - COMPLETE SETUP PACKAGE

## 📦 WHAT YOU HAVE

✅ **MoltBot Installed**: Successfully installed and running
✅ **Services Running**: Backend, Frontend, MongoDB all active
✅ **Landing Page Ready**: Production-ready HTML file
✅ **Deployment Guide**: Step-by-step instructions
✅ **Launch Materials**: Reddit/Facebook posts ready
✅ **Emergent LLM Key**: `sk-emergent-554BaB2F3394cE4Cc8`

---

## 🎯 YOUR 2-HOUR LAUNCH PLAN

### **HOUR 1: Setup & Deploy**

#### **Step 1: Configure MoltBot** (10 minutes)

1. **Go to**: https://app.emergent.sh/home
2. **Find/Create**: MoltBot bot named "RentalAI Assistant"
3. **Add System Prompt**: 
   - Open `/app/LAUNCH_CHECKLIST.md` 
   - Copy the full "System Prompt" section
   - Paste into MoltBot configuration
4. **Settings**:
   - Model: GPT-4 or Claude (best available)
   - Temperature: 0.7
   - Max tokens: 500-800
   - Conversation memory: ON
5. **Save & Publish**

#### **Step 2: Get Widget Code** (5 minutes)

1. In MoltBot dashboard, find "Embed" or "Widget" section
2. Copy the embed script (looks like `<script src="..."></script>`)
3. Save it somewhere - you'll need it next

#### **Step 3: Deploy Landing Page** (15 minutes)

**Recommended: Vercel (Fastest)**

```bash
# Install Vercel CLI
npm install -g vercel

# Navigate to app folder
cd /app

# Deploy
vercel rentalai-production.html --prod --name rentalai

# Add custom domain (if ready)
vercel domains add rentalai.homes
```

**Alternative: Manual Upload**
1. Download `/app/rentalai-production.html`
2. Go to https://vercel.com/new
3. Upload HTML file
4. Deploy
5. Get deployment URL

#### **Step 4: Integrate Widget** (10 minutes)

Edit your deployed HTML and find this section (around line 335):

```html
<!-- MOLTBOT WIDGET INTEGRATION -->
<script>
    function startChat() {
        alert('Connect MoltBot widget - Get code from Emergent.sh');
    }
</script>
```

Replace with:

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

Redeploy: `vercel --prod`

#### **Step 5: Test** (15 minutes)

Visit your deployed site and test these 5 scenarios:

1. **"I need a 2-bedroom apartment in Austin under $2,000"**
   - Should ask follow-ups: pets? parking? move-in date?

2. **"I've never rented before. What do I need?"**
   - Should explain documents, process clearly

3. **"I just got rejected and they didn't say why"**
   - Should be empathetic + give actionable advice

4. **"What documents do I need to apply?"**
   - Should provide comprehensive list

5. **"I have bad credit and 2 dogs"**
   - Should offer realistic strategies

**Checklist:**
- [ ] Site loads on desktop
- [ ] Site loads on mobile
- [ ] Chat button works
- [ ] Widget opens properly
- [ ] Bot responds in <3 seconds
- [ ] Responses are helpful
- [ ] No console errors

---

### **HOUR 2: Launch & Promote**

#### **Step 6: Reddit Launch** (30 minutes)

Post to 5 subreddits (use templates from `launch-materials.md`):

- **r/Austin** - "I built an AI rental assistant after wasting 18 hours..."
- **r/Seattle** - Same post, adapt for Seattle market
- **r/Denver** - Same post, adapt for Denver market
- **r/boston** - Same post, adapt for Boston market
- **r/Chicago** - Same post, adapt for Chicago market

**Post Structure:**
```
Title: I built an AI rental assistant after wasting 18 hours apartment hunting - Beta testers needed

Body: [Use template from launch-materials.md]

Link: [Your rentalai.homes URL]

Flair: Beta/Testing or Housing (if available)
```

#### **Step 7: Facebook Launch** (20 minutes)

Search and join 5-8 groups:
- "[City Name] Apartment Hunters"
- "[City Name] Housing & Rentals"
- "Austin Apartments" (or other cities)

**Post:** Use Facebook template from launch-materials.md

#### **Step 8: Monitor & Track** (10 minutes)

Create tracking spreadsheet:

```
Time  | User | City    | Messages | Helpful? | Would Pay? | Notes
-----------------------------------------------------------------
5:30  | U001 | Austin  | 6        | Yes      | Yes        | Asked docs
5:45  | U002 | Seattle | 3        | Maybe    | No         | Wanted listings
6:10  | U003 | Austin  | 8        | Yes      | Yes        | Very engaged
```

**Watch for:**
- Conversation length (target: 5+ messages)
- User satisfaction (target: 70%+ say "helpful")
- Payment willingness (target: 50%+ would pay $19/mo)
- Common questions
- Feature requests
- Pain points mentioned

---

## 📊 DAILY TRACKING GOALS

### **Day 1 (Today):**
- Target: 10-20 users
- Goal: Test that everything works
- Focus: Fix any technical issues

### **Day 2-3:**
- Target: 30-50 total users
- Goal: Validate helpfulness
- Focus: Refine prompts if needed

### **Day 4-7:**
- Target: 100+ total users
- Goal: Make decision
- Focus: Analyze metrics

---

## 🎯 DECISION FRAMEWORK (Day 7)

### **Scenario A: Success! (8+/10)** ✅

**You see:**
- Users say "This is actually helpful!"
- 7+ messages per conversation
- 60%+ would pay $19/month
- Accurate, empathetic responses

**Next Steps:**
→ KEEP MoltBot as your base
→ Scale marketing ($500/week ads)
→ Add features (listing integration, viewing booking)
→ Launch paid tier ($19/mo)
→ Target: $50K MRR by Month 6

---

### **Scenario B: Mixed Results (5-7/10)** ⚠️

**You see:**
- "Somewhat helpful"
- 3-4 messages per conversation
- 30-50% would pay
- Some issues with accuracy

**Next Steps:**
→ Extract learnings from MoltBot test
→ Build custom MVP on Lovable.dev
→ Apply what worked, fix what didn't
→ Launch better version in 4 weeks
→ Target: $100K MRR by Month 6

---

### **Scenario C: Not Working (<5/10)** ❌

**You see:**
- Users frustrated
- 1-2 messages per conversation
- <20% would pay
- Can't customize enough

**Next Steps:**
→ Shut down MoltBot immediately
→ Build custom platform from scratch
→ Use learnings to avoid mistakes
→ Different approach entirely

---

## 🗂️ YOUR FILES

**In `/app/` directory:**
- `rentalai-production.html` - Production landing page (12KB)
- `deployment-guide.md` - Deployment instructions (4KB)
- `LAUNCH_CHECKLIST.md` - Detailed checklist (this file)
- `test-moltbot.sh` - Verification script

**Previously downloaded:**
- `quick-start-checklist.md` - Quick start guide
- `moltbot-setup-guide.md` - MoltBot configuration
- `launch-materials.md` - Reddit/Facebook templates

**Assets available at:**
- https://customer-assets.emergentagent.com/job_moltbot-rental/artifacts/

---

## 🔧 TROUBLESHOOTING

### **"Can't find MoltBot dashboard"**
- Try: https://app.emergent.sh/home
- Or: https://app.emergent.sh/bots
- Contact: support@emergent.sh

### **"Widget not showing up"**
- Check browser console (F12) for errors
- Verify script URL is correct
- Make sure bot is published/enabled
- Try incognito mode

### **"Bot not responding"**
- Check LLM key is active: `sk-emergent-554BaB2F3394cE4Cc8`
- Verify bot configuration saved
- Check bot is published (not in draft)
- Test in MoltBot dashboard first

### **"Domain not working"**
- DNS takes 1-24 hours to propagate
- Use Vercel temporary URL first
- Check nameservers at domain registrar
- Verify CNAME/A records are correct

### **"Getting rate limited"**
- Check Emergent LLM key balance
- Reduce max tokens in bot settings
- Add rate limiting to widget

---

## 💰 BUDGET TRACKING

### **Week 1: FREE**
- MoltBot: FREE (using Emergent LLM key)
- Hosting: FREE (Vercel/Netlify free tier)
- Marketing: $0 (organic Reddit/Facebook)
- Total: **$0**

### **Week 2-4: Low Cost**
- MoltBot: $20-50 (LLM usage)
- Hosting: FREE
- Marketing: $100-300 (small paid ads)
- Total: **$120-350**

### **If Scaling:**
- MoltBot: $200-500/month
- Hosting: $20-50/month
- Marketing: $1,000+/month
- Total: **$1,220-1,550/month**

---

## 🎉 YOU'RE READY TO LAUNCH!

**Status Check:**
- ✅ MoltBot installed
- ✅ Services running
- ✅ Landing page ready
- ✅ Deployment guide ready
- ✅ Launch materials ready
- ✅ LLM key ready

**Time to Launch:**
- Configure MoltBot: 10 minutes
- Deploy site: 15 minutes  
- Test everything: 15 minutes
- Launch on social: 50 minutes
- **Total: ~90 minutes**

**By Tomorrow:**
- 30-50 users tested
- Initial feedback collected
- Know if approach is working

**By Next Week:**
- 100+ users tested
- Clear data on market fit
- Decision made: Keep/Build/Pivot

---

## 🚀 START NOW

**Your immediate next step:**

1. **Go to**: https://app.emergent.sh/home
2. **Configure**: MoltBot with rental assistant prompt
3. **Get**: Widget embed code
4. **Deploy**: Landing page with widget
5. **Test**: 5 scenarios
6. **Launch**: Reddit/Facebook posts

**Come back if you hit any issues!**

**Good luck! 🎉**

---

## 📞 SUPPORT

**Questions?** Run verification script:
```bash
/app/test-moltbot.sh
```

**Need help?** Check:
- LAUNCH_CHECKLIST.md (detailed steps)
- deployment-guide.md (deployment instructions)
- moltbot-setup-guide.md (MoltBot configuration)

**Technical issues?**
- support@emergent.sh (MoltBot issues)
- Come back here and ask!

---

**🔑 Keep handy:** Your Emergent LLM Key
```
sk-emergent-554BaB2F3394cE4Cc8
```

**🌐 Your goal:** Get rentalai.homes live with MoltBot TODAY!
