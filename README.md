---
title: n8n_02
emoji: 🔥
colorFrom: green
colorTo: red
sdk: docker
pinned: false
---


n8n 是一个强大的开源自动化工具，本项目通过 Docker 方式将 n8n 部署在 Huggingface Spaces 上，实现个人云端自动化平台。

# n8n on Huggingface Spaces

<div align="center">
  <img src="https://n8n.io/images/n8n-logo.png" alt="n8n logo" width="120" />
  <img src="https://huggingface.co/front/assets/huggingface_logo-noborder.svg" alt="Huggingface logo" width="120" style="margin-left:40px;"/>
</div>

---

## 中文说明

### 简介
n8n 是一个强大的开源自动化工具，本项目通过 Docker 方式将 n8n 部署在 Huggingface Spaces 上，实现个人云端自动化平台。

### 项目简介
本项目基于官方 n8n Docker 镜像，适配 Huggingface Spaces 的部署环境。你可以在 Huggingface Spaces 上一键运行属于自己的 n8n 服务，随时随地访问和管理自动化流程。

### 部署方法
1. Fork 或上传本项目到你的 Huggingface Space
2. 选择 Space 类型为 `Docker`
3. Space 会自动根据 `Dockerfile` 构建并启动 n8n 服务
4. 构建完成后，访问 Space 提供的 Web 界面（端口已适配为 7860）

<div align="center">
  <img src="https://docs.n8n.io/images/ui/workflow-editor.png" alt="n8n workflow editor" width="500" />
</div>

#### 重要说明
- 默认端口已由 n8n 的 5678 改为 7860，兼容 Huggingface Spaces 的 Web 服务要求
- 数据持久化目录为 `/home/node/.n8n`，可在 Space 设置中配置持久化存储
- 如需自定义 webhook 地址，可设置 `WEBHOOK_URL` 环境变量

### 主要环境变量

| 变量名 | 说明 | 默认值 |
| ------ | ---- | ------ |
| N8N_HOST | 监听地址 | 0.0.0.0 |
| N8N_PORT | 服务端口 | 7860 |
| N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS | 权限修复 | true |
| WEBHOOK_URL | 外部 webhook 地址 | 空 |
| N8N_RUNNERS_ENABLED | 启用 task runners | true |

### 数据持久化
n8n 的所有数据（如 workflow、凭据等）默认存储在 `/home/node/.n8n` 目录。建议在 Huggingface Space 设置中启用持久化存储，避免数据丢失。

### 项目优点
- **零运维**：无需服务器，直接在 Huggingface Spaces 云端运行
- **一键部署**：只需上传或 Fork 即可自动构建
- **安全隔离**：每个 Space 独立运行，数据互不干扰
- **开源可定制**：可根据需求修改 Dockerfile 或 n8n 配置
- **支持 Webhook 与自动化**：适合个人、团队的自动化需求

### 参考
- [n8n 官方文档](https://docs.n8n.io/)
- [Huggingface Spaces Docker 配置参考](https://huggingface.co/docs/hub/spaces-config-reference)

---

## English Section

### Introduction
n8n is a powerful open-source workflow automation tool. This project enables you to deploy n8n on Huggingface Spaces using Docker, so you can run your own cloud-based automation platform easily.

### Project Overview
This project is based on the official n8n Docker image and is adapted for Huggingface Spaces. You can run your own n8n service on Huggingface Spaces with one click, and manage your workflows anytime, anywhere.

### Deployment Steps
1. Fork or upload this repo to your Huggingface Space
2. Select Space type as `Docker`
3. The Space will automatically build and start n8n using the `Dockerfile`
4. After build, access the web UI via the Space URL (port 7860)

<div align="center">
  <img src="https://docs.n8n.io/images/ui/workflow-editor.png" alt="n8n workflow editor" width="500" />
</div>

#### Notes
- Default port changed from 5678 to 7860 for Huggingface Spaces compatibility
- Data is stored in `/home/node/.n8n`, enable persistent storage in Space settings
- Set `WEBHOOK_URL` env variable to customize webhook address

### Main Environment Variables

| Name | Description | Default |
| ---- | ----------- | ------- |
| N8N_HOST | Listen address | 0.0.0.0 |
| N8N_PORT | Service port | 7860 |
| N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS | Permission fix | true |
| WEBHOOK_URL | External webhook URL | (empty) |
| N8N_RUNNERS_ENABLED | Enable task runners | true |

### Data Persistence
All n8n data (workflows, credentials, etc.) are stored in `/home/node/.n8n`. It is recommended to enable persistent storage in your Huggingface Space to avoid data loss.

### Advantages
- **Zero maintenance**: No server needed, runs in the cloud
- **One-click deployment**: Just upload or fork to build automatically
- **Secure isolation**: Each Space runs independently
- **Open-source & customizable**: Modify Dockerfile or n8n config as needed
- **Webhook & automation support**: Perfect for individuals and teams

### References
- [n8n Docs](https://docs.n8n.io/)
- [Huggingface Spaces Docker Reference](https://huggingface.co/docs/hub/spaces-config-reference)