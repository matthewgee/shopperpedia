echo "Compiling kaffeine to javascript ..." \
&& lib/kaffeine/bin/kaffeine -c src -o build \
&& echo "Starting node server (build/server/app.js) ..." \
&& echo "(press ctrl-c to stop the server)" \
&& node build/server/app.js