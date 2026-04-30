# 🐍 VenoScan — AI‑Powered Snake Classification
Objective: Developed an intelligent system to classify snakes as venomous or non‑venomous using image recognition, aimed at enhancing safety and awareness in real‑time scenarios.

Dataset Preparation: Curated and preprocessed snake image datasets; applied augmentation techniques (rotation, scaling, flipping) to improve model robustness.

## Model Architecture:

Implemented a Convolutional Neural Network (CNN) using TensorFlow/Keras.

Layers included convolution, pooling, dropout, and dense layers for feature extraction and classification.

Final softmax layer outputs binary categories (venomous / non‑venomous).

Backend Integration: Built a Flask web application to serve predictions through a user‑friendly interface.

## Deployment:

Configured Dockerfile for containerized deployment.

Managed large .h5 model files using Git LFS.

Deployed on Render/Google Cloud for public access with automatic HTTPS.

## Evaluation:

Achieved high accuracy on test data with metrics including precision, recall, F1‑score, and confusion matrix.

Visualized training/validation curves and classification results using Matplotlib/Seaborn.

UI/UX: Designed a simple front‑end with options for image and video input, enabling real‑time classification demos.

Code Quality: Delivered modular, reproducible code with step‑by‑step explanations for recruiter and developer clarity.

# ⚙️ Tech Stack
Languages: Python

Libraries: TensorFlow, Keras, NumPy, Pandas, Matplotlib, Seaborn

Frameworks/Tools: Flask, Docker, GitHub, Git LFS

Environment: Jupyter Notebook, VS Code
