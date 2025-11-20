if [ -d newproject ]; then
  echo "Recreating the newproject directory"
  rm -rf newproject
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw

cd data
mkdir raw

mv /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/rawdata/*.* /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/raw/

# 3. List the contents of the ./data/raw directory
ls

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

cd /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data
mkdir processed
cd processed
mkdir server_logs user_logs event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

cp -r /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/raw/server* /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/processed/server_logs/
# 6. Repeat the above step for user logs and event logs

cp -r /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/raw/event* /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/processed/event_logs/

cp -r /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/raw/user* /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/processed/user_logs/


# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

rm -f /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/raw/*ipaddr*
rm -f /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/processed/user_logs/*ipaddr*


# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

cd /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data
touch inventory.txt
ls /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/processed > /c/users/Admin/DSI3/shell/02_activities/assignments/newproject/data/inventory.txt

###########################################

echo "Project setup is complete!"


=====================================================


if [ -d newproject ]; then
  echo "Recreating the newproject directory"
  rm -rf newproject
fi

mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Assignment starts here

# 1. Create a directory named data
mkdir data

# 2. Move rawdata into data/raw
##mkdir data/raw
mv rawdata/* data/raw/

# 3. List the contents of data/raw
ls data/raw

# 4. Create processed subfolders
mkdir -p data/processed/{server_logs,user_logs,event_logs}

# 5. Copy server logs (.log files with "server")
cp data/raw/server*.log data/processed/server_logs/

# 6. Copy event logs and user logs
cp data/raw/event*.log data/processed/event_logs/
cp data/raw/user*.log data/processed/user_logs/

# 7. Remove privacy files (containing "ipaddr")
rm -f data/raw/*ipaddr*
rm -f data/processed/user_logs/*ipaddr*

# 8. Create inventory.txt listing ALL files in processed subfolders
find data/processed -type f > data/inventory.txt

###########################################

echo "Project setup is complete!"


