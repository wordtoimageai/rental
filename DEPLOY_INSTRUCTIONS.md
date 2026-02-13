# Deploy Instructions

1.  **Push to GitHub**: Ensure all changes are committed and pushed.
2.  **Import to Vercel**:
    -   Go to Vercel Dashboard > Add New > Project.
    -   Select the repository.
3.  **Project Settings**:
    -   **Framework Preset**: Select "Other" or "Create React App" (but we have a custom root build).
    -   **Root Directory**: Leave as `./`.
    -   **Build Command**: `npm run build` (This runs the script in root package.json: `cd frontend && npm install && npm run build`).
    -   **Output Directory**: `frontend/build`.
    -   **Install Command**: `echo 'Skipping install at root'` (Managed by our build script) or leave default `npm install` (which installs root package.json devDeps, which is fine).
4.  **Environment Variables**:
    -   `MONGO_URL`: Your MongoDB connection string.
    -   `EMERGENT_API_KEY`: If using Emergent.
    -   `VERCEL`: Set to `1` (Vercel sets this automatically for Frameworks, but good to be sure or rely on System Env Vars). *Actually Vercel sets `VERCEL=1` automatically.*
    -   `JWT_SECRET`: If used.
5.  **Deploy**: Click Deploy.
