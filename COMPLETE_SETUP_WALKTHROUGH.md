# 📚 STEP-BY-STEP GUIDE: CREATE REPOSITORY & CONNECT TO VERCEL

## PART 1: CREATING THE REPOSITORY ON GITHUB (5 minutes)

### Step 1.1: Go to GitHub New Repository Page

**Open this URL in your browser:**
```
https://github.com/new
```

OR

1. Go to https://github.com
2. Click your profile icon (top right)
3. Click the "+" button next to your profile
4. Select "New repository"

---

### Step 1.2: Fill Out Repository Details

You'll see a form. Fill it out EXACTLY like this:

**Owner:**
- Select: `wordtoimageai` (from dropdown if you have multiple accounts)

**Repository name:**
```
rentalai
```
(lowercase, no spaces)

**Description (optional but recommended):**
```
RentalAI - AI-powered rental assistant landing page
```

**Visibility:**
- ✅ Select: **Public** (VERY IMPORTANT!)
- ❌ DO NOT select Private

**Initialize this repository:**
- ❌ DO NOT check "Add a README file"
- ❌ DO NOT select ".gitignore"
- ❌ DO NOT select "Choose a license"

**Leave all checkboxes UNCHECKED**

---

### Step 1.3: Create Repository

**Click the green button:** "Create repository"

---

### Step 1.4: You'll See a Setup Page

GitHub will show you a page with setup instructions. **IGNORE THOSE FOR NOW.**

You should see:
- A URL like: `https://github.com/wordtoimageai/rentalai.git`
- Some git commands in boxes

**What you'll do next:**
We'll use a DIFFERENT method to add files - either via this environment OR via GitHub web interface.

**Copy this URL for later:**
```
https://github.com/wordtoimageai/rentalai.git
```

---

## PART 2: ADD FILES TO REPOSITORY

You have 3 options. Choose ONE:

---

### OPTION A: Push from This Environment (Recommended if you have git access)

**Step 2A.1: Generate Personal Access Token**

1. Go to: https://github.com/settings/tokens
2. Click: "Generate new token (classic)"
3. Note/Description: `Vercel Deployment for RentalAI`
4. Expiration: Choose "90 days" or longer
5. Select scopes:
   - ✅ Check: **repo** (this will check all sub-items)
   - That's all you need
6. Scroll down and click: "Generate token"
7. **COPY THE TOKEN IMMEDIATELY** (you won't see it again)
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
8. Save it somewhere safe (notepad, password manager)

**Step 2A.2: Run Git Commands**

```bash
# Navigate to deployment folder
cd /app/rentalai-vercel-deploy

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: RentalAI landing page"

# Set main branch
git branch -M main

# Add remote
git remote add origin https://github.com/wordtoimageai/rentalai.git

# Push to GitHub
git push -u origin main
```

**When prompted for credentials:**
- Username: `wordtoimageai`
- Password: Paste your Personal Access Token (the ghp_xxx... token)

**Wait for upload to complete** (should take 5-10 seconds)

**Step 2A.3: Verify**
Go to: https://github.com/wordtoimageai/rentalai

You should now see:
- ✅ index.html
- ✅ vercel.json
- ✅ README.md

---

### OPTION B: Upload Files via GitHub Web Interface (Easiest)

**Step 2B.1: Navigate to Your Repository**
```
https://github.com/wordtoimageai/rentalai
```

**Step 2B.2: Upload Files**

You'll see a page saying "Quick setup". Below that:

1. Click the link: "uploading an existing file"

2. You'll see an upload area with:
   - "Drag files here to add them to your repository"
   - Or "choose your files"

**Step 2B.3: Get Files from This Environment**

You need to get these 3 files from this environment:
- `/app/rentalai-vercel-deploy/index.html`
- `/app/rentalai-vercel-deploy/vercel.json`
- `/app/rentalai-vercel-deploy/README.md`

**How to get files:**

If you can download from this environment:
- Download each file
- Then upload to GitHub

If you CANNOT download, use Option C instead (create files manually)

**Step 2B.4: Upload to GitHub**

1. Drag and drop the 3 files to the upload area
   OR
2. Click "choose your files" and select them

3. At the bottom:
   - Commit message: "Initial commit: Add RentalAI landing page"
   - Click: "Commit changes"

**Step 2B.5: Verify**

Refresh the page. You should see:
- ✅ index.html
- ✅ vercel.json
- ✅ README.md

---

### OPTION C: Create Files Manually on GitHub

**If you can't download files from this environment:**

**Step 2C.1: Create vercel.json**

1. On repository page, click: "Add file" → "Create new file"

2. File name:
```
vercel.json
```

3. File content (copy and paste):
```json
{
  "version": 2,
  "builds": [
    {
      "src": "index.html",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ]
}
```

4. Scroll down, click: "Commit new file"

**Step 2C.2: Create index.html**

1. Click: "Add file" → "Create new file"

2. File name:
```
index.html
```

3. File content: **(I'll provide this separately - it's 379 lines)**

4. Click: "Commit new file"

**Step 2C.3: Create README.md (optional)**

1. Click: "Add file" → "Create new file"

2. File name:
```
README.md
```

3. File content:
```markdown
# RentalAI Landing Page

AI-powered rental assistant helping apartment hunters save time.

## Features
- Landing page with call-to-action
- Mobile responsive design
- Ready for MoltBot widget integration

## Tech Stack
- Static HTML/CSS/JavaScript
- Deployed on Vercel

## Live Site
- Production: https://rentalai.homes
- Staging: https://rentalai-inia.vercel.app
```

4. Click: "Commit new file"

---

## PART 3: CONNECT REPOSITORY TO VERCEL (5 minutes)

Now that your repository has files, connect it to Vercel.

---

### Step 3.1: Go to Vercel Dashboard

**Open:**
```
https://vercel.com/dashboard
```

Make sure you're logged in.

---

### Step 3.2: Find or Create Your Project

**Option A: If you already have a "rentalai" project**

1. Find "rentalai" in your project list
2. Click on it
3. **Skip to Step 3.3**

**Option B: If you need to create a new project**

1. Click: "Add New..." → "Project"
2. You'll see "Import Git Repository"
3. **Continue to Step 3.3**

---

### Step 3.3: Connect to Your Repository

**If you already have a project (Option A above):**

1. In your project, click: "Settings" (top navigation)
2. In left sidebar, click: "Git"
3. You might see an old repository connected
4. Click: "Disconnect" (if there's an old connection)
5. Click: "Connect Git Repository"
6. Select: **GitHub**

**If you're creating a new project (Option B above):**

1. Click: "Continue with GitHub"
2. You may need to authorize Vercel to access GitHub
3. Click: "Authorize Vercel"

---

### Step 3.4: Select Your Repository

You'll see a list of your repositories.

**Find:**
```
wordtoimageai/rentalai
```

**If you DON'T see it:**
1. Click "Adjust GitHub App Permissions"
2. Select: "All repositories" OR select "wordtoimageai/rentalai" specifically
3. Click "Save"
4. Return to Vercel

**When you see it:**
1. Click "Import" next to `wordtoimageai/rentalai`

---

### Step 3.5: Configure Project Settings

You'll see a configuration page.

**Project Name:**
```
rentalai
```
(or keep whatever name is there)

**Framework Preset:**
- Select: "Other" (from dropdown)

**Root Directory:**
```
./
```
(keep as default)

**Build and Output Settings:**

Click to expand if collapsed.

**Build Command:**
- Leave EMPTY (or put: `echo "No build needed"`)

**Output Directory:**
```
./
```

**Install Command:**
- Leave EMPTY

---

### Step 3.6: Environment Variables

**Skip this section** - you don't need any environment variables for now.

Leave it empty.

---

### Step 3.7: Deploy!

**Click the big blue button:** "Deploy"

You'll see:
- Building... (with progress)
- Status updates
- Logs scrolling

**Wait 1-2 minutes** for deployment to complete.

---

### Step 3.8: Deployment Complete

When done, you'll see:
- ✅ Green checkmark
- "Your project has been successfully deployed"
- A preview image (hopefully your landing page)
- A URL

**Your deployment URL:**
```
https://rentalai-inia.vercel.app
```
OR a similar Vercel URL

---

## PART 4: VERIFY EVERYTHING WORKS

### Step 4.1: Check HTTP Status

Open terminal and run:
```bash
curl -I https://rentalai-inia.vercel.app
```

**Expected result:**
```
HTTP/2 200 OK
```

**If you get 404:**
- Wait 2 more minutes (deployment might still be processing)
- Check again
- If still 404, proceed to troubleshooting section below

---

### Step 4.2: Open in Browser

**Visit:**
```
https://rentalai-inia.vercel.app
```

**You should see:**
- ✅ RentalAI landing page
- ✅ Purple gradient background
- ✅ "Chat with RentalAI Now" button
- ✅ Stats section (12-18 hours wasted, 44% give up, etc.)
- ✅ Looks good on mobile

---

### Step 4.3: Test Mobile Responsive

**Option 1: On your phone**
- Open the URL on your phone
- Should look good and be readable

**Option 2: In browser dev tools**
- Press F12 (or right-click → Inspect)
- Click device toolbar icon (looks like phone/tablet)
- Test different screen sizes

---

## 🚨 TROUBLESHOOTING

### Issue: "Repository not found" during connection

**Fix:**
1. Make sure repository is PUBLIC (not private)
2. Go to: https://github.com/wordtoimageai/rentalai/settings
3. Scroll to "Danger Zone"
4. Check visibility is "Public"

---

### Issue: Vercel can't find repository

**Fix:**
1. In Vercel, go to: https://vercel.com/dashboard
2. Top right, click your avatar → "Settings"
3. Click "Git Integrations"
4. Click "Configure" next to GitHub
5. Make sure `wordtoimageai/rentalai` is accessible
6. Click "Save"

---

### Issue: Still getting 404 after deployment

**Fix:**
1. Go to Vercel project
2. Click "Deployments" tab
3. Click on the latest deployment
4. Click "View Function Logs"
5. Check for errors

**Common causes:**
- Files not in repository root
- vercel.json misconfigured
- Need to redeploy manually

**Manual redeploy:**
1. Deployments tab
2. Click "..." on latest deployment
3. Click "Redeploy"

---

### Issue: "This Serverless Function has crashed"

**Fix:**
This means Vercel is trying to build a function, but we have static HTML.

1. Settings → General
2. Scroll to "Build & Development Settings"
3. Framework Preset: Change to "Other"
4. Build Command: Leave empty or put `echo "Static site"`
5. Save
6. Redeploy

---

## ✅ SUCCESS CHECKLIST

Mark each item when complete:

**Repository:**
- [ ] Repository created at https://github.com/wordtoimageai/rentalai
- [ ] Repository is PUBLIC (not private)
- [ ] Files visible: index.html, vercel.json
- [ ] Can access repository in browser

**Vercel Connection:**
- [ ] Vercel project connected to wordtoimageai/rentalai
- [ ] Framework preset: "Other"
- [ ] Build command: empty
- [ ] Output directory: ./

**Deployment:**
- [ ] Deployment status: "Ready" (green checkmark)
- [ ] No error messages in logs
- [ ] URL accessible: https://rentalai-inia.vercel.app

**Website:**
- [ ] `curl -I` returns HTTP 200
- [ ] Landing page visible in browser
- [ ] "Chat with RentalAI" button visible
- [ ] Mobile responsive works

---

## 🎯 WHAT TO DO AFTER SUCCESS

Once everything is working:

1. **Add custom domain (optional):**
   - Vercel Settings → Domains
   - Add: rentalai.homes
   - Update DNS at your domain registrar

2. **Configure MoltBot:**
   - Go to: https://app.emergent.sh/home
   - Create "RentalAI Assistant" bot
   - Add system prompt
   - Get widget code

3. **Integrate widget:**
   - Edit index.html on GitHub
   - Add MoltBot script before </body>
   - Commit changes
   - Vercel auto-deploys

4. **Launch:**
   - Test 5 rental scenarios
   - Post to Reddit/Facebook
   - Monitor first users

---

## 📞 NEED HELP?

If you get stuck at any step:

1. **Take a screenshot** of the error/issue
2. **Note which step** you're on (e.g., "Step 3.4")
3. **Tell me what you see** vs what you expected
4. I'll help you troubleshoot!

---

## 🎉 YOU'RE ALMOST THERE!

**Current progress:**
- ✅ Files ready to deploy
- ✅ Step-by-step guide created
- ⏳ Waiting for you to create repository
- ⏳ Waiting to connect to Vercel

**Time remaining:** ~10-15 minutes to complete

**Let's do this!** 🚀

Start with PART 1, Step 1.1 and let me know when you've created the repository!
