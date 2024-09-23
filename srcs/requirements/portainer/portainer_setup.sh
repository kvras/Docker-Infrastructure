/usr/local/bin/portainer/portainer &

# Save the PID of the Portainer process
PORTAINER_PID=$!

sleep 5

curl -s -H "Content-Type: application/json" -d "{\"Username\":\"$username\",\"Password\":\"$password\"}" -X POST http://localhost:9000/api/users/admin/init > /dev/null

# Bring Portainer back to the foreground
wait $PORTAINER_PID
