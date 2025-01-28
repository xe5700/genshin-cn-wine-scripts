# Genshin Impact Wine 启动指南

本指南将帮助你使用 `genshin-cn-wine-scripts` 项目在 Wine 环境下启动《原神》。我们将使用 `firejail` 和 `mosdns v4` 来增强安全性和网络性能，并通过 `genshin.yaml` 配置文件来管理启动参数。此外，我们还会使用帧率解锁工具来提升游戏体验。

## 准备工作

在开始之前，请确保你已经完成以下准备工作：

1. **安装必要的工具**：
   - 安装 `firejail` 和 `mosdns v4` 到你的系统上。
   - 自行寻找并下载帧率解锁工具。

2. **获取 `genshin-cn-wine-scripts` 项目**：
   - 克隆或下载 `genshin-cn-wine-scripts` 项目到本地。

3. **准备 Wine 环境**：
   - 确保你已经有一个可用的 Wine 环境，并且已经安装了《原神》。

## 配置步骤

### 1. 复制 `drive_c` 目录
将 `drive_c` 目录复制到《原神》的 Wine 环境文件夹中。这个目录包含了必要的 Wine 配置和文件。

### 2. 修改 `genshin.yaml` 配置文件
打开 `genshin.yaml` 文件，根据你的系统环境和需求进行适当的修改。这个文件包含了mosdns劫持服务器的各种参数。

### 3. 添加 `firejail` 启动参数
在启动 Wine 时，添加以下前缀参数以使用 `firejail` 和自定义 DNS 设置：

```bash
firejail --noprofile --dns=127.25.25.1
```

### 4. 使用 `genshin144.bat` 作为可执行文件
将 `genshin144.bat` 作为 Wine 启动的可执行文件。这个脚本会自动处理一些必要的配置，如添加 hosts 条目以阻止检测，并在进入游戏后自动解除阻止。

### 5. 启动mosdns
使用genshin.yaml 启动mosdns以修改原神的解析数据

### 6. 原神，启动！
使用你的wine管理器或者命令直接启动游戏，lutris可以添加`tools.sh`作为维护脚本，可以在登录完成后，阻止dns解析，防止在游戏时上传数据。