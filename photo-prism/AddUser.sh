# Add a user (replace the password and the account name by the ones you want)
docker compose exec photoprism photoprism users add -p password -n "AccountName" password

# Remove a user (replace the account name by the one you want to remove)
docker compose exec photoprism photoprism users rm AccountName
