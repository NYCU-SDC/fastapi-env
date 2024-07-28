# Backend Training Program Environment

This project is designed specifically for the Backend Training Program. It aims to allow students to focus on learning FastAPI without worrying about environment setup. The project includes necessary configurations and dependencies to get started quickly and easily.

## Prerequisites

Make sure you have the following software installed on your machine:

- Docker Desktop

## Project Structure

The project is structured as follows:

- `requirements.txt`: Lists the Python dependencies required for the project.
- `Dockerfile`: Contains the instructions to build the Docker image for the FastAPI application.
- `docker-compose.yaml`: Defines the services and configurations for running the project using Docker Compose.

## Setup Instructions

1. **Clone the repository**:
    ```bash
    git clone <repository_url>
    cd <repository_directory>
    ```

2. **Build and start the application using Docker Compose**:
    ```bash
    docker-compose up --build -d
    ```

3. **Access the FastAPI application**:
    The FastAPI application will be available at `http://localhost:8080`.

## Requirements

The `requirements.txt` file includes the following dependencies:

```plaintext
fastapi>=0.111.0
pydantic>=2.7.0
uvicorn>=0.29.0
```

## Dockerfile

The `Dockerfile` sets up the environment for the FastAPI application. It includes the following key steps:

- Use an official Python base image.
- Set the working directory.
- Copy the necessary files.
- Install the required Python packages.
- Specify the command to run the FastAPI application.

## Docker Compose

The `docker-compose.yaml` file defines the services required for the application. It includes:

- The FastAPI service, built from the Dockerfile.
- Configuration for environment variables and port mappings.
- PostgreSQL database service and PGAdmin4.

## Contributing

If you wish to contribute to this project, please follow these steps:

1. Clone this repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For any questions or issues, please contact the project maintainer at [nycu1sdc@gmail.com](mailto:nycu1sdc@gmail.com).
