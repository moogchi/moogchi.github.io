#!/bin/bash

# Portfolio Setup Script
# This script sets up the complete development environment for the portfolio

echo "🚀 Setting up Sihoon Kim Portfolio..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ first."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js version 18 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Clean up old files if they exist
echo "🧹 Cleaning up old files..."
if [ -d "workflows" ]; then
    echo "  - Removing old workflows directory"
    rm -rf workflows
fi

if [ -f "package-lock.json" ]; then
    echo "  - Removing old package-lock.json"
    rm package-lock.json
fi

if [ -d "node_modules" ]; then
    echo "  - Removing old node_modules"
    rm -rf node_modules
fi

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    echo "💡 Try running: rm -rf node_modules package-lock.json && npm install"
    exit 1
fi

echo "✅ Dependencies installed successfully"

# Create public directory if it doesn't exist
mkdir -p public

# Check if all essential files exist
echo "🔍 Checking project structure..."

ESSENTIAL_FILES=(
    "App.tsx"
    "src/main.tsx"
    "styles/globals.css"
    "index.html"
    "package.json"
    "vite.config.ts"
    "tsconfig.json"
    ".github/workflows/deploy.yml"
)

for file in "${ESSENTIAL_FILES[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ Missing essential file: $file"
        exit 1
    fi
done

echo "✅ All essential files found"

# Run type check
echo "🔍 Running TypeScript check..."
npx tsc --noEmit

if [ $? -ne 0 ]; then
    echo "❌ TypeScript errors found. Please fix them before continuing."
    exit 1
fi

echo "✅ TypeScript check passed"

# Build the project to test
echo "🏗️  Testing production build..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed. Please check the errors above."
    exit 1
fi

echo "✅ Production build successful"

# Clean up build artifacts for development
rm -rf dist

echo ""
echo "🎉 Portfolio setup complete!"
echo ""
echo "📋 Next steps:"
echo "  1. Run 'npm run dev' to start development server"
echo "  2. Open http://localhost:3000 in your browser"
echo "  3. Customize the portfolio content in App.tsx"
echo "  4. Update personal information and projects"
echo "  5. Push to your moogchi.github.io repository"
echo ""
echo "🚀 Development commands:"
echo "  npm run dev     - Start development server"
echo "  npm run build   - Build for production"
echo "  npm run preview - Preview production build"
echo "  npm run lint    - Run linting"
echo ""
echo "📖 See README.md and DEPLOYMENT.md for detailed instructions"