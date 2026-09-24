# Personal profile site

A small, custom Jekyll site. Content is Markdown and YAML; styling is plain CSS. It has no analytics, external font dependencies, or client-side framework.

## Preview locally

From this directory:

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
```

Open http://127.0.0.1:4000. The server stays local to this computer.

For the workspace-local Ruby environment prepared during this task, run:

```sh
bash scripts/preview.sh
```

## Edit

- `_data/profile.yml`: name, affiliation, portrait, and contact links.
- `index.md`: the main page, using Markdown.
- `_config.yml`: page title, description, and public URL.
- `assets/css/style.css`: layout, typography, and colors.
- `assets/css/facelift.css`: the navy and slate styling overlay. Remove its stylesheet link in the layout to restore the original appearance.
- `_layouts/default.html`: shared page structure.

Jekyll watches content changes. Restart the preview after editing `_config.yml`.

## Build

```sh
bundle exec jekyll build
```

The generated website appears in `_site/`. That folder and local dependencies are ignored by Git.

## GitHub Pages

Repository: https://github.com/4l3xv33/website

Site: https://alexveerasammy.com

In the repository's **Settings > Pages**, use **Deploy from a branch**, branch **main**, folder **/(root)**. GitHub builds the Jekyll source when changes are pushed. Set the custom domain to `alexveerasammy.com`; the `CNAME` file preserves that hostname in the source. Enable **Enforce HTTPS** once GitHub has issued the certificate.

The production configuration has `draft: false` in `_data/profile.yml`, which hides the local-preview banner.
