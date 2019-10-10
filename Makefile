
local: 
	hugo server --baseURL http://localhost --theme story --bind 0.0.0.0 --port 8000

remote: 
	hugo server --baseURL http://10.0.1.151 --theme story --bind 0.0.0.0 --port 8000
