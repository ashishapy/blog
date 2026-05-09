# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Local development (builds to ../blog-pages/)
bundle exec jekyll serve

# Build only
bundle exec jekyll build

# Deploy to GitHub Pages (via Travis CI / manual)
bundle exec rake site:deploy
```

Jekyll builds to `../blog-pages/` (a sibling directory), not `_site/`. The destination is a separate git repo tracking the `gh-pages` branch of `ashishapy/blog`.

## Architecture

This is a Jekyll 3.x blog using the `github-pages` gem. Ruby version is pinned in `.ruby-version` (3.2.11).

**Post front matter** (required fields):
```yaml
layout: post
title: 'Post Title'
date: YYYY-MM-DD HH:MM:SS
tags: Tag1 Tag2          # space-separated; drives tag pages
categories: 'ashishapy'  # must match _config.yml `nickname`
navigation: True
disqus: true             # optional, enables comments
cover: 'assets/images/filename.jpg'  # optional hero image
```

**Custom plugins** (`_plugins/`):
- `jekyll-autgenerator.rb` — generates paginated `/author/:username/` pages from `categories` front matter
- `jekyll-catgenerator.rb` — generates paginated `/tag/:tag/` pages from `tags` front matter

**Layout hierarchy**: `default.html` is the base; `post.html`, `page.html`, `author.html`, `tag.html` extend it. Includes cover `head.html`, `navigation.html`, `disqus.html`, `analytics.html`, and pagination partials.

**Known issue**: `/_layouts/page.html` line 14 has a Liquid syntax error (`{{ include navigation.html }}` should be `{% include navigation.html %}`).

## Deployment

Travis CI (`master` branch only) runs `rake site:deploy`, which:
1. Clones the destination repo using `$GH_TOKEN`
2. Builds the site
3. Commits and force-pushes to the `gh-pages` branch of `ashishapy/blog`

The live site is at `https://blog.ashishapy.com` (Cloudflare in front of GitHub Pages).
