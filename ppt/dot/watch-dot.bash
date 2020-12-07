# Watch any change of *.dot file under src directory, and compile it to png
inotifywait -m -q -e close_write --format '%f' ./src | while read FNAME; do
if echo $FNAME | grep -e ".*\.dot$"; then
echo "File '$FNAME' chnaged, dotting..."
./dot-compile.bash $FNAME
fi
done
