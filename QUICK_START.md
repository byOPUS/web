# ⚡ Quick Start Guide

Get the Opus MVP running in under 5 minutes!

## 🚀 Prerequisites

- Node.js 14+ installed
- npm or yarn installed
- Git installed

## ⚡ Quick Setup

### 1. Clone and Setup
```bash
# Clone the repository
git clone https://github.com/opus/web.git
cd web

# Run the automated setup script
./setup-mvp.sh
```

### 2. Configure Supabase (Required)

1. **Create Supabase Project**
   - Go to [supabase.com](https://supabase.com)
   - Create a new project
   - Note your project URL and anon key

2. **Set up Database**
   - Go to your Supabase dashboard
   - Navigate to SQL Editor
   - Run the SQL from `supabase-setup.sql`

3. **Update Environment**
   ```bash
   # Edit .env file
   nano .env
   
   # Update these values:
   VUE_APP_SUPABASE_URL=https://your-project.supabase.co
   VUE_APP_SUPABASE_ANON_KEY=your-anon-key
   ```

### 3. Start Development
```bash
# Start the development server
npm run dev

# Open your browser
open http://localhost:8080
```

## 🎯 What You Get

### Core Features
- ✅ User authentication (email/password + GitHub)
- ✅ Project creation and showcase
- ✅ Social feed with real-time updates
- ✅ GitHub repository integration
- ✅ User profiles and dashboards
- ✅ Responsive design with animations

### Tech Stack
- **Frontend**: Vue 3 + TypeScript
- **Backend**: Supabase (PostgreSQL)
- **Styling**: CSS3 with modern animations
- **Deployment**: Ready for Vercel/Netlify

## 🔧 Configuration Options

### GitHub Integration (Optional)
1. Create GitHub OAuth App
2. Add to `.env`:
   ```env
   VUE_APP_GITHUB_CLIENT_ID=your_client_id
   VUE_APP_GITHUB_CLIENT_SECRET=your_client_secret
   ```

### Custom Branding
Edit `.env`:
```env
VUE_APP_APP_NAME=Your App Name
VUE_APP_APP_DESCRIPTION=Your App Description
VUE_APP_APP_URL=https://yourapp.com
```

## 🚀 Deployment

### Vercel (Recommended)
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel
```

### Netlify
```bash
# Build
npm run build

# Deploy dist/ folder
```

### GitHub Pages
```bash
# Build
npm run build

# Push to GitHub
git add .
git commit -m "Deploy"
git push origin main
```

## 🐛 Troubleshooting

### Common Issues

**"Module not found" errors**
```bash
# Clear node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

**Supabase connection errors**
- Check your `.env` file has correct values
- Verify Supabase project is active
- Check database tables are created

**Build errors**
```bash
# Clear cache and rebuild
npm run build -- --clean
```

**Port already in use**
```bash
# Use different port
npm run dev -- --port 3000
```

## 📚 Next Steps

### Explore the Codebase
- `src/components/` - Vue components
- `src/services/` - Business logic
- `src/lib/supabase.ts` - Database configuration

### Key Files
- `PROJECT_INDEX.md` - Complete project structure
- `MVP_GUIDE.md` - Detailed feature guide
- `env-config.md` - Environment setup

### Customization
- Edit `src/components/` for UI changes
- Modify `src/services/` for business logic
- Update `src/lib/supabase.ts` for database changes

## 🆘 Need Help?

- **Documentation**: Check `MVP_GUIDE.md`
- **Issues**: [GitHub Issues](https://github.com/opus/web/issues)
- **Community**: [Discord](https://discord.gg/opus)
- **Email**: jordan@opus.org

## 🎉 You're Ready!

Your Opus MVP is now running! Start building your community-driven development platform.

---

**Pro Tip**: Run `./setup-mvp.sh` anytime to check your setup and get helpful tips. 