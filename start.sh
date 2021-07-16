#wait for postgres to be ready
until PGPASSWORD=password psql -h db -U "postgres" -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
rails db:create && rails db:migrate && rails db:seed
rm -rf tmp/pids
rails server -p 3000 -b 0.0.0.0
