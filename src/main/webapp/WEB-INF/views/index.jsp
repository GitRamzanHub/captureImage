<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Capture Image</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 20px;
        }
        #camera-frame, #captured-frame {
            display: inline-block;
            margin: 10px;
            border: 2px solid #ccc;
            padding: 10px;
            border-radius: 8px;
        }
        video, canvas {
            width: 300px;
            height: 200px;
            border: 1px solid #000;
        }
        button {
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Capture Image</h1>
        <div id="camera-frame">
            <h3>Live Camera</h3>
            <video id="camera" autoplay></video>
            <br>
            <button id="capture-btn">Capture Image</button>
            <button id="save-btn" disabled>Save Image</button>
        </div>

        <div id="captured-frame">
            <h3>Captured Image</h3>
            <canvas id="captured-image"></canvas>
        </div>

        <script>
            const video = document.getElementById('camera');
            const canvas = document.getElementById('captured-image');
            const captureBtn = document.getElementById('capture-btn');
            const saveBtn = document.getElementById('save-btn');
            const ctx = canvas.getContext('2d');

            // Access the camera
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(stream => {
                    video.srcObject = stream;
                })
                .catch(error => {
                    alert('Unable to access the camera: ' + error.message);
                });

            // Capture the image
            captureBtn.addEventListener('click', () => {
                canvas.width = video.videoWidth;
                canvas.height = video.videoHeight;
                ctx.drawImage(video, 0, 0, canvas.width, canvas.height);

                // Enable the save button
                saveBtn.disabled = false;
            });

            // Save the image
            saveBtn.addEventListener('click', () => {
                const imageURL = canvas.toDataURL('image/png'); // Convert canvas to Data URL
                const link = document.createElement('a'); // Create a link element
                link.href = imageURL; // Set the href to the Data URL
                link.download = 'captured-image.png'; // Set the download attribute
                link.click(); // Trigger the download
            });
        </script>
</body>
</html>
