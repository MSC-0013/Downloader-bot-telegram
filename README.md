# 📦 Downloader Bot Telegram | `@Chana_bia_bot`

A powerful Telegram bot to download videos, PDFs, and images from platforms like YouTube, ClassPlus, VisionIAS, Brightcove, Adda247, and more — using `.txt` input files.

> 🚀 Live: [@Chana_bia_bot](https://t.me/Chana_bia_bot)  
> 🌐 Hosted on: [Render.com](https://render.com)

---

## ⚙️ Features

- 🔗 Accepts `.txt` files with multiple URLs
- 📺 Supports YouTube, ClassPlus, Testbook, Brightcove, Adda247
- 🔐 Handles encrypted videos (DRM) with `mp4decrypt`
- 🖼️ Custom thumbnail & caption support
- 🧾 Downloads PDFs & images
- 🔄 Batch file downloader with progress and resolution selection
- 🎬 Works well for education platforms and batch downloads

---

## 📁 File Structure

| File           | Purpose                               |
|----------------|----------------------------------------|
| `main.py`      | Telegram bot logic (Pyrogram + commands) |
| `app.py`       | Flask app for Render health check      |
| `helper.py`    | Download/decryption helpers            |
| `logger.py`    | Logging setup                          |
| `p_bar.py`     | Progress bar visual                    |
| `Dockerfile`   | Dockerized deployment                  |
| `requirements.txt` | Python dependencies                |
| `.env.example` | Template for environment variables     |

---

## 🌐 Deployment on Render

### 📦 Step-by-Step:

1. **Fork or clone** this repository
2. Go to [Render](https://render.com/)
3. Click “New Web Service” → Connect your GitHub repo
4. **Select this repo**
5. Render will detect the `Dockerfile` automatically
6. Add the following environment variables:

| Variable Name | Description             |
|---------------|-------------------------|
| `API_ID`      | Telegram API ID         |
| `API_HASH`    | Telegram API Hash       |
| `BOT_TOKEN`   | Your Bot Token from [@BotFather](https://t.me/BotFather) |

7. Click **"Deploy Web Service"**
8. After deployment, test at: `https://your-service-name.onrender.com`
9. Use `/start` in the bot to begin

---

## 💬 Bot Commands

- `/start` – Starts the bot
- `/txt` – Upload a `.txt` file and begin processing
- `/stop` – Stop the current session

---

## 🧪 Example `.env.example`

```env
API_ID=your_api_id_here
API_HASH=your_api_hash_here
BOT_TOKEN=your_bot_token_here
