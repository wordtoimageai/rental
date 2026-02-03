# Quick Deployment Guide - RentalAI.homes

## OPTION 1: VERCEL (RECOMMENDED - 2 MINUTES)

### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

### Step 2: Deploy
```bash
# Navigate to where you downloaded the HTML
cd ~/Downloads  # or wherever rentalai-production.html is

# Deploy with Vercel
vercel --prod rentalai-production.html --name rentalai
```

### Step 3: Link Custom Domain
```bash
vercel domains add rentalai.homes
```

Follow the instructions to update your DNS:
- Go to your domain registrar (Namecheap, GoDaddy, etc.)
- Add these records:

```
Type: A
Name: @
Value: 76.76.21.21

Type: CNAME  
Name: www
Value: cname.vercel-dns.com
```

**Done! Your site will be live at rentalai.homes in 5-10 minutes.**

---

## OPTION 2: NETLIFY (ALSO EASY - 3 MINUTES)

### Step 1: Install Netlify CLI
```bash
npm install -g netlify-cli
```

### Step 2: Login
```bash
netlify login
```

### Step 3: Deploy
```bash
# Create a simple directory
mkdir rentalai-site
cd rentalai-site
cp ~/path/to/rentalai-production.html index.html

# Deploy
netlify deploy --prod
```

### Step 4: Link Domain
```bash
netlify domains:add rentalai.homes
```

Update DNS at your registrar:
```
Type: A
Name: @
Value: 75.2.60.5

Type: CNAME
Name: www  
Value: YOUR-SITE.netlify.app
```

---

## OPTION 3: MANUAL UPLOAD (ANY HOSTING)

1. Download `rentalai-production.html`
2. Rename to `index.html`
3. Upload to your hosting via FTP/cPanel
4. Point rentalai.homes DNS to your hosting IP

---

## AFTER DEPLOYMENT: INTEGRATE MOLTBOT

### Step 1: Get MoltBot Embed Code

After MoltBot installation completes:

1. Go to https://app.emergent.sh (or your MoltBot dashboard)
2. Find your bot configuration
3. Look for "Embed" or "Widget Code"
4. Copy the script tag (looks like this):

```html
<script src="https://widget.emergent.sh/moltbot-YOUR-ID.js"></script>
```

### Step 2: Update Your Landing Page

Open your deployed `index.html` and add MoltBot widget before `</body>`:

```html
<!-- Add this before </body> -->
<script src="https://widget.emergent.sh/moltbot-YOUR-ID.js"></script>
<script>
  if (window.MoltBot) {
    MoltBot.init({
      botId: 'YOUR_BOT_ID',
      apiKey: 'YOUR_API_KEY'  // You might not need this if using widget URL
    });
  }
</script>

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

### Step 3: Test

1. Open https://rentalai.homes
2. Click the "Chat with RentalAI Now" button
3. Chat widget should open
4. Test a conversation

---

## TROUBLESHOOTING

### Site not showing up?
- Wait 5-10 minutes for DNS propagation
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Check DNS settings with: `dig rentalai.homes`

### MoltBot not loading?
- Check browser console (F12) for errors
- Verify script URL is correct
- Make sure MoltBot installation finished successfully
- Check if bot ID and API key are correct

### Button does nothing?
- Check if MoltBot script loaded: `console.log(window.MoltBot)`
- Verify init() was called successfully
- Look for JavaScript errors in console

---

## QUICK TEST CHECKLIST

After deployment:
- [ ] Site loads at rentalai.homes
- [ ] Mobile responsive (test on phone)
- [ ] Chat button visible
- [ ] Clicking button opens MoltBot widget
- [ ] Bot responds to test message
- [ ] Bot follows rental assistant persona
- [ ] No JavaScript errors in console

---

## NEXT: LAUNCH TO USERS

Once everything works:

1. **Post to Reddit** (use launch-materials.md)
   - r/Austin, r/Seattle, r/Denver, r/boston, r/Chicago

2. **Post to Facebook Groups**
   - Search: "[City] Apartment Hunters"
   - 5-8 groups

3. **Monitor First 10-20 Users**
   - Are they having good conversations?
   - Is the bot helpful?
   - Any technical issues?

4. **Collect Feedback**
   - Add feedback form after chat
   - Track: Satisfaction, willingness to pay, features wanted

---

## DEPLOYMENT COMPLETE!

Your site should now be live with MoltBot integrated.

**Ready to launch?** Follow the steps in launch-materials.md to get your first users!
