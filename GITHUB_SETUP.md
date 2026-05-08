# How to Upload This Repository to GitHub

Follow these steps to create a new GitHub repository and push your Dublin Weather Scraping project online.

## Prerequisites

- GitHub account (free at https://github.com)
- Git installed on your computer
- Terminal/Command Prompt access

## Step-by-Step Guide

### 1. Create a New Repository on GitHub

1. Go to https://github.com/new
2. Fill in the repository details:
   - **Repository name**: `dublin-weather-scraping`
   - **Description**: `Web scraping and analysis of Dublin weather data using R`
   - **Visibility**: Choose "Public" (everyone can see) or "Private" (only you)
   - **Initialize repository**: Leave all unchecked (we'll add files locally)
3. Click **Create repository**

### 2. Prepare Your Local Repository

Open Terminal/Command Prompt and navigate to the folder containing all the files:

```bash
cd /path/to/your/dublin-weather-scraping/folder
```

### 3. Initialize Git in Your Local Folder

```bash
# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Dublin weather scraping project"
```

### 4. Connect to GitHub

Replace `YOUR_USERNAME` with your actual GitHub username:

```bash
# Add the remote repository
git remote add origin https://github.com/YOUR_USERNAME/dublin-weather-scraping.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

### 5. Verify Your Repository

- Visit: `https://github.com/YOUR_USERNAME/dublin-weather-scraping`
- You should see all your files displayed on GitHub!

## Alternative: Using GitHub Desktop (Easier)

If command line feels intimidating, use GitHub Desktop:

1. Download from https://desktop.github.com/
2. Sign in with your GitHub account
3. Click "New Repository"
4. Fill in details and choose the folder location
5. Create the repository
6. Click "Publish repository" to push to GitHub

## File Checklist

Your repository should contain these files:

- ✅ `README.md` - Project overview
- ✅ `LICENSE` - MIT license
- ✅ `.gitignore` - Files to exclude from Git
- ✅ `Data_Acquisition.Rmd` - Main analysis file
- ✅ `REQUIREMENTS.md` - Dependencies documentation
- ✅ `install_dependencies.R` - Automated package installer
- ✅ `CONTRIBUTING.md` - Contribution guidelines
- ✅ `CHANGELOG.md` - Version history
- ✅ `GITHUB_SETUP.md` - This setup guide

## After Upload: Next Steps

### Make Your Repository Stand Out

1. **Add a repository image**:
   - Go to repository Settings
   - Add a repository image/logo
   - Helps with visual identification

2. **Setup GitHub Pages** (Optional):
   - Enable in Settings → Pages
   - Makes your README pretty online

3. **Add Topics** (Optional):
   - Add keywords like: `r`, `web-scraping`, `data-analysis`, `weather`, `dublin`
   - Helps people discover your project

4. **Watch for Updates**:
   - Monitor if the website structure changes
   - Update your scraping code as needed

### Maintain Your Repository

**Weekly/Monthly:**
- Run the analysis to keep data current
- Commit updates: `git add . && git commit -m "Update analysis"`
- Push changes: `git push`

**Track Issues:**
- GitHub Issues tab for bug reports
- Discussions tab for questions
- Create milestones for versions

## Troubleshooting

### "fatal: not a git repository"

Make sure you ran `git init` in the correct folder:

```bash
# Check current location
pwd

# Verify git is initialized
ls -la | grep .git
```

### "Authentication failed"

If using HTTPS, you may need a Personal Access Token:

1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Click "Generate new token"
3. Select `repo` scope
4. Copy the token
5. When Git asks for password, paste the token

Or use SSH (more secure):

```bash
# Use SSH instead of HTTPS
git remote remove origin
git remote add origin git@github.com:YOUR_USERNAME/dublin-weather-scraping.git
git push -u origin main
```

### "Repository already exists"

If you already have a `.git` folder:

```bash
# Start fresh
rm -rf .git
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/dublin-weather-scraping.git
git push -u origin main
```

## Collaboration Features

Once on GitHub, you can:

- ⭐ Add stars to show support
- 🍴 Let others fork and contribute
- 💬 Enable Discussions for Q&A
- 🐛 Track Issues for improvements
- 📊 View contributor graphs
- 📝 Create Pull Request templates

## Security Considerations

Never commit:
- Passwords or API keys
- Personal data
- Large data files
- Temporary files

Check `.gitignore` to ensure sensitive files are excluded.

## Share Your Project

Once published, share it:

- **LinkedIn**: "Just published my web scraping project on GitHub!"
- **Reddit**: r/rstats, r/datascience
- **Twitter**: Showcase your analysis with #RStats #DataScience
- **Dev communities**: Share on Dev.to, Medium, etc.

## Quick Reference

```bash
# First time setup
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# Regular workflow
git add .
git commit -m "Description of changes"
git push

# Check status
git status
git log
git remote -v
```

## Resources

- [GitHub Hello World](https://guides.github.com/activities/hello-world/)
- [Git Basics](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
- [GitHub Docs](https://docs.github.com)
- [Git Cheat Sheet](https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf)

---

**Questions?** Check GitHub's official guides or ask in the GitHub Community Discussions!

Good luck with your project! 🚀
