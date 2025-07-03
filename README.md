# 🧱 Jekyll Portfolio Starter Template

A clean, **modular**, and **developer-centric** portfolio starter built with [**Jekyll**](https://jekyllrb.com), powered by **Docker**, and designed for seamless deployment via **GitHub Pages**.

> 🌟 Ideal for developers who want full control, quick setup, and easy customization.

---

## 🚀 Live Preview

👉 [taj54.github.io](https://taj54.github.io)

---

## 🔧 Features

- 🧹 **Modular content** via `_includes/` – plug-and-play components like About, Skills, Projects
- ✨ Minimal Jekyll theme with custom layout support
- 🐳 Docker-based local development (no Ruby setup needed)
- 📝 Markdown-first approach (write once, deploy fast)
- 💾 GitHub Pages optimized
- 🔌 Built-in plugin support: `jekyll-feed`, `jekyll-seo-tag`, etc.

---

## 📁 Folder Structure Overview

```
.
├── _config.yml              # Global config (title, SEO, baseurl, etc.)
├── index.md                 # Landing/homepage
├── Dockerfile               # Docker image for running Jekyll
├── docker-compose.yml       # Local dev made simple
├── Gemfile / Gemfile.lock   # Ruby/Jekyll dependencies
│
├── assets/                  # Static files (CSS, images)
│   ├── css/                 # Custom styling
│   └── img/                 # Logos, favicons, etc.
│
├── _includes/               # Modular content blocks
│   ├── about.md             # Bio section
│   ├── certifications.md    # Certifications list
│   ├── contact.md           # Contact info
│   ├── experience.md        # Work timeline
│   ├── languages.md         # Languages spoken
│   ├── projects.md          # Project list
│   └── skills.md            # Tech stack
│
├── _layouts/                # Page templates
│   ├── blog.html            # Blog list template
│   └── post.html            # Individual post template
│
├── _posts/                  # Blog posts (Markdown)
├── blog/                    # Blog landing page
├── privacy/                 # Legal/privacy content
└── README.md
```

---

## 🧹 Modularity Explained

This template is structured around **reusable components**:

- All content sections (`about`, `projects`, etc.) are stored in `_includes/`.
- You can re-order or swap sections by editing `index.md`.
- Layouts are defined in `_layouts/` and shared across pages for consistency.
- This keeps your portfolio **scalable**, **organized**, and **easy to maintain**.

Example of including a section in `index.md`:
```liquid
{% include about.md %}
{% include projects.md %}
```

---

## 🛠 Local Development

### 📦 Prerequisites

- **Docker** (recommended for isolated builds)
- OR local install: Ruby + Bundler

### 🐳 Docker Workflow

```bash
docker-compose up
```

Visit your local site at: [http://localhost:4000](http://localhost:4000)

### 💎 Jekyll (Manual)

```bash
bundle install
bundle exec jekyll serve
```

---

## ⚙️ Configuration Guide

Customize `_config.yml`:

```yaml
title: Taj Islam
description: Full Stack Developer Portfolio
url: "https://taj54.github.io"
baseurl: ""  # For GitHub Pages (leave blank)
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

Also update:
- Social links
- Author info
- SEO meta settings

---

## ✍️ Content Editing

- `index.md` – Controls homepage layout (via includes)
- `_includes/` – Add or update content blocks
- `_posts/` – Add blog posts in `YYYY-MM-DD-title.md` format
- `privacy/` – Add `policy.md` or other legal content

---

## 📄 Deployment (GitHub Pages)

1. Push to `main` or `gh-pages` branch
2. Enable GitHub Pages in repo settings
3. Set source to root or `/docs` (if using)

📅 No extra setup needed for Docker or Ruby on deploy!

---

## 📄 License

Licensed under the [MIT License](LICENSE)  
Made with ❤️ by [Taj](https://github.com/taj54)

---

## 🙌 Built With

- [Jekyll](https://jekyllrb.com)
- [GitHub Pages](https://pages.github.com)
- [Docker](https://www.docker.com)

