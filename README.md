# DSH Tray

[Download](https://github.com/GitRuozhi/dsh-tray/releases/latest)

A minimal DeepSeek Harness Windows tray program, the most basic Windows program experience, unlike other heavyweight desktop clients. You can:

- Double-click the `.exe` or a shortcut to open DeepSeek Harness directly
- Pin DeepSeek Harness to the Start menu / Start screen
- See the DeepSeek Harness status in the Windows tray
- Control the DeepSeek Harness backend from the tray
- Double-click the tray icon to open the DeepSeek Harness frontend

Requires [Node.js](https://nodejs.org/) `^22.19` or `>=24` on PATH.

Each start runs `npx @deepseek-ai/dsh web`, so DeepSeek Harness follows npm `latest` on its own. The tray does not update itself.

## v0.2

DeepSeek Harness 0.1.2+ prints a one-process launch token and requires that URL to open the Web UI. Older tray builds opened `http://127.0.0.1:3080` without the token, so the page returned 401.

This build starts `npx -y @deepseek-ai/dsh web --no-open`, reads the `dsh web: http://127.0.0.1:3080/?token=…` line, and opens that URL. `-y` is for the hidden process; `--no-open` lets the tray open the browser.

If your DeepSeek Harness startup config differs from mine, you can let DSH reconfigure and compile it for you.

Compile:

```bat
compile.cmd
```

---

# DSH Tray

[下载](https://github.com/GitRuozhi/dsh-tray/releases/latest)

极简的 DeepSeek Harness Windows 托盘程序，提供最基本的 Windows 程序体验，没有其他桌面客户端那样厚重。您可以：

- 双击 `.exe` 或快捷方式，直接打开 DeepSeek Harness
- 将 DeepSeek Harness 加入开始菜单 / 开始屏幕
- 在 Windows 托盘显示 DeepSeek Harness 运行状态
- 在托盘控制 DeepSeek Harness 后端
- 双击托盘图标，打开 DeepSeek Harness 前端

需要已加入 PATH 的 [Node.js](https://nodejs.org/) `^22.19` 或 `>=24`。

每次启动都走 `npx @deepseek-ai/dsh web`，DeepSeek Harness 自己跟 npm `latest`。托盘不会更新自己。

## v0.2

DeepSeek Harness 0.1.2 起会打印一次性进程启动 token，必须用这条 URL 打开 Web UI。旧版托盘只打开 `http://127.0.0.1:3080`，页面会 401。

本版本启动 `npx -y @deepseek-ai/dsh web --no-open`，捕获 `dsh web: http://127.0.0.1:3080/?token=…` 再打开前端。`-y` 给隐藏进程，`--no-open` 让托盘去开浏览器。

如果您的 DeepSeek Harness 启动配置与我不同，您可以让 DSH 为您重新配置并编译。

编译：

```bat
compile.cmd
```
