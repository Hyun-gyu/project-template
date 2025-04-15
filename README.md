# Create Project Template

A clean, reusable template for setting up Docker-based ROS (Noetic) projects.

---

## 🔧 How to Use

### 1. Clone This Template (Once)

```bash
git clone https://github.com/Hyun-gyu/project-template.git ~/project_templates/ros_docker_template
```

---

### 2. Create a New Project

Use the helper script to scaffold a new project:

```bash
cd <where-you-want-your-project>
path/to/the/create_ros_project.sh ./my_project_name
```

---

### 3. Build and Run the Container

```bash
cd my_project_name/docker
./start.sh
```

---

### 4. Enter the Container

```bash
docker exec -it my_project_name /bin/bash
```

> The container name is automatically based on your project name.

---

## 📁 Template Structure

```
project_template/
├── docker/
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── start.sh
├── scripts/
│   ├── git_push.sh
│   ├── setup_gitignore.sh
│   └── update_submodule.sh
├── .env
├── .gitignore_template
├── README.md
```

---

## 🧐 Tip

- You can reuse this template for as many projects as you like.
- Just give each project a different folder name when you run `create_ros_project.sh`.

---

## 📜 License

MIT License

