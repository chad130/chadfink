# Hugo Blog Starter (Fast + Simple + Modern)

A clean, lightweight Hugo blog that deploys automatically to GitHub Pages.

## Why this setup

- **Fast:** static HTML from Hugo, minimal CSS, no JS framework.
- **Simple:** one command to run locally, one command to create a post.
- **Modern:** responsive design, clean typography, dark gradient UI.
- **Easy hosting:** GitHub Actions deploys to GitHub Pages on every push to `main`.

## 1) First-time setup

1. Create a new GitHub repo and push this project.
2. In GitHub: **Settings → Pages → Build and deployment**
   - Source: **GitHub Actions**
3. Update `config.toml` before first deploy.

### `config.toml` fields you should edit

| Field | What it controls | Example value |
| --- | --- | --- |
| `baseURL` | The public URL where your site is hosted. This must match your GitHub Pages URL (or custom domain) or links/assets can break. | Project pages: `https://YOUR_GITHUB_USERNAME.github.io/YOUR_REPO_NAME/` |
| `title` | The site name shown in the header and browser title. | `title = "Chad's Notes"` |
| `params.author` | Author name shown in the footer. | `author = "Chad Fink"` |
| `params.description` | Homepage subtitle and default SEO description. | `description = "Build logs, ideas, and experiments."` |

#### `baseURL` quick guide

- **Project site repo** (`username/repo`):
  - `baseURL = "https://username.github.io/repo/"`
- **User/org site repo** (`username.github.io`):
  - `baseURL = "https://username.github.io/"`
- **Custom domain** (for example `blog.example.com`):
  - `baseURL = "https://blog.example.com/"`
  - also add `static/CNAME` with `blog.example.com`

## 2) Run locally

Install Hugo Extended, then:

```bash
hugo server -D
```

Open http://localhost:1313

## 3) Add a new post (Obsidian-friendly)

If you already write in Obsidian, you can **just copy your `.md` file** into:

```text
content/posts/
```

That's it — no script required.

### Notes for best results with copied files

- File name becomes the URL slug (`My Note.md` -> `/posts/my-note/`).
- If your note has YAML front matter (`title`, `date`, `tags`), Hugo will use it.
- If your note has no `date`, Hugo will fall back to filename date (if present) or file modified time.
- If your note has no `title`, Hugo will use a title based on the filename.

## 4) Optional command-based post creation

If you want generated front matter automatically:

```bash
./scripts/new-post.sh "My new post"
```

Then write your post, set `draft: false`, and push.

## 5) Typical writing workflow (Obsidian)

```bash
cp ~/ObsidianVault/Blog/My\ New\ Post.md content/posts/
hugo server -D
# review locally
git add .
git commit -m "Add new post"
git push
```

## 6) Optional: custom domain

If you use a custom domain, add `static/CNAME` with your domain name.

---

Happy publishing ✨
