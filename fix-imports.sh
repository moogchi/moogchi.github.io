#!/bin/bash

# Fix versioned imports in Shadcn UI components
# This script removes version specifiers from import statements

echo "🔧 Fixing versioned imports in Shadcn UI components..."

# Find all .tsx files in components/ui directory
find components/ui -name "*.tsx" -type f | while read -r file; do
    echo "  Fixing imports in $file"
    
    # Remove version specifiers from package imports
    sed -i 's/@radix-ui\/\([^@]*\)@[0-9][^"]*/@radix-ui\/\1/g' "$file"
    sed -i 's/lucide-react@[0-9][^"]*["'"'"']/lucide-react/g' "$file"
    sed -i 's/class-variance-authority@[0-9][^"]*["'"'"']/class-variance-authority/g' "$file"
    sed -i 's/react-hook-form@[0-9][^"]*["'"'"']/react-hook-form@7.55.0/g' "$file"
    sed -i 's/date-fns@[0-9][^"]*["'"'"']/date-fns/g' "$file"
    sed -i 's/react-day-picker@[0-9][^"]*["'"'"']/react-day-picker/g' "$file"
    sed -i 's/embla-carousel-react@[0-9][^"]*["'"'"']/embla-carousel-react/g' "$file"
    sed -i 's/recharts@[0-9][^"]*["'"'"']/recharts/g' "$file"
    sed -i 's/react-resizable-panels@[0-9][^"]*["'"'"']/react-resizable-panels/g' "$file"
    sed -i 's/sonner@[0-9][^"]*["'"'"']/sonner@2.0.3/g' "$file"
    sed -i 's/vaul@[0-9][^"]*["'"'"']/vaul/g' "$file"
    sed -i 's/input-otp@[0-9][^"]*["'"'"']/input-otp/g' "$file"
done

echo "✅ Import fixes completed!"
echo ""
echo "💡 Next steps:"
echo "  1. Remove old dependencies: rm -rf node_modules package-lock.json"
echo "  2. Install clean dependencies: npm install"
echo "  3. Start development server: npm run dev"