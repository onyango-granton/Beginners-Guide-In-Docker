# ascii-art-web-dockerize

This is a continuation project of the ascii-art project that consists in creating a docker file that will be used run the project from a container.


## Getting Started

To get started with the project, download and install Go programming language using the link: https://go.dev/doc/install

## Prerequisites

Before interacting with the project, make sure that your local machine has docker installed and the docker engine is running. Use the command below to confirm that the engine is running:
```bash
docker version
```

You will know that the engine is running if you see its details listed as shown below.
![](/imgs/docker-engine.png)

## Installation

1. Clone the repository from its remote location to your local environment with the command below:
```bash
git clone https://learn.zone01kisumu.ke/git/gonyango/ascii-art-web-dockerize.git
```

2. Navigate to the project's path
```bash
cd ascii-art-web-dockerize
```

## Usage

Before running the program, the user needs to build an image of the docker file in their local machine. An image file can be built using the command below:
```bash
docker build -t [SPECIFY-IMAGE-NAME] .
```

Once an image file has been built, run the container with the command below:
```bash
docker run -p 8080:8080 [IMAGE-NAME]
```

or

```bash
docker run -d -p 8080:8080 [IMAGE-NAME]
```

- Example

1. Build an image out of the docker file using the below command:
```bash
docker build -t ascii-art-web-dockerize .
```
![](/imgs/build-image.png)

2. List the images to confirm the image with the specified name has been built using the command below:
```bash
docker images
```
![](/imgs/list-images.png)

3. You will know that the build process was succesfull if the specified name appears on the listed images. You can now run a container from the image using the below command:
```bash
docker run -p 8080:8080 ascii-art-web-dockerize
```

or

```bash
docker run -d -p 8080:8080 ascii-art-web-dockerize
```

**NOTE:** Using the second command to run a container makes the container run on detached mode. This means that the container won't stop running even if the terminal is stopped and may therefore affect perfomance of the host machine if left to run for a long time. Use the command below to view the status of your containers:
```bash
docker ps -a
```

4. If successfully running, a feedback is displayed to the user informing them that the server is successfully running at port `http://localhost:8080` as shown below.
![](/imgs/run-container.png)

From the illustrated example above, our server is running on port `:8080` and can be accessed by accessing the url `http://localhost:8080` on the web browser or clicking on the link using `CTRL + Left Click` combination.

From this point, the user can interact with the program in a variety of ways including:
- Providing input using the textarea

- Selecting their preferred banner file

- Submitting their input for processing

### Contributors
<body>
<div style="display: flex !important; justify-content: center !important;">
    <div style="margin: 10px;">
        <img src="images/enungo.png" style="border-radius: 50% !important; width: 150px !important; height: 150px; !important" alt="Granton">
        <p style="text-align: center;"><b><i>Edwin</i></b></p>
    </div>
</div>
<div style="display: flex !important; justify-content: center !important;">
    <div style="margin: 10px;">
        <img src="images/gonyango.png" style="border-radius: 50% !important; width: 150px !important; height: 150px; !important" alt="Granton">
        <p style="text-align: center;"><b><i>Granton</i></b></p>
    </div>
</div>
</body>

## Acknowledgement

- [Zone01 Kisumu](https://www.zone01kisumu.ke)
## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
