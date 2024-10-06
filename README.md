<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lewis Rincon Castano - Portfolio</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .tabbed-content {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    .tabs {
      display: flex;
      flex-direction: column;
      border: 1px solid #ddd;
      border-radius: 8px;
      overflow: hidden;
      max-width: 250px;
      margin-right: 20px;
    }

    .tabs button {
      padding: 15px;
      background-color: #fff;
      border: none;
      text-align: left;
      width: 100%;
      cursor: pointer;
      transition: background-color 0.3s;
      font-size: 16px;
    }

    .tabs button:hover {
      background-color: #ddd;
    }

    .content {
      flex-grow: 1;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      border: 1px solid #ddd;
    }

    .content h3, .content p {
      color: #333;
    }

    .content img {
      max-width: 100%;
      height: auto;
    }

    .hidden {
      display: none;
    }
  </style>
  <script>
    function openTab(event, tabName) {
      const contents = document.getElementsByClassName('content');
      const buttons = document.getElementsByClassName('tab-button');
      for (let i = 0; i < contents.length; i++) {
        contents[i].classList.add('hidden');
      }
      for (let i = 0; i < buttons.length; i++) {
        buttons[i].classList.remove('active');
      }
      document.getElementById(tabName).classList.remove('hidden');
      event.currentTarget.classList.add('active');
    }
  </script>
</head>
<body>

<h1>Lewis Rincon Castano</h1>

<div class="tabbed-content">
  <div class="tabs">
    <button class="tab-button active" onclick="openTab(event, 'projects')">Projects</button>
    <button class="tab-button" onclick="openTab(event, 'education')">Education</button>
    <button class="tab-button" onclick="openTab(event, 'skills')">Skills</button>
    <button class="tab-button" onclick="openTab(event, 'certificates')">Certificates</button>
  </div>

  <div id="projects" class="content">
    <h3>Data Analytics Projects</h3>
    <a href="https://github.com/lericas/portfolio/blob/main/fall%202024/Image_Receipts_To_Text_Extraction_with_Claude_Model.ipynb">
      <img src="https://raw.githubusercontent.com/lericas/portfolio/refs/heads/main/images/claude_model.png" alt="Claude Model Project">
    </a>
    <p>Extracting Text of Image Receipts with LLM - Claude Model</p>
    <!-- Repeat as needed for other projects -->
  </div>

  <div id="education" class="content hidden">
    <h3>Education</h3>
    <p>
      <strong>University of Florida:</strong> Master of Science in Information Systems and Operations Management, Business Analytics track (Aug 2022 - June 2023 Expected) <br>
      <strong>University of Central Florida:</strong> Bachelor of Science in Clinical Psychology (Jan 2018 - Dec 2020)
    </p>
  </div>

  <div id="skills" class="content hidden">
    <h3>Skills</h3>
    <p>
      Data cleaning, modeling, evaluation, and project deployment. Present findings to technical and non-technical audiences. Proficient in R, Python, SQL, Excel, and Tableau.
    </p>
  </div>

  <div id="certificates" class="content hidden">
    <h3>Certificates</h3>
    <p>
      <a href="https://www.credly.com/badges/20dd9392-bf2c-47f0-bf27-a92d262c0e96?source=linked_in_profile" target="_blank">Google Data Analytics (Coursera)</a>, July 2021 <br>
      <a href="https://www.coursera.org/account/accomplishments/verify/B4C8QHZTCVGZ" target="_blank">Google Technical Support Fundamentals (Coursera)</a>, September 2018
    </p>
  </div>
</div>

</body>
</html>
