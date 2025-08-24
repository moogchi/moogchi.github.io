# Quick Fix for Import Errors

The error you're seeing is caused by versioned imports in the Shadcn UI components. Here's how to fix it:

## Option 1: Manual Fix (Recommended)

1. **Delete node_modules and package-lock.json:**
   ```bash
   rm -rf node_modules package-lock.json
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start the development server:**
   ```bash
   npm run dev
   ```

## Option 2: Use the Fix Script

If the manual fix doesn't work, you can run the automated script:

```bash
chmod +x fix-imports.sh
./fix-imports.sh
```

Then follow the same steps above.

## What the issue was:

The Shadcn UI components were importing packages with version specifiers like:
- `@radix-ui/react-slot@1.1.2` ❌
- `lucide-react@0.487.0` ❌
- `class-variance-authority@0.7.1` ❌

They should be importing without versions like:
- `@radix-ui/react-slot` ✅
- `lucide-react` ✅  
- `class-variance-authority` ✅

I've already fixed the major components (badge, button, card, accordion, dialog) that were causing the immediate errors. The remaining components should work after reinstalling dependencies.