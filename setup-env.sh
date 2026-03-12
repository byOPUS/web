#!/bin/bash

# Environment Setup Script for Opus
echo "🚀 Setting up environment variables for Opus"
echo ""

# Check if .env already exists
if [ -f ".env" ]; then
    echo "⚠️  .env file already exists!"
    read -p "Do you want to overwrite it? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Setup cancelled."
        exit 1
    fi
fi

echo "📝 Please enter your Supabase credentials:"
echo ""

# Get Supabase URL
read -p "Enter your Supabase Project URL (e.g., https://your-project.supabase.co): " SUPABASE_URL

# Get Supabase Anon Key
read -p "Enter your Supabase Anon Key: " SUPABASE_ANON_KEY

# Get app title
read -p "Enter your app title (default: Opus): " APP_TITLE
APP_TITLE=${APP_TITLE:-Opus}

# Get app description
read -p "Enter your app description (default: Grassroots nonprofit open collective platform): " APP_DESCRIPTION
APP_DESCRIPTION=${APP_DESCRIPTION:-Grassroots nonprofit open collective platform}

# Create .env file
cat > .env << EOF
# Supabase Configuration
VUE_APP_SUPABASE_URL=$SUPABASE_URL
VUE_APP_SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY

# Environment
NODE_ENV=development

# Vue App Configuration
VUE_APP_TITLE=$APP_TITLE
VUE_APP_DESCRIPTION=$APP_DESCRIPTION

# Optional: GitHub OAuth (if you want to add GitHub integration)
# VUE_APP_GITHUB_CLIENT_ID=your-github-client-id
# VUE_APP_GITHUB_CLIENT_SECRET=your-github-client-secret

# Optional: Analytics (if you want to add analytics later)
# VUE_APP_ANALYTICS_ID=your-analytics-id

# Optional: Sentry (if you want to add error tracking later)
# VUE_APP_SENTRY_DSN=your-sentry-dsn
EOF

echo ""
echo "✅ Environment file created successfully!"
echo "📁 .env file has been created with your configuration"
echo ""
echo "🔒 Remember: The .env file is already in .gitignore to keep your secrets safe"
echo ""
echo "🚀 You can now run 'npm run dev' to start the development server"
echo ""
echo "📖 For more information, see env-config.md" 