# 🛠️ Personal Shell Scripts & Automation Suite

![Bash](https://img.shields.io/badge/Language-Bash%20%2F%20Shell-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![OS](https://img.shields.io/badge/OS-Linux%20%7C%20macOS-0078D4?style=for-the-badge&logo=linux&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue.style=for-the-badge)

A curated collection of personal shell scripts, automation utilities, and system administration workflows designed to streamline daily tasks, text processing, and scheduled cron operations.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Directory Structure](#-directory-structure)
- [Included Scripts](#-included-scripts)
- [Prerequisites & Permissions](#-prerequisites--permissions)
- [Installation & Quick Start](#-installation--quick-start)
- [Usage Examples](#-usage-examples)
- [Crontab Integration](#-crontab-integration)
- [Contributing](#-contributing)
- [License](#-license)

---

## 💡 Overview

This repository acts as a central storehouse for shell scripts used across personal devices and servers. Instead of rewriting utility commands, string operations, or maintenance tasks, these scripts provide quick, reliable execution for everyday administrative workflows.

---

## 📂 Directory Structure

```text
.
├── README.md
├── sys-utils/
│   ├── system_cleanup.sh
│   └── process_monitor.sh
├── text-processing/
│   ├── count_letters.sh
│   └── string_manipulation.sh
└── cron-jobs/
    ├── daily_backup.sh
    └── crontab_manager.sh
```

---

## 📜 Included Scripts

| Category | Script | Description |
| :--- | :--- | :--- |
| **Text Processing** | `count_letters.sh` | Counts occurrences of specific characters/substrings within text input. |
| **Text Processing** | `string_manipulation.sh` | Performs search-and-replace, case transformations, and regex formatting. |
| **Cron Jobs** | `crontab_manager.sh` | Helper script to safely append, back up, and validate active user cron jobs. |
| **Cron Jobs** | `daily_backup.sh` | Automated tarball backup script optimized for cron execution. |
| **System Utilities** | `system_cleanup.sh` | Clears temp directories, logs, and package caches to free disk space. |
| **System Utilities** | `process_monitor.sh` | Checks system load and alerts on excessive resource usage. |

---

## 🔑 Prerequisites & Permissions

Before running any script, ensure:
1. You are operating in a **POSIX-compliant shell** (`bash`, `zsh`).
2. Scripts have **executable permissions**.

### Grant Executable Permission
To make a script executable, run:

```bash
chmod +x path/to/script.sh
```

To make **all** scripts in the repository executable at once:

```bash
chmod +x **/*.sh
```

---

## 🚀 Installation & Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/shell-scripts.git
   cd shell-scripts
   ```

2. **Grant execution rights:**
   ```bash
   chmod +x text-processing/*.sh sys-utils/*.sh cron-jobs/*.sh
   ```

3. **(Optional) Add to System PATH:**
   To run these scripts from anywhere without typing full paths, add the repository directory to your `~/.bashrc` or `~/.zshrc`:
   ```bash
   export PATH="$HOME/shell-scripts/text-processing:$HOME/shell-scripts/sys-utils:$PATH"
   ```

---

## 🧪 Usage Examples

### 1. Count Specific Letters in Input
```bash
./text-processing/count_letters.sh -s "mississippi" -c "s"
# Output: The letter 's' appears 4 times.
```

### 2. Filter Numbers (FizzBuzz-style logic)
```bash
./text-processing/string_manipulation.sh --range 1..100
```

### 3. Run System Cleanup
```bash
./sys-utils/system_cleanup.sh --dry-run
```

---

## ⏰ Crontab Integration

To automate tasks, reference scripts directly inside your crontab (`crontab -e`).

### Example Cron Entries

```cron
# Run daily system cleanup at 2:30 AM
30 2 * * * /bin/bash /path/to/shell-scripts/sys-utils/system_cleanup.sh >> /var/log/sys_cleanup.log 2>&1

# Run weekly backup every Monday at Midnight
0 0 * * 1 /bin/bash /path/to/shell-scripts/cron-jobs/daily_backup.sh >> /var/log/cron_backup.log 2>&1
```

> **Note:** Always use absolute paths (e.g., `/bin/bash` and `/home/user/...`) inside cron jobs since cron runs with a minimal environment.

---

## 🤝 Contributing

Contributions, bug reports, and improvements are welcome!

1. **Fork** the repository.
2. **Create** a feature branch (`git checkout -b feature/NewScript`).
3. **Commit** your changes (`git commit -m 'Add new utility script'`).
4. **Push** to the branch (`git push origin feature/NewScript`).
5. Open a **Pull Request**.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
