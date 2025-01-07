#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Download the images from S3 bucket
#aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Welcome to Ravi Kiran Goud's Portfolio</p>
  
</body>
</html>
<!DOCTYPE HTML>
<html>
<head>
    <title>Jaggari Ravi Kiran Goud - Portfolio</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
    <!-- Wrapper -->
    <div id="wrapper" class="fade-in">

        <!-- Intro -->
        <div id="intro">
			<span class="logo"><img src="images/RaviLogo.JPG" alt="Ravi Kiran Logo" /></span>
            <h1>Jaggari Ravi Kiran Goud</h1>
            <p>Salesforce Administrator/ Product Designer/ AI enthusiastic</p>
            <ul class="actions">
                <li><a href="#experience" class="button icon solid solo fa-arrow-down scrolly">See My Work</a></li>
            </ul>
        </div>

        <!-- Header -->
        <header id="header">
            <a href="index.html" class="logo">Portfolio</a>
        </header>

        <!-- Nav -->
        <nav id="nav">
            <ul class="links">
                <li><a href="#intro" class="active">Introduction</a></li>
				<li><a href="#projects">Projects</a></li>
                <li><a href="#experience">Experience</a></li>
                <li><a href="#education">Education</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#certifications">Certifications</a></li>
                
            </ul>
            <ul class="icons">
                <li><a href="mailto:goud.jaggari@gmail.com" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
                <li><a href="https://www.linkedin.com/in/ravi-kiran-goud" class="icon brands fa-linkedin" target="_blank"><span class="label">LinkedIn</span></a></li>
                <li><a href="https://github.com/Ravikiran-goud" class="icon brands fa-github" target="_blank"><span class="label">GitHub</span></a></li>
            </ul>
        </nav>

        <!-- Main -->
        <div id="main">
            <!-- Introduction -->
				<section id="about.me" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>About Me</h2>
							</header>
							<p>I am a passionate Product Designer with a background in both software engineering and product management. With over two years of experience in Salesforce and a deep interest in data science and cloud-based development, I bring a unique blend of technical expertise and creative problem-solving to the table.</p>
							<ul class="actions">
								<li><a href="generic.html" class="button">View Resume</a></li>
							</ul>
                        </div>
					</div>
				</section>
			
            <!-- Projects -->
            <section id="projects">
                <h2>Projects</h2>
                <article class="project"> 
                    <header>
                        <h3><a href="kai-ai-project.html"> KAI AI Onboarding Design </a></h3>
                        <h4>Radical AI,July 2024</h4>
                    </header>
                    <p>Designed a seamless onboarding experience for KAI AI, integrating UI/UX principles and AI-driven design elements.</p>
                    <ul class="actions">
                        <li><a href="kai-ai-project.html" class="button">View Project</a></li>
                    </ul>
                </article>
				<article class="project">
					<header>
						<h3><a href="gemini-quizify.html">Gemini Quizify</a></h3>
						<h4>Radical AI, July 2024</h4>	
					</header>
					<p>Developed a web application that generates quizzes from uploaded PDF documents using Streamlit and Langchain, integrated with Google Cloud's Vertex AI.</p>
					<ul class="actions">
						<li><a href="gemini-quizify.html"class="button">View Project</a></li>
					</ul>	
				</article>
            </section>

            <!-- Experience -->
            <section id="experience">
                <h2>Experience</h2>
                <article>
                    <header>
                        <img src="images/radical_ai_logo.jpeg" alt="Radical AI Logo" style="width: 100px; height: auto;" />
						<h3>Radical AI, New York, United States (Remote)</h3>
                        <h4>Product Designer</h4>
                        <span>July 2024 - Present</span>
                    </header>
                    <p> 
                        1. Led the design and implementation of user-centric onboarding experiences for web and mobile applications, focusing on enhancing user engagement and satisfaction.<br>
                        2. Developed and optimized notification systems, including badges, push notifications, toasts, and overlays, to improve user interaction and response rates.<br>
                        3. Conducted extensive user research to understand preferences and pain points, leading to personalized onboarding processes and tailored user journeys.<br>
                        4. Collaborated with cross-functional teams to create high-impact designs that streamline the onboarding process, increase user retention, and improve overall product usability.<br>
                        5. Utilized a mix of structured guidance, self-paced exploration, and interactive elements to create a versatile onboarding experience catering to different user needs and familiarity levels.</p>
                </article>
                <article>
                    <header>
                        <img src="images/Logo_Cognizant.png" alt="Cognizant Logo" style="width: 100px; height: auto;" />
						<h3>Cognizant, Hyderabad, India</h3>
                        <h4>Program Analyst</h4> 
                        <span>Mar 2022 - Dec 2022</span>
                    </header>
                    <p>
                        1. Acquired hands-on experience with declarative features like Approval Processes, Process Builder, and Flows.<br>
                        2. Developed and maintained Apex test classes and triggers, adhering to best practices.<br>
                        3. Utilized tools such as Workbench and Jira for various project needs.</p>
                </article>
                <article>
                    <header>
                        <h4>Program Analyst Trainee</h4>
                        <span>Mar 2021 - Mar 2022</span>
                    </header>
                    <p>1. As a trainee I worked on understanding the salesforce platform and completing the certifications.<br>
                       2. Gained proficiency in Salesforce Configuration and Customization, including custom settings, custom metadata types, formula fields, validation rules, field dependencies, record types, page layouts, building reports and dashboards, custom report types, and roll-up summary fields.
                    </p>
                </article>
            </section>

            <!-- Education -->
            <section id="education">
                <h2>Education</h2>
                <article>
                    <header>
                        <h3>Master’s degree, Computer Science</h3>
                        <h4>Purdue University Fort Wayne</h4>
                        <span>Jan 2023 - Dec 2024</span>
                        <p>CGPA: 3.7</p>
                    </header>
                </article>
                <article>
                    <header>
                        <h3>Bachelor of Technology - BTech, Electrical, Electronics and Communications Engineering</h3>
                        <h4>TKR College of Engineering & Technology</h4>
                        <span>2016 - 2020</span>
                        <p>CGPA: 7.32</p>
                    </header>
                </article>
            </section>

            <!-- Skills -->
            <section id="skills">
                <h2>Skills</h2>
                <ul>
                    <li>Salesforce admin</li>
                    <li>React</li>
                    <li>HTML</li>
                    <li>CSS</li>
                    <li>JavaScript</li>
                    <li>Figma</li>
                    <li>UI/UX Design</li>
                </ul>
            </section>

            <!-- Certifications -->
            <section id="certifications">
                <h2>Certifications</h2>
                <ul>
                    <li>Salesforce Certified Administrator, Cognizant (Feb 2022, Credential ID: 22986667)</li>
                    <li>Salesforce Certified Platform Developer I, Cognizant (Mar 2022, Credential ID: 23019775)</li>
                </ul>
            </section>
		</div>	
      


        <!-- Footer -->
        <footer id="footer">
            <section class="split contact">
                <section>
                    <h3>Phone</h3>
                    <p><a href="tel:+12602470761">+1 260-247-0761</a></p>
                </section>
                <section>
                    <h3>Email</h3>
                    <p><a href="mailto:goud.jaggari@gmail.com">goud.jaggari@gmail.com</a></p>
                </section>
            </section>
        </footer>

        <!-- Copyright -->
        <div id="copyright">
            <ul><li>&copy; Jaggari Ravi Kiran Goud</li></ul>
        </div>

    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2