# init_docker_vuejs

project https://github.com/magve/init_docker_vuejs.git

---

**Test this example on your computer**
1. Get this project
2. Run <code>npm install</code> (warning can be ignored)
3. Run <code>npm run serve</code>
4. Try <code>http://localhost:8080/</code>

---

**Create a Docker image**
1. go in project directory (where the Dockerfile is)<br />
<code>cd init_docker_vuejs</code>
2. create the image<br />
<code>docker build -t init_docker_vuejs:v0.1.0 .</code>
3. list existing images to find IMAGEID<br />
<code>docker images</code>
4. run the image with the accessible port <br />
<code>docker run -it -d -p 49154:80 --rm --name init_docker_vuejs 9cd8af1d65f1</code>
