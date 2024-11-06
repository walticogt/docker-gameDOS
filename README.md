Motivo:
	Ya q para jugar juegos de DOS, requieres el aplicativo DOSBox en Windows u Linux, porque no hacerlo en un repositorio en Docker y q levante el juego en un navegador web y puedas jugar ahi?, vamos a hacerlo con 1 línea.


--
Clona el proyecto y tu carpeta de proyecto debe ser parecido a:

	\raptor.zip
	\docker-compose.yml
	\Dockerfile
	\dosbox.conf
	\index.html
	\js-dos.css
	\js-dos.js
	\nginx.conf
	\raptor.jsdos
 		\.jsdos
  			\dosbox.conf
  			\jsdos.json
 		\juego_descomprimido (raptor.zip)

--
Donde:

docker-compose.yml -> Referencia docker-compse up

Dockerfile -> Para compilar en modo --build.

raptor.zip -> puede ser cualquiera, esto sólo para luego descomprimirlo y ser empaquetado denuevo para bundle.jsdos.

index.html -> Lea como empezar en: https://js-dos.com/dos-api.html

raptor.jsdos -> Construya fácilmente en: https://dos.zone/studio-v8/

nginx.conf -> default publicacion en modo web.

dosbox.conf -> template default para usuarios avanzados para q lo construyas en tu juego.

js-dos.css -> V8, Descargado de:  https://v8.js-dos.com/latest/js-dos.css

js-dos.js -> V8, Descargado de: https://v8.js-dos.com/latest/js-dos.js



NOTA: Puedes editar dosbox.conf con el aplicativo q vayas a iniciar automáticamente, sólo para usuarios avanzados, apoyate en studio-v8.

--
Comando en powershell para compilar el docker (es necesario el servicio de docker iniciado):
	docker-compose up --build
--
Abra un navegador
http://localhost:8080

No se puede volver a abrir el juego guardado o almenos es de pago la libreria para JS-DOS, lástima!.
--
Comandos usados dentro del docker, q podrían servir para revisar:

Entrar al docker:
docker exec -it docker_gamedos-dosbox_game-1 sh

Revisar el archivo al cual invoca el juego
cd /usr/share/nginx/html
vi index.html
--
Dale play y disfruta del juego! 
Agradecimientos a mi hermano V.H.T., q me hizo participe de muy niño a éstos juegos. Gracias!
