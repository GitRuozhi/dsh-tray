# DSH Tray

[Download](https://github.com/GitRuozhi/dsh-tray/releases/latest)

A minimal DeepSeek Harness Windows tray program, the most basic Windows program experience, unlike other heavyweight desktop clients. You can:

- Double-click the `.exe` or a shortcut to open DeepSeek Harness directly
- Pin DeepSeek Harness to the Start menu / Start screen
- See the DeepSeek Harness status in the Windows tray
- Control the DeepSeek Harness backend from the tray
- Double-click the tray icon to open the DeepSeek Harness frontend
- Let the tray keep itself and DeepSeek Harness up to date

Requires [Node.js](https://nodejs.org/) `^22.19` or `>=24` on PATH.

## Updates (v0.2)

DeepSeek Harness 0.1.2+ prints a one-process launch token and requires that URL to open the Web UI. Older tray builds opened `http://127.0.0.1:3080` without the token, so the page returned 401.

This build:

- Starts `npx -y @deepseek-ai/dsh@latest -- web --no-open` so each backend start pulls npm `latest`, and the tray (not a hidden host process) opens the browser
- Reads the `dsh web: http://127.0.0.1:3080/?token=…` line and opens that URL
- Checks GitHub Releases on launch and every few hours, then replaces `dsh-tray.exe` in place when a newer tray build exists

Right-click the tray icon → **检查更新** to check immediately. Restarting the backend from the tray is enough to refresh DeepSeek Harness itself.

If your DeepSeek Harness startup config differs from mine, you can let DSH reconfigure and compile it for you.

v0.1.0 cannot update itself. Download [v0.2](https://github.com/GitRuozhi/dsh-tray/releases/latest) once; later tray versions replace the exe automatically.

Compile:

```bat
compile.cmd
```

Publish a new tray version by pushing a `v*` tag; GitHub Actions compiles `dsh-tray.exe` and attaches it to the release.

---

# DSH Tray

[下载](https://github.com/GitRuozhi/dsh-tray/releases/latest)

极简的 DeepSeek Harness Windows 托盘程序，提供最基本的 Windows 程序体验，没有其他桌面客户端那样厚重。您可以：

- 双击 `.exe` 或快捷方式，直接打开 DeepSeek Harness
- 将 DeepSeek Harness 加入开始菜单 / 开始屏幕
- 在 Windows 托盘显示 DeepSeek Harness 运行状态
- 在托盘控制 DeepSeek Harness 后端
- 双击托盘图标，打开 DeepSeek Harness 前端
- 由托盘自动更新自身和 DeepSeek Harness

需要已加入 PATH 的 [Node.js](https://nodejs.org/) `^22.19` 或 `>=24`。

## 更新说明（v0.2）

DeepSeek Harness 0.1.2 起会打印一次性进程启动 token，必须用这条 URL 打开 Web UI。旧版托盘只打开 `http://127.0.0.1:3080`，页面会 401。

本版本会：

- 用 `npx -y @deepseek-ai/dsh@latest -- web --no-open` 启动后端：每次拉起都走 npm `latest`，并由托盘而不是隐藏进程打开浏览器
- 捕获 `dsh web: http://127.0.0.1:3080/?token=…` 再打开前端
- 启动时以及每隔数小时检查 GitHub Releases，发现新的托盘版本后就地替换 `dsh-tray.exe`

托盘右键 **检查更新** 可立即检查。在托盘里重启后端即可把 DeepSeek Harness 更新到最新 `latest`。

如果您的 DeepSeek Harness 启动配置与我不同，您可以让 DSH 为您重新配置并编译。

v0.1.0 不能自己更新。请先手动下载一次 [v0.2](https://github.com/GitRuozhi/dsh-tray/releases/latest)，之后的托盘版本会自动替换 exe。

编译：

```bat
compile.cmd
```

发布新托盘版本：推送 `v*` 标签即可。GitHub Actions 会编译 `dsh-tray.exe` 并挂到 Release 上。
