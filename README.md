# Sihoon Kim Portfolio

A modern, responsive portfolio website built with React, TypeScript, and Tailwind CSS. Deployed as the main site at **https://moogchi.github.io/**

## 🚀 Live Site

Visit: [https://moogchi.github.io](https://moogchi.github.io)

## 📋 Quick Deployment

This portfolio is configured to deploy directly to the root of your `moogchi.github.io` repository, making it your main GitHub Pages site.

### Prerequisites
- GitHub account with `moogchi.github.io` repository
- Git installed locally
- Node.js 18+ installed

### Deploy Steps
1. Clone or copy files to your `moogchi.github.io` repository root
2. Run `npm install`
3. Test locally with `npm run dev`
4. Push to `main` branch
5. GitHub Actions will automatically deploy

**Detailed instructions:** See [DEPLOYMENT.md](./DEPLOYMENT.md)

## 🎨 Customization

### Personal Information
Update in `App.tsx`:
- [ ] Email: `contact@moogchi.dev` → your actual email
- [ ] LinkedIn: `https://linkedin.com/in/sihoon-kim` → your LinkedIn
- [ ] Profile photo: Replace Unsplash placeholder with your photo
- [ ] Skills array: Update with your actual skills and levels
- [ ] Projects array: Add your real projects with GitHub/demo links
- [ ] About section: Customize your story and experience

### Project Showcase
Current projects have placeholder content. Update with:
- Your actual project repositories
- Live demo links
- Real project descriptions and technologies
- Screenshots of your work

## 🛠️ Tech Stack

- **Frontend**: React 18, TypeScript
- **Styling**: Tailwind CSS v4, Shadcn/UI
- **Build**: Vite
- **Deployment**: GitHub Pages with GitHub Actions
- **Icons**: Lucide React

## 📁 Project Structure

```
├── App.tsx              # Main portfolio component
├── src/
│   └── main.tsx         # App entry point
├── components/
│   ├── ui/              # Shadcn/UI components
│   └── figma/          # Custom components
├── styles/
│   └── globals.css     # Global styles & theme
├── .github/
│   └── workflows/
│       └── deploy.yml  # GitHub Actions deployment
└── package.json        # Dependencies & scripts
```

## 🚀 Features

- ✅ Responsive design (mobile-first)
- ✅ Dark/light theme support
- ✅ Smooth scrolling navigation
- ✅ Interactive skill bars
- ✅ Project showcase with hover effects  
- ✅ SEO optimized with meta tags
- ✅ Fast loading with Vite
- ✅ Accessible components

## 🔄 Development

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

## 🚀 Deployment

Automatic deployment via GitHub Actions:
1. Push changes to `main` branch
2. GitHub Actions builds and deploys
3. Site updates at https://moogchi.github.io/ within 2-3 minutes

## 📧 Contact

Sihoon Kim - [contact@moogchi.dev](mailto:contact@moogchi.dev)

GitHub: [https://github.com/moogchi](https://github.com/moogchi)

Portfolio: [https://moogchi.github.io](https://moogchi.github.io)