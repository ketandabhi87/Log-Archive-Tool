# 🗂️ Log Archive Tool — Bash Log Compression Utility

The **Log Archive Tool** is a simple command-line utility that helps you **compress and archive log files** on a set schedule.  
It’s perfect for cleaning up old logs while keeping a compressed copy for future reference — an essential habit for system administrators and DevOps engineers.

---

## 🌐 Project Page

🔗 [https://roadmap.sh/projects/log-archive-tool](https://roadmap.sh/projects/log-archive-tool)

---

## 📋 Features

- ✅ Accepts any log directory as an argument
- ✅ Compresses all logs into a timestamped `.tar.gz` file
- ✅ Stores archived files in a dedicated `archives/` folder
- ✅ Logs each archive operation (with date and time)
- ⚙️ Optional: Schedule it via **cron** for automatic log rotation

---

## 🧰 Requirements

This tool works on all Unix/Linux systems (Ubuntu, Debian, CentOS, RHEL, Fedora, macOS, etc.).

### Dependencies

These are standard utilities already available on most systems:
- `bash`
- `tar`
- `date`
- `mkdir`
- `echo`

If any are missing, install them using:
```bash
sudo apt install coreutils tar -y


🚀 How to Run the Project

Follow these steps to set up and run the tool.

1️⃣ Clone or Download the Repository
git clone https://github.com/ketandabhi87/Log-Archive-Tool.git
cd Log-Archive-Tool


Or download the script directly:

wget https://raw.githubusercontent.com/ketandabhi87/Log-Archive-Tool/main/log-archive.sh

2️⃣ Make the Script Executable
chmod +x log-archive.sh

3️⃣ Run the Tool

You must provide the log directory you want to archive.
The most common location for logs on Linux is /var/log.

./log-archive.sh /var/log

4️⃣ Example Output
📦 Compressing logs from '/var/log' ...
✅ Logs archived successfully: ./archives/logs_archive_20251028_162301.tar.gz
📝 Archive log updated at: ./archive_log.txt

📦 Example Files Generated

After running, you’ll see:

archives/
├── logs_archive_20251028_162301.tar.gz
archive_log.txt


Example log file contents:

2025-10-28 16:23:01 - Archived logs from '/var/log' to './archives/logs_archive_20251028_162301.tar.gz'
