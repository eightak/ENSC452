# ENSC 452 — ZedBoard Ethernet Communication Project

A hardware–software project developed for **ENSC 452** that uses a **ZedBoard** and a **Python client** to exchange information over Ethernet. The project is built and run using **AMD/Xilinx Vitis** and uses the **LwIP (Lightweight IP)** echo server example as the starting point for its Ethernet configuration.

## Overview

This repository contains the hardware and software resources used to run a ZedBoard-based application alongside a Python client on a host computer. The client provides commands to send time and weather information for Simon Fraser University (SFU) and to listen for data from the board.

### Key components

- **ZedBoard:** Runs the embedded application.
- **Vitis:** Builds and launches the embedded software.
- **LwIP:** Provides the baseline Ethernet networking implementation.
- **Python client:** Provides a command-line interface for communication with the board.

## Repository structure

```text
ENSC452/
├── hw/                    # Hardware project resources
├── sw/                    # Embedded software project resources
├── scripts/               # Host-side scripts, including client.py
├── lwip_echo_server.zip   # Reference LwIP echo server source
└── README.md
```

## Prerequisites

Before running the project, you will need:

- A ZedBoard development board and its required power and programming connections
- A host computer with AMD/Xilinx Vitis installed
- Python installed on the host computer
- An Ethernet connection configured for communication between the host and the board
- The project-specific hardware and software files from this repository

> **Note:** Vitis version, Python dependencies, Ethernet IP settings, and board connection details are not specified in the original project instructions. Confirm these against the project source and your local setup.

## Getting started

### 1. Obtain the repository

```bash
git clone https://github.com/eightak/ENSC452.git
cd ENSC452
```

### 2. Build the embedded application

Open the project in **Vitis** and build the application using the hardware platform and software sources included in the repository.

### 3. Run the application

Launch the built application on the ZedBoard from Vitis.

### 4. Download the required resources

Use the project's `dow.tcl` script to download the required resources to the board. **Update the file paths in `dow.tcl` to match your local environment before running it.**

The original project instructions list running the application and downloading resources as separate steps. Follow the ordering required by your Vitis debugging configuration.

### 5. Start the Python client

In a terminal, navigate to the `scripts` directory and run:

```bash
cd scripts
python client.py
```

Make sure the board is running and the Ethernet connection is configured before attempting communication.

## Python client commands

The Python client supports the following commands:

| Command | Description |
| --- | --- |
| `weather` | Sends weather information for SFU to the ZedBoard. |
| `time` | Sends time information for SFU to the ZedBoard. |
| `listen` | Waits for incoming data from the ZedBoard. |
| `quit` | Exits the Python client. |

Enter a command in the client terminal after starting `client.py`.

## Ethernet implementation

The project uses the **LwIP Echo Server**, an example supplied with the Xilinx SDK toolchain, as a baseline for Ethernet configuration. The reference source is included in [`lwip_echo_server.zip`](lwip_echo_server.zip).

## Troubleshooting

**The application does not build in Vitis**

- Check that the hardware platform and software project are correctly imported.
- Check that the installed toolchain supports the project's exported hardware configuration.

**The download script cannot find files**

- Update the paths referenced by `dow.tcl` to match your machine.

**The Python client cannot communicate with the ZedBoard**

- Verify that the board application is running.
- Confirm the Ethernet cable and IP/network settings for both devices.
- Check that the client is configured to connect to the correct board address and port.

## Background

This repository was developed as part of **ENSC 452** coursework and combines embedded software development, FPGA-board integration, and Ethernet communication.

## Acknowledgments

- **AMD/Xilinx** for Vitis and the LwIP echo server example.
- **Simon Fraser University** for ENSC 452.
