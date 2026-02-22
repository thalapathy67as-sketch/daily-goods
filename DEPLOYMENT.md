# Deployment Guide - The Daily Goods Co.

## Quick Deployment Options

### Option 1: Railway.app (Recommended - Free Tier)
1. Go to [railway.app](https://railway.app)
2. Sign up with GitHub
3. Click "New Project" → "Deploy from GitHub repo"
4. Select your repository
5. Add MongoDB plugin from dashboard
6. Railway auto-deploys on push

### Option 2: Render.com (Free Tier Available)
1. Go to [render.com](https://render.com)
2. Click "New +" → "Web Service"
3. Connect GitHub repository
4. Runtime: Node
5. Build command: `npm install`
6. Start command: `node server.js`
7. Add MongoDB connection in environment variables
8. Deploy

### Option 3: Heroku (Paid - $7/month minimum)
1. Install Heroku CLI
2. Run: `heroku login`
3. Run: `heroku create your-app-name`
4. Add MongoDB addon: `heroku addons:create mongolab`
5. Run: `git push heroku main`

### Option 4: Docker + Any VPS (AWS, DigitalOcean, Linode)
1. Build Docker image: `docker build -t daily-goods .`
2. Upload to cloud VPS
3. Run: `docker run -p 5000:80 -e MONGODB_URI=your_mongo_url daily-goods`

## Pre-Deployment Checklist

- [ ] MongoDB is set up (use MongoDB Atlas for free cloud DB)
- [ ] Update `.env` file with production values
- [ ] Test locally: `npm start`
- [ ] Commit all changes to git
- [ ] Update `package.json` version

## Environment Variables for Production

```
MONGODB_URI=mongodb+srv://user:pass@cluster.mongodb.net/dailygoods
PORT=5000
NODE_ENV=production
JWT_SECRET=your_strong_secret_key_here
```

## MongoDB Setup (Free)
1. Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
2. Create free account
3. Create M0 free cluster
4. Get connection string
5. Replace `MONGODB_URI` in `.env`

## Custom Domain
- Update DNS settings to point to your deployment URL
- Enable HTTPS (most platforms do this automatically)

## Post-Deployment
- Test API endpoints
- Test frontend connectivity
- Monitor server logs
- Set up error tracking (Sentry)
