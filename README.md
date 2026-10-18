# NovaMeet - AI-Powered Meeting Assistant & Note Taker

NovaMeet is an intelligent, open-source meeting assistant desktop application built with Electron and React. It records meetings, transcribes audio, produces structured summaries and action items using AI, and can optionally sync notes directly to Notion.

## Features

- **Audio Capture & Recording**: Record system audio and microphone seamlessly.
- **AI Speech-to-Text**: Support for Google Cloud STT, AssemblyAI, Groq Whisper, and Sarvam AI.
- **Smart Note Generation**: Automatic meeting minutes, summaries, decisions, and action items powered by Google Gemini, Groq, or Anthropic Claude.
- **Notion Integration**: Automatically sync structured notes directly into your Notion workspace.
- **Meeting Detection & Overlay**: Native meeting detection and minimalist on-screen floating overlay.
- **Export Options**: Export meeting notes to clean Markdown and PDF.

## Prerequisites

- [Node.js](https://nodejs.org/) (v20+ or v22 LTS recommended)
- [pnpm](https://pnpm.io/) (`npm install -g pnpm`)
- [FFmpeg](https://ffmpeg.org/) (downloaded automatically or via `pnpm run fetch-ffmpeg`)

## Getting Started

### 1. Clone & Install Dependencies

```bash
git clone <your-repository-url>
cd novameet
pnpm install
```

### 2. Configure Environment Variables

Copy `.env.example` to `.env`:

```bash
cp .env.example .env
```

Add your API keys to `.env` or configure them within the app settings:
- Gemini API key (`GEMINI_API_KEY`)
- STT provider keys (Google STT, AssemblyAI, Groq, or Sarvam AI)
- Notion API key & Database ID (optional)

### 3. Fetch FFmpeg Binaries

Ensure local FFmpeg binaries are downloaded:

```bash
pnpm run fetch-ffmpeg
```

### 4. Run in Development Mode

Start the Vite renderer dev server and Electron desktop app:

```bash
pnpm run dev
```

## Build

To package NovaMeet for production:

```bash
pnpm run build
```

The installer will be generated in `dist/desktop/`.

## License

MIT
