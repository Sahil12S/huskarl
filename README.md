# huskarl
I experienced my server crashing as soon as I leave my house. `huskarl` is the project / service that is going to help me with some automation tasks around my media server and eventually with some other home automation. The service need to be very light-weight and fast since I'm going to run it on N100 Mini PC, that's also running all my servers.

**What is hukarl?**  
I got this name from an Age of Empires II unit, which has faster movement speed and high piercing armor. Which is what I want this to be. A fast service that can handle some random failure scenarios and keep things running.

**Why Rust?**  
Because I haven't had a chance to work with this language and it might be a good(??) project to learn it. (hopefully)


## Features
This is not an exhaustive list of features, but some things I can think of initially:
- Add movies to Radarr - using TMDB ID & name search
- Add tv shows to Sonarr - using TMDB ID & name search
- qBitTorrent - when a download is complete.
	- delete downloaded files if they're 5 days old
	- delete oldest downloaded file if storage is 90% full.
	- verification before delete that they're visible in Plex.
- Integration with Plex API - to see who's watching what.
- Discord integration
	- Add content:
		- TMDB ID
		- Name - search on TMDB -> add it
	- Notification on
		- When download is complete
		- Storage is almost full
		- Some is streaming
	- Configuration setup

There maybe some HomeAssistant automation that I might look into along with it. Like if I play a movie, set my lights in a certain way.


## Task Breadown
- [ ] 


## Developing Guidelines
Build docker image from the home directory:
```
docker build --tag huskarl .
```
Run the container:
```
docker run -d --name container_name -p host_port:container_port image
```

Check container logs by:
```
docker container logs [OPTION] <container>
```