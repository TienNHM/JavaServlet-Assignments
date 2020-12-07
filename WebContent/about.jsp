<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>About</title>
	<link rel="icon" type="image/png" href="images/dog-face.png"/>
	<link rel="Stylesheet" href="styles/main.css" type="text/css" />
	<link rel="Stylesheet" href="styles/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
	<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
	<script src="https://cdn.jsdelivr.net/highlight.js/latest/highlight.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/highlight.js/latest/styles/github.min.css">
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="images/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
	  </a>
	  <a class="navbar-brand" href="${pageContext.request.contextPath}/about.jsp">ABOUT</a>
  </nav>
<div>
  <textarea id="demo1" disabled>
<h1 align="center">Nguyễn Huỳnh Minh Tiến</h1>
<h2 align="center">Student ID: 18110377</h2>
<h3 align="center">A passionate developer from Vietnam </h3>
<p align="center"><img src="https://img.icons8.com/color/48/000000/vietnam-circular.png"/></p>
<p align="center"><img src="https://komarev.com/ghpvc/?username=tiennhm" alt="tiennhm" /> <img src="https://badges.pufler.dev/repos/TienNHM" alt="tiennhm" /> </p>
<p align="center"><img src="https://raw.githubusercontent.com/wayou/t-rex-runner/gh-pages/assets/screenshot.gif" alt="kumamon" /></p>

<p style="margin-left: 30%;">
- ✍ I'm a student of: [Ho Chi Minh city University of Technology and Education](https://hcmute.edu.vn) (HCMUTE).

- 👨‍💻 All of my projects are available at [https://github.com/tiennhm](https://github.com/tiennhm)

</p>

-----

## 📫 How to reach me:
<p align="center">
  <a href="https://www.facebook.com/01.tien" alt="Facebook"><img src="https://img.icons8.com/fluent/48/000000/facebook-new.png" target="_blank" /></a><a href="https://github.com/TienNHM" alt="Github"><img src="https://img.icons8.com/fluent/48/000000/github.png"/></a><a href="https://www.youtube.com/channel/UCaRr1SjyHm61RrLY-DIBm1g" alt="Youtube channel" target="_blank" ><img src="https://img.icons8.com/fluent/48/000000/youtube-play.png"/></a><a href="https://linkedin.com/in/tien-nhm" target="_blank"><img src="https://img.icons8.com/fluent/48/000000/linkedin.png"/></a><a href="mailto:ngotienhoang09@gmail.com"><img src="https://img.icons8.com/color/48/000000/gmail--v1.png"/></a>
</p>

-----

## 💥 Professional skills:
<p align="center">
  <img src="https://img.icons8.com/color/48/000000/c-programming.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/c-plus-plus-logo.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/c-sharp-logo.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/git.png"/>&nbsp;<img src="https://www.vectorlogo.zone/logos/opencv/opencv-icon.svg" alt="opencv" width="48" height="48"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/python.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/java-coffee-cup-logo.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/html-5.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/css3.png"/>&nbsp;<img src="https://img.icons8.com/color/48/000000/bootstrap.png"/>
</p>

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=tiennhm" alt="tiennhm" width=35%/>
  
  <img src="https://github-readme-stats.vercel.app/api?username=tiennhm&show_icons=true&count_private=true" alt="tiennhm" width=35%/>
</p>

<p align="center" style="color: red;">
	All information is taken from my Github!
</p>
  </textarea>
</div> 
  <script type="text/javascript">
  const simplemde = new SimpleMDE({
		element: document.getElementById("demo1"),
		status: false,
		toolbar: false,
		spellChecker: false,
	});
	simplemde.togglePreview();
	
	new SimpleMDE({
		element: document.getElementById("demo2"),
		spellChecker: false,
		autosave: {
			enabled: true,
			unique_id: "demo2",
		},
	});
	
	new SimpleMDE({
		element: document.getElementById("demo3"),
		status: false,
		toolbar: false,
	});
	
  </script>
</body>
</html>