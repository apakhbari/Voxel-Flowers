# Voxel Flowers 🌸

A containerized fork of Voxel-Flowers mady by @Zazargari

A 3D generative art project created with JavaScript and WebGL. This guide walks you through running the project on your computer using Docker—no coding experience required!

---

## Prerequisites (Step 1)

Before you begin, install **Docker Desktop** on your computer. Docker acts like a virtual player that can run this project consistently on Mac, Windows, or Linux.

* **Download Docker Desktop:** [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
* Install it like any regular application, open it, and make sure it is running in the background.

---

## How to Run (Step 2)

### 1. Open Terminal or Command Prompt
* **Windows:** Press the `Windows Key`, type `PowerShell` or `cmd`, and press **Enter**.
* **Mac:** Press `Cmd + Space`, type `Terminal`, and press **Enter**.

### 2. Navigate to the project folder
Type `cd` followed by a space, then drag-and-drop the `Voxel-Flowers` folder directly into your terminal window, and press **Enter**:

```bash
cd /path/to/Voxel-Flowers
```

### 3. Build and Start the App
Copy and paste this command into the terminal and press **Enter**:

```bash
docker compose up -d
```

*(If you don't use Docker Compose, run these two commands instead:)*
```bash
docker build -t voxel-flowers .
docker run -d -p 8080:80 --name voxel-flowers voxel-flowers
```

---

## View the Project (Step 3)

Open any web browser (Chrome, Edge, Safari, Firefox) and navigate to:

👉 **[http://localhost:8080](http://localhost:8080)**

You should now see the 3D voxel flowers rendering on your screen!

---

## How to Stop the App

When you are done and want to shut it down:

* If you used `docker compose`:
  ```bash
  docker compose down
  ```
* If you used single commands:
  ```bash
  docker stop voxel-flowers
  docker rm voxel-flowers
  ```
* Alternatively, you can open the **Docker Desktop** app and click the trash can/stop icon next to `voxel-flowers`.