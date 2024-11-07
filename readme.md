# ABOUT PROJECT BUNDLE

This bundle is created for fast Wordpress site configure and deploy. It is based on mix of Node.js scripts, Gulp & Webpack modules, that help to:

- compile SCSS/JS for different environments (development|production)
- compress | resize static images and convert them to WebP
- convert TTF fonts to WOFF2
- create/update/backup of DB between local, test & prod servers
- deploy of full app or theme (selective) between local, test & prod servers
  ... more features in process

# FOLDER STRUCTURE

- /app/ - core Wordpress folder
- /.gulp/ - all gulp tasks
- /src/ - source files folder:
  -- /scss - scss files
  -- /js - js files
  -- /img - images to optimize|convert
  -- /fonts - fonts to convert

# SYSTEM REQUIREMENTS:

- Local web-server running (Openserver, WAMP, LAMP etc.)
- PHP >= 8.0
- Composer
- MySQL >= 5.7
- NODE.js LTS (latest version) with addons (including Python)
- WP-CLI installed (uses `wp` as shortcut, included in %PATH%)

# INSTALL REQUIRED NODE MODULES & WP-CLI

-- npm & yarn (global)
-- gulp-cli `npm i -g gulp-cli`
(if you've previously installed Gulp globally, run `npm rm --global gulp` before following these instructions.)

-- create folder `wp-cli` on your perefered drive (c: i.e.)
-- open terminal there and run `curl -L https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output wp-cli.phar`
(or download directly from `https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar `)
-- create `wp.bat` file in folder with this content:
@ECHO OFF
php "c:\wp-cli\wp-cli.phar" %\*

# SYSTEM PATH CONFIG (add this to `SYSTEM PATH`, if not configured):

- NodeJS path: `%AppData%\npm\node_modules`
- local node_modules: `.\node_modules\.bin`
- PHP executive (i.e. `X:\Openserver\modules\php\PHP_8.1`)
- DB executive (i.e. `X:\Openserver\modules\database\MySQL-5.7\bin`)
- WP-CLI (i.e. `c:\wp-cli`)

  (restart user session to apply changes)

# APP INSTALL & SETUP:

1. Download repository to your projects folder and name it {_projectName_}.loc due to environment check

2. Restart your web-server to refresh local domains list

3. Setup `config.json` & `.env.local`

4. Open terminal in project root and run `yarn create-app`

## SSH (optional)

- Create SSH key in your \.ssh folder, name it {_projectName_}\_rsa,
- Send it to test | production server host

# THEME DEVELOPMENT

- run `yarn start` (dev compile & start watch)
- run `yarn dev` (watch)
- run `yarn build` (build project for production)
- find more scripts in gulpfile.js & .gulp/readme.md

# DEPLOY TO TEST/PRODUCTION ENVIRONMENT

- setup `.env.staging` & `.env.production`
