# Hugo Build Image

This project provides the files to build a containerized version of Hugo, allowing you to use Hugo without installing it directly on your machine.

## Features

- **Containerized Hugo**: Run Hugo in a container, avoiding the need for local installation.
- **Runtime Agnostic**: Compatible with any container runtime.
- **Easy to Use**: Simplifies the process of setting up and using Hugo.

## Usage

Instructions for building and using this image. Adjust to your container runtime.

1. **Clone the repo and build the image:**

    ```sh
    #Clone this repo and navigate to the files
    git clone https://github.com/yourusername/hugo-build-image.git
    cd hugo-build-image
    
    #Build your container image
    podman build -t hugo-build-image:latest .
    ```

2. **Run Hugo Commands:**
    ```sh
    #To create a new site in a directory with the same name
    podman run --rm -v $(pwd):/site hugo-build-image:latest new site <sitename> 
    
    #To build the content of the site directory you are currently working in
    podman run --rm -v $(pwd):/site hugo-build-image:latest 
    ```
3. **(Optional) Create Command Alias:**
    
    To simplify usage, you can create an alias in your shell configuration file.
    ```sh
    #Edit your shell config file
    nano ~/.bashrc

    #Add this line
    alias hugo="podman run --rm -v $(pwd):/site hugo-build-image:latest"
    
    #Reload your shell configuration or logout/login
    source ~/.bashrc

    #Once aliased, you can run hugo commands as if it were installed locally
    hugo new site <sitename>
    ```

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss any changes.

## Acknowledgements

- [Hugo](https://gohugo.io/) - The world’s fastest framework for building websites.
