# XRP Scanner — Single Render URL

This project is configured as a single Render Web Service.

The Flask backend serves:
- `/` — frontend
- `/css/...` — frontend CSS
- `/js/...` — frontend JavaScript
- `/api/...` — backend API
- `/explorer` — frontend route

The browser uses `/api` as a same-origin API path, so no localhost URL is used in production.

Render:
- Build Command: `pip install -r requirements.txt`
- Start Command: `./run1.sh`

After deployment, use only the Render URL, for example:
`https://xrp-scanner.onrender.com`
