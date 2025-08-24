# Portfolio Deployment Guide

This guide will help you deploy your Sihoon Kim portfolio as the main site at **https://moogchi.github.io/**

## 🎯 Quick Setup Overview

Your portfolio will be the main site at: `https://moogchi.github.io/`
- This replaces any existing content at the root of your moogchi.github.io repository
- The portfolio becomes your primary GitHub Pages site

---

## 📋 Step-by-Step Deployment

### Step 1: Repository Setup

1. **Navigate to your `moogchi.github.io` repository:**
   ```bash
   cd path/to/moogchi.github.io
   ```

2. **Back up existing content (if any):**
   ```bash
   # If you have existing content, move it to a backup folder
   mkdir backup-$(date +%Y%m%d)
   mv *.html *.css *.js backup-$(date +%Y%m%d)/ 2>/dev/null || true
   ```

3. **Copy all portfolio files to the repository root:**
   ```
   moogchi.github.io/
   ├── App.tsx              # ← Portfolio files at root level
   ├── package.json
   ├── vite.config.ts
   ├── index.html
   ├── components/
   ├── styles/
   ├── src/
   └── .github/
       └── workflows/
           └── deploy.yml
   ```

### Step 2: Install Dependencies

```bash
# From the root of moogchi.github.io
npm install
```

### Step 3: Test Locally

```bash
npm run dev
```

Visit `http://localhost:5173` to verify everything works correctly.

### Step 4: Set Up GitHub Actions

1. **Ensure the workflow is in the correct location:**
   ```bash
   # Create .github/workflows directory if it doesn't exist
   mkdir -p .github/workflows
   
   # Copy or move the workflow file
   cp workflows/deploy.yml .github/workflows/deploy.yml
   ```

2. **Remove the old workflows folder:**
   ```bash
   rm -rf workflows/
   ```

### Step 5: Configure GitHub Pages

1. **Go to your `moogchi.github.io` repository on GitHub**
2. **Navigate to Settings → Pages**
3. **Under "Source", select "GitHub Actions"**
4. **Save the settings**

### Step 6: Deploy

1. **Commit and push your changes:**
   ```bash
   git add .
   git commit -m "Deploy portfolio as main site"
   git push origin main
   ```

2. **Monitor the deployment:**
   - Go to the "Actions" tab in your GitHub repository
   - Watch the "Deploy Portfolio to GitHub Pages" workflow
   - Deployment typically takes 2-3 minutes

3. **Verify deployment:**
   - Visit: https://moogchi.github.io/
   - Your portfolio should be live as your main site!

---

## 🔧 Configuration Details

### Root Deployment Configuration
Your `vite.config.ts` is configured with:
```typescript
base: '/', // Root deployment
```

### Asset Paths
Your `index.html` uses root paths:
```html
<link rel="icon" type="image/svg+xml" href="/vite.svg" />
```

### Meta Tags
SEO and social media tags point to:
```html
<meta property="og:url" content="https://moogchi.github.io/" />
```

---

## 🎨 Customization Checklist

After successful deployment, update these placeholder values:

### Personal Information
- [ ] **Email**: Change `contact@moogchi.dev` to your real email
- [ ] **LinkedIn**: Update `https://linkedin.com/in/sihoon-kim` to your actual profile
- [ ] **Profile Photo**: Replace the Unsplash image with your actual photo
- [ ] **About Section**: Update your story, experience, and background
- [ ] **Skills**: Modify the skills array with your actual technologies and levels

### Project Information
- [ ] **Project Titles**: Update with your real project names
- [ ] **Project Descriptions**: Write about your actual projects
- [ ] **GitHub Links**: Update project repository URLs
- [ ] **Live Demo Links**: Add actual demo URLs
- [ ] **Project Images**: Replace with screenshots of your projects
- [ ] **Technology Tags**: Update with technologies you actually used

### Content Updates
- [ ] **Work Experience**: Update education and experience cards
- [ ] **Contact Information**: Verify all contact methods work
- [ ] **Social Links**: Ensure all links point to your profiles

---

## 🚨 Troubleshooting

### Common Issues and Solutions

**❌ 404 Error on Main Site**
- Check that `base: '/'` is set in `vite.config.ts`
- Verify files are in the repository root (not in a subfolder)
- Ensure GitHub Pages is enabled in repository settings

**❌ GitHub Actions Failing**
- Check the Actions tab for error details
- Verify `package.json` has all required dependencies
- Ensure workflow file is in `.github/workflows/deploy.yml`

**❌ Old Site Still Showing**
- Hard refresh your browser (Ctrl+F5 or Cmd+Shift+R)
- Check that the deployment completed successfully
- GitHub Pages may take a few minutes to update

**❌ Styles Not Loading**
- Verify `src/main.tsx` imports `../styles/globals.css`
- Check that the build process completes successfully
- Clear browser cache and hard refresh

### Build Commands

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Run linting
npm run lint
```

---

## 📊 Repository Structure

Your repository should look like this after deployment:

```
moogchi.github.io/
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions workflow
├── components/             # React components
├── src/                   # Entry point
├── styles/                # Global styles
├── App.tsx               # Main portfolio component
├── package.json          # Dependencies
├── vite.config.ts        # Build configuration
├── index.html           # HTML template
└── README.md            # Project documentation
```

---

## 🔄 Making Updates

Once deployed, to make changes:

1. **Edit files locally** in the repository root
2. **Test changes** with `npm run dev`
3. **Commit and push** to the `main` branch
4. **GitHub Actions** will automatically redeploy
5. **Changes go live** within 2-3 minutes

---

## 🌐 URLs Summary

After deployment:
- **Portfolio Site**: https://moogchi.github.io/ (your main site)
- **Repository**: https://github.com/moogchi/moogchi.github.io

---

## 📞 Support

If you encounter issues:
1. Check the GitHub Actions logs for build errors
2. Verify all file paths and configurations
3. Test locally before pushing changes
4. Ensure all dependencies are properly installed

Your portfolio should now be successfully deployed as your main site at https://moogchi.github.io/ 🎉

---

## ⚠️ Important Notes

- **This setup replaces any existing content** at moogchi.github.io
- **Back up existing files** before deploying if you want to keep them
- **The portfolio becomes your primary GitHub Pages site**
- **All GitHub Pages features work normally** (custom domains, etc.)