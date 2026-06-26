# SXO Master — Vercel Deployment Guide

## Step 1: GitHub par project upload karein

### Option A: Naya GitHub repo banayein

1. **GitHub.com** pe login karein (ya free account banayein)
2. Top right **"+"** → **"New repository"**
3. Repository name: `sxo-master-landing`
4. **Private** ya **Public** select karein
5. **"Create repository"** click karein

### Option B: Files upload karein

Project ki in files ko GitHub repo me upload karein:

```
sxo-master-landing/
├── src/
│   ├── app/
│   │   ├── globals.css      (dark theme styles)
│   │   ├── layout.tsx        (SEO metadata)
│   │   └── page.tsx          (main landing page)
│   ├── components/ui/        (shadcn components)
│   ├── hooks/
│   └── lib/
├── public/
│   └── screenshots/          (4 product screenshots)
├── package.json
├── next.config.ts
├── tailwind.config.ts
├── tsconfig.json
├── postcss.config.mjs
├── components.json
└── .gitignore
```

**Note:** `node_modules` folder upload NA karein — Vercel automatically install karega.

---

## Step 2: Vercel pe deploy karein

1. **Vercel.com** pe jayein
2. **"Sign Up"** → **"Continue with GitHub"** (GitHub se login karein)
3. Login ke baad **"Add New"** → **"Project"** click karein
4. Apna `sxo-master-landing` repository select karein
5. Settings check karein:
   - **Framework Preset:** Next.js (auto-detect ho jayega)
   - **Build Command:** `next build` (default)
   - **Output Directory:** `.next` (default)
   - **Install Command:** `bun install` (ya `npm install`)
6. **"Deploy"** button click karein

⏱️ **2-3 minute** me deploy ho jayega.

✅ Deploy hone ke baad aapko ek URL milega:
`https://sxo-master-landing-xyz.vercel.app`

---

## Step 3: Apni domain connect karein

1. Vercel dashboard me apne project pe click karein
2. **"Settings"** → **"Domains"** tab
3. Apni domain enter karein (e.g., `sxo.sitesbrand.com` ya `sitesbrand.com`)
4. **"Add"** click karein

### DNS Configuration:

Vercel aapko DNS records dega. Apne domain provider (GoDaddy, Namecheap, Cloudflare, etc.) me login karke ye records add karein:

#### Option A: Subdomain (e.g., sxo.sitesbrand.com)
```
Type:  CNAME
Name:  sxo
Value: cname.vercel-dns.com
```

#### Option B: Main domain (e.g., sitesbrand.com)
```
Type:  A
Name:  @
Value: 76.76.21.21

Type:  CNAME
Name: www
Value: cname.vercel-dns.com
```

5. DNS update hone ke baad (5-30 minute), Vercel automatically:
   - ✅ SSL certificate install karega
   - ✅ HTTPS enable karega
   - ✅ Domain verify karega

---

## Step 4: Verify karein

1. Apni domain browser me open karein
2. Landing page load honi chahiye
3. **HTTPS** green lock icon check karein
4. Mobile pe bhi test karein

---

## 📋 Quick Checklist

- [ ] GitHub repo banaya
- [ ] Files upload kiye
- [ ] Vercel pe import kiya
- [ ] Deploy successful
- [ ] Domain add kiya Vercel me
- [ ] DNS records set kiye domain provider me
- [ ] SSL active ho gaya
- [ ] Domain pe page load ho raha hai

---

## 🔧 Common Issues

### Issue: Build fail ho raha hai
**Solution:** `package.json` me `build` script check karein:
```json
"scripts": {
  "build": "next build"
}
```

### Issue: Images load nahi ho rahi
**Solution:** `public/screenshots/` folder me saari images honi chahiye

### Issue: Domain connect nahi ho raha
**Solution:** DNS propagation ke liye 24 hours wait karein, ya Cloudflare use karein

---

## 🚀 Need Help?

- **Product queries:** info@sitesbrand.com
- **Support:** support@sitesbrand.xyz
- **Website:** sitesbrand.com

---

**Built by SitesBrand — Psychology, Design & Technology**
