# DSH Tray 🐋

极简的 **DeepSeek Harness** Windows 托盘程序 —— 为 [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) 提供最基本的 Windows 程序体验，不同于其他厚重的 DeepSeek Harness 桌面客户端。

零依赖、单文件 exe、随开随用。

## 功能

- 🖱️ **双击即用** —— 双击 `.exe` 或快捷方式，直接打开 DeepSeek Harness（自动拉起后端 + 打开前端）
- 📌 **固定到开始菜单 / 开始屏幕** —— 它是真正的 `.exe`，可固定到开始屏幕与任务栏
- 🐋 **托盘状态** —— 在 Windows 托盘显示 DeepSeek Harness 运行状态（蓝鲸 = 运行中，灰鲸 = 已停止）
- ⚙️ **托盘控制** —— 在托盘里重启 / 关闭 DeepSeek Harness 后端
- 🖱️ **双击托盘图标** —— 打开 DeepSeek Harness 前端

## 使用

1. 下载 `dsh-tray.exe`（见 Releases）
2. 双击运行，或右键 →「固定到开始屏幕 / 固定到任务栏」
3. 右键托盘图标，菜单如下：

| 菜单项 | 说明 |
| --- | --- |
| DeepSeek Harness 正在运行 / 已停止 | 只读状态 |
| 打开 DeepSeek Harness 前端 | 浏览器打开 http://127.0.0.1:3080 |
| 重启 DeepSeek Harness 后端 | 停止并重新启动后端 |
| 关闭 DeepSeek Harness 并退出托盘 | 停止后端并退出托盘 |

- 双击托盘图标 = 打开前端
- 启动时若后端未运行会自动拉起；后端就绪后自动打开前端

## 配置

默认配置：端口 `3080`，启动命令 `npx -y @deepseek-ai/dsh web`。

如果您的 DeepSeek Harness 启动配置与我不同（端口 / 启动命令 / 是否自动拉起与自动开前端），**您可以让 DSH 为您配置** —— 修改 `dsh-tray.cs` 顶部常量后重新编译即可：

```csharp
const int Port = 3080;
const string Url = "http://127.0.0.1:3080";
const string StartCommand = "npx -y @deepseek-ai/dsh web";
const bool AutoStartOnLaunch = true;
const bool AutoOpenFrontend = true;
```

## 从源码编译

Windows + .NET Framework 4.x（Windows 10/11 自带），无需其他依赖：

```powershell
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /target:winexe /win32icon:whale.ico /r:System.Management.dll /out:dsh-tray.exe dsh-tray.cs
```

## 说明

- 鲸鱼图标取自官方 favicon，运行时用 GDI+ 现画（蓝 = 运行，灰 = 停止）；exe 图标编译时内嵌。
- 本工具是社区项目，与 DeepSeek 官方无关。

## License

[MIT](LICENSE)

---

## English

A minimal Windows tray app for **DeepSeek Harness** — the most basic Windows program experience, unlike other heavyweight DeepSeek Harness desktop clients. Zero dependencies, single-file exe.

- Double-click the exe / shortcut to open DeepSeek Harness
- Pin it to the Start menu / Start screen
- See backend status in the tray (blue whale = running, gray = stopped)
- Restart / stop the backend from the tray
- Double-click the tray icon to open the frontend

If your DeepSeek Harness startup config differs, you can let DSH configure it for you.
